
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KVM_CAP_MAX_VCPUS ;
 int KVM_CAP_MAX_VCPU_ID ;
 int TEST_ASSERT (int,char*,int,int) ;
 int kvm_check_cap (int ) ;
 int printf (char*,int) ;
 int test_vcpu_creation (int,int) ;

int main(int argc, char *argv[])
{
 int kvm_max_vcpu_id = kvm_check_cap(KVM_CAP_MAX_VCPU_ID);
 int kvm_max_vcpus = kvm_check_cap(KVM_CAP_MAX_VCPUS);

 printf("KVM_CAP_MAX_VCPU_ID: %d\n", kvm_max_vcpu_id);
 printf("KVM_CAP_MAX_VCPUS: %d\n", kvm_max_vcpus);






 if (!kvm_max_vcpu_id)
  kvm_max_vcpu_id = kvm_max_vcpus;

 TEST_ASSERT(kvm_max_vcpu_id >= kvm_max_vcpus,
      "KVM_MAX_VCPU_ID (%d) must be at least as large as KVM_MAX_VCPUS (%d).",
      kvm_max_vcpu_id, kvm_max_vcpus);

 test_vcpu_creation(0, kvm_max_vcpus);

 if (kvm_max_vcpu_id > kvm_max_vcpus)
  test_vcpu_creation(
   kvm_max_vcpu_id - kvm_max_vcpus, kvm_max_vcpus);

 return 0;
}
