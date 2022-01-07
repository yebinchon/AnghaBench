
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_2__* garp_port; } ;
struct TYPE_3__ {int group_address; } ;
struct garp_application {size_t type; TYPE_1__ proto; } ;
struct garp_applicant {int join_timer; int queue; int lock; int gid; struct garp_application* app; struct net_device* dev; } ;
struct TYPE_4__ {int * applicants; } ;


 int ASSERT_RTNL () ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RB_ROOT ;
 int dev_mc_add (struct net_device*,int ) ;
 int garp_init_port (struct net_device*) ;
 int garp_join_timer ;
 int garp_join_timer_arm (struct garp_applicant*) ;
 int garp_release_port (struct net_device*) ;
 int kfree (struct garp_applicant*) ;
 struct garp_applicant* kzalloc (int,int ) ;
 int rcu_assign_pointer (int ,struct garp_applicant*) ;
 int rtnl_dereference (TYPE_2__*) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int garp_init_applicant(struct net_device *dev, struct garp_application *appl)
{
 struct garp_applicant *app;
 int err;

 ASSERT_RTNL();

 if (!rtnl_dereference(dev->garp_port)) {
  err = garp_init_port(dev);
  if (err < 0)
   goto err1;
 }

 err = -ENOMEM;
 app = kzalloc(sizeof(*app), GFP_KERNEL);
 if (!app)
  goto err2;

 err = dev_mc_add(dev, appl->proto.group_address);
 if (err < 0)
  goto err3;

 app->dev = dev;
 app->app = appl;
 app->gid = RB_ROOT;
 spin_lock_init(&app->lock);
 skb_queue_head_init(&app->queue);
 rcu_assign_pointer(dev->garp_port->applicants[appl->type], app);
 timer_setup(&app->join_timer, garp_join_timer, 0);
 garp_join_timer_arm(app);
 return 0;

err3:
 kfree(app);
err2:
 garp_release_port(dev);
err1:
 return err;
}
