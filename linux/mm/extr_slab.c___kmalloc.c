
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int _RET_IP_ ;
 void* __do_kmalloc (size_t,int ,int ) ;

void *__kmalloc(size_t size, gfp_t flags)
{
 return __do_kmalloc(size, flags, _RET_IP_);
}
