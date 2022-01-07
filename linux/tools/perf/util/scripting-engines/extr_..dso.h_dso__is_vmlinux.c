
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dso {scalar_t__ binary_type; } ;


 scalar_t__ DSO_BINARY_TYPE__GUEST_VMLINUX ;
 scalar_t__ DSO_BINARY_TYPE__VMLINUX ;

__attribute__((used)) static inline bool dso__is_vmlinux(struct dso *dso)
{
 return dso->binary_type == DSO_BINARY_TYPE__VMLINUX ||
        dso->binary_type == DSO_BINARY_TYPE__GUEST_VMLINUX;
}
