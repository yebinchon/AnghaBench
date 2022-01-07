
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct maps {int lock; } ;


 int __maps__purge (struct maps*) ;
 int __maps__purge_names (struct maps*) ;
 int down_write (int *) ;
 int up_write (int *) ;

__attribute__((used)) static void maps__exit(struct maps *maps)
{
 down_write(&maps->lock);
 __maps__purge(maps);
 __maps__purge_names(maps);
 up_write(&maps->lock);
}
