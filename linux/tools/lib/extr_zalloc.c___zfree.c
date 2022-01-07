
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void __zfree(void **ptr)
{
 free(*ptr);
 *ptr = ((void*)0);
}
