
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_mc_list {int next_rcu; } ;
struct in_device {int mc_count; int mc_list; } ;


 int ASSERT_RTNL () ;
 int igmpv3_clear_delrec (struct in_device*) ;
 int ip_ma_put (struct ip_mc_list*) ;
 int ip_mc_down (struct in_device*) ;
 struct ip_mc_list* rtnl_dereference (int ) ;

void ip_mc_destroy_dev(struct in_device *in_dev)
{
 struct ip_mc_list *i;

 ASSERT_RTNL();


 ip_mc_down(in_dev);




 while ((i = rtnl_dereference(in_dev->mc_list)) != ((void*)0)) {
  in_dev->mc_list = i->next_rcu;
  in_dev->mc_count--;
  ip_ma_put(i);
 }
}
