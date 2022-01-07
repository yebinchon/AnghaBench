
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * memchr_inv (void*,int,size_t) ;

__attribute__((used)) static bool is_zeroed(void *from, size_t size)
{
 return memchr_inv(from, 0x0, size) == ((void*)0);
}
