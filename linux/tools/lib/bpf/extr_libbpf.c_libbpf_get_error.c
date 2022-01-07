
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long PTR_ERR_OR_ZERO (void const*) ;

long libbpf_get_error(const void *ptr)
{
 return PTR_ERR_OR_ZERO(ptr);
}
