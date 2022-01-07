
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_object {unsigned int kern_version; } ;



unsigned int bpf_object__kversion(const struct bpf_object *obj)
{
 return obj ? obj->kern_version : 0;
}
