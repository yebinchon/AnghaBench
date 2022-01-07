
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maps {int lock; void* names; void* entries; } ;


 void* RB_ROOT ;
 int init_rwsem (int *) ;

__attribute__((used)) static void maps__init(struct maps *maps)
{
 maps->entries = RB_ROOT;
 maps->names = RB_ROOT;
 init_rwsem(&maps->lock);
}
