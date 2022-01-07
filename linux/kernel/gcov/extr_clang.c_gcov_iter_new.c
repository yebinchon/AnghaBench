
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_iterator {int * buffer; int size; struct gcov_info* info; } ;
struct gcov_info {int dummy; } ;


 int GFP_KERNEL ;
 int convert_to_gcda (int *,struct gcov_info*) ;
 int kfree (struct gcov_iterator*) ;
 struct gcov_iterator* kzalloc (int,int ) ;
 int * vmalloc (int ) ;

struct gcov_iterator *gcov_iter_new(struct gcov_info *info)
{
 struct gcov_iterator *iter;

 iter = kzalloc(sizeof(struct gcov_iterator), GFP_KERNEL);
 if (!iter)
  goto err_free;

 iter->info = info;

 iter->size = convert_to_gcda(((void*)0), info);
 iter->buffer = vmalloc(iter->size);
 if (!iter->buffer)
  goto err_free;

 convert_to_gcda(iter->buffer, info);

 return iter;

err_free:
 kfree(iter);
 return ((void*)0);
}
