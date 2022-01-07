
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {scalar_t__ kvm_fd; scalar_t__ fd; int type; } ;


 int KSFT_SKIP ;
 int KVM_CAP_IMMEDIATE_EXIT ;
 int KVM_CREATE_VM ;
 int KVM_DEV_PATH ;
 int TEST_ASSERT (int,char*,scalar_t__,int ) ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ ioctl (scalar_t__,int ,int ) ;
 int kvm_check_cap (int ) ;
 scalar_t__ open (int ,int) ;
 int stderr ;

__attribute__((used)) static void vm_open(struct kvm_vm *vm, int perm)
{
 vm->kvm_fd = open(KVM_DEV_PATH, perm);
 if (vm->kvm_fd < 0)
  exit(KSFT_SKIP);

 if (!kvm_check_cap(KVM_CAP_IMMEDIATE_EXIT)) {
  fprintf(stderr, "immediate_exit not available, skipping test\n");
  exit(KSFT_SKIP);
 }

 vm->fd = ioctl(vm->kvm_fd, KVM_CREATE_VM, vm->type);
 TEST_ASSERT(vm->fd >= 0, "KVM_CREATE_VM ioctl failed, "
  "rc: %i errno: %i", vm->fd, errno);
}
