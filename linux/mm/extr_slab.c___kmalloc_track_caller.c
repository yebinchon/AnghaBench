
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* __do_kmalloc (size_t,int ,unsigned long) ;

void *__kmalloc_track_caller(size_t size, gfp_t flags, unsigned long caller)
{
 return __do_kmalloc(size, flags, caller);
}
