
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parman {unsigned long limit_count; int priv; TYPE_1__* ops; } ;
struct TYPE_2__ {unsigned long resize_step; unsigned long base_count; int (* resize ) (int ,unsigned long) ;} ;


 int stub1 (int ,unsigned long) ;

__attribute__((used)) static int parman_shrink(struct parman *parman)
{
 unsigned long new_count = parman->limit_count -
      parman->ops->resize_step;
 int err;

 if (new_count < parman->ops->base_count)
  return 0;
 err = parman->ops->resize(parman->priv, new_count);
 if (err)
  return err;
 parman->limit_count = new_count;
 return 0;
}
