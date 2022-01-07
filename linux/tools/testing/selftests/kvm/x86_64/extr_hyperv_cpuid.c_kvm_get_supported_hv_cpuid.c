
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
struct kvm_cpuid_entry2 {int dummy; } ;
struct kvm_cpuid2 {int nent; } ;


 int KVM_GET_SUPPORTED_HV_CPUID ;
 int VCPU_ID ;
 int abort () ;
 struct kvm_cpuid2* malloc (int) ;
 int perror (char*) ;
 int vcpu_ioctl (struct kvm_vm*,int ,int ,struct kvm_cpuid2*) ;

struct kvm_cpuid2 *kvm_get_supported_hv_cpuid(struct kvm_vm *vm)
{
 int nent = 20;
 static struct kvm_cpuid2 *cpuid;

 cpuid = malloc(sizeof(*cpuid) + nent * sizeof(struct kvm_cpuid_entry2));

 if (!cpuid) {
  perror("malloc");
  abort();
 }

 cpuid->nent = nent;

 vcpu_ioctl(vm, VCPU_ID, KVM_GET_SUPPORTED_HV_CPUID, cpuid);

 return cpuid;
}
