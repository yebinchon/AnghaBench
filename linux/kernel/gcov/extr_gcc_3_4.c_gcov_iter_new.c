
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;


 int GFP_KERNEL ;
 struct gcov_iterator* kzalloc (int ,int ) ;
 int num_counter_active (struct gcov_info*) ;
 int struct_size (struct gcov_iterator*,int ,int ) ;
 int type_info ;

struct gcov_iterator *gcov_iter_new(struct gcov_info *info)
{
 struct gcov_iterator *iter;

 iter = kzalloc(struct_size(iter, type_info, num_counter_active(info)),
         GFP_KERNEL);
 if (iter)
  iter->info = info;

 return iter;
}
