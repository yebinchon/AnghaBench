
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;


 int DEFAULT_GUEST_PHY_PAGES ;
 int O_RDWR ;
 int VM_MODE_DEFAULT ;
 int kvm_vm_free (struct kvm_vm*) ;
 int printf (char*,int,int,int) ;
 struct kvm_vm* vm_create (int ,int ,int ) ;
 int vm_vcpu_add (struct kvm_vm*,int) ;

void test_vcpu_creation(int first_vcpu_id, int num_vcpus)
{
 struct kvm_vm *vm;
 int i;

 printf("Testing creating %d vCPUs, with IDs %d...%d.\n",
        num_vcpus, first_vcpu_id, first_vcpu_id + num_vcpus - 1);

 vm = vm_create(VM_MODE_DEFAULT, DEFAULT_GUEST_PHY_PAGES, O_RDWR);

 for (i = 0; i < num_vcpus; i++) {
  int vcpu_id = first_vcpu_id + i;


  vm_vcpu_add(vm, vcpu_id);
 }

 kvm_vm_free(vm);
}
