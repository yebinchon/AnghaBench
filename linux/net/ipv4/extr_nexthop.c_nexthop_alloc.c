
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nexthop {int grp_list; int f6i_list; int fi_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct nexthop* kzalloc (int,int ) ;

__attribute__((used)) static struct nexthop *nexthop_alloc(void)
{
 struct nexthop *nh;

 nh = kzalloc(sizeof(struct nexthop), GFP_KERNEL);
 if (nh) {
  INIT_LIST_HEAD(&nh->fi_list);
  INIT_LIST_HEAD(&nh->f6i_list);
  INIT_LIST_HEAD(&nh->grp_list);
 }
 return nh;
}
