
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {TYPE_1__* mrp_port; } ;
struct mrp_application {size_t type; int group_address; } ;
struct mrp_applicant {int periodic_timer; int join_timer; int queue; int lock; int mad; struct mrp_application* app; struct net_device* dev; } ;
struct TYPE_2__ {int * applicants; } ;


 int ASSERT_RTNL () ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int RB_ROOT ;
 int dev_mc_add (struct net_device*,int ) ;
 int kfree (struct mrp_applicant*) ;
 struct mrp_applicant* kzalloc (int,int ) ;
 int mrp_init_port (struct net_device*) ;
 int mrp_join_timer ;
 int mrp_join_timer_arm (struct mrp_applicant*) ;
 int mrp_periodic_timer ;
 int mrp_periodic_timer_arm (struct mrp_applicant*) ;
 int mrp_release_port (struct net_device*) ;
 int rcu_assign_pointer (int ,struct mrp_applicant*) ;
 int rtnl_dereference (TYPE_1__*) ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int mrp_init_applicant(struct net_device *dev, struct mrp_application *appl)
{
 struct mrp_applicant *app;
 int err;

 ASSERT_RTNL();

 if (!rtnl_dereference(dev->mrp_port)) {
  err = mrp_init_port(dev);
  if (err < 0)
   goto err1;
 }

 err = -ENOMEM;
 app = kzalloc(sizeof(*app), GFP_KERNEL);
 if (!app)
  goto err2;

 err = dev_mc_add(dev, appl->group_address);
 if (err < 0)
  goto err3;

 app->dev = dev;
 app->app = appl;
 app->mad = RB_ROOT;
 spin_lock_init(&app->lock);
 skb_queue_head_init(&app->queue);
 rcu_assign_pointer(dev->mrp_port->applicants[appl->type], app);
 timer_setup(&app->join_timer, mrp_join_timer, 0);
 mrp_join_timer_arm(app);
 timer_setup(&app->periodic_timer, mrp_periodic_timer, 0);
 mrp_periodic_timer_arm(app);
 return 0;

err3:
 kfree(app);
err2:
 mrp_release_port(dev);
err1:
 return err;
}
