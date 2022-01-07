
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fdt_create_with_flags (void*,int,int ) ;

int fdt_create(void *buf, int bufsize)
{
 return fdt_create_with_flags(buf, bufsize, 0);
}
