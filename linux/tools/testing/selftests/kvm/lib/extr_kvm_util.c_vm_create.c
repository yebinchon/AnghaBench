
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct kvm_vm {int dummy; } ;
typedef enum vm_guest_mode { ____Placeholder_vm_guest_mode } vm_guest_mode ;


 struct kvm_vm* _vm_create (int,int ,int) ;

struct kvm_vm *vm_create(enum vm_guest_mode mode, uint64_t phy_pages, int perm)
{
 return _vm_create(mode, phy_pages, perm);
}
