
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_sregs {int apic_base; } ;


 int TEST_ASSERT (int,char*,int) ;
 int VCPU_ID ;
 int _vcpu_sregs_set (struct kvm_vm*,int ,struct kvm_sregs*) ;
 int kvm_vm_free (struct kvm_vm*) ;
 int setbuf (int ,int *) ;
 int stdout ;
 int vcpu_sregs_get (struct kvm_vm*,int ,struct kvm_sregs*) ;
 struct kvm_vm* vm_create_default (int ,int ,int *) ;

int main(int argc, char *argv[])
{
 struct kvm_sregs sregs;
 struct kvm_vm *vm;
 int rc;


 setbuf(stdout, ((void*)0));


 vm = vm_create_default(VCPU_ID, 0, ((void*)0));

 vcpu_sregs_get(vm, VCPU_ID, &sregs);
 sregs.apic_base = 1 << 10;
 rc = _vcpu_sregs_set(vm, VCPU_ID, &sregs);
 TEST_ASSERT(rc, "Set IA32_APIC_BASE to %llx (invalid)",
      sregs.apic_base);
 sregs.apic_base = 1 << 11;
 rc = _vcpu_sregs_set(vm, VCPU_ID, &sregs);
 TEST_ASSERT(!rc, "Couldn't set IA32_APIC_BASE to %llx (valid)",
      sregs.apic_base);

 kvm_vm_free(vm);

 return 0;
}
