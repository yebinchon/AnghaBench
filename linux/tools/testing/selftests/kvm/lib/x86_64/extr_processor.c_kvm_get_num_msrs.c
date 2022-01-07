
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int kvm_fd; } ;
struct kvm_msr_list {int nmsrs; } ;


 scalar_t__ E2BIG ;
 int KVM_GET_MSR_INDEX_LIST ;
 int TEST_ASSERT (int,char*,int) ;
 scalar_t__ errno ;
 int ioctl (int ,int ,struct kvm_msr_list*) ;

__attribute__((used)) static int kvm_get_num_msrs(struct kvm_vm *vm)
{
 struct kvm_msr_list nmsrs;
 int r;

 nmsrs.nmsrs = 0;
 r = ioctl(vm->kvm_fd, KVM_GET_MSR_INDEX_LIST, &nmsrs);
 TEST_ASSERT(r == -1 && errno == E2BIG, "Unexpected result from KVM_GET_MSR_INDEX_LIST probe, r: %i",
  r);

 return nmsrs.nmsrs;
}
