
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LONG_MAX ;
 void* xa_mk_value (unsigned long) ;

__attribute__((used)) static void *xa_mk_index(unsigned long index)
{
 return xa_mk_value(index & LONG_MAX);
}
