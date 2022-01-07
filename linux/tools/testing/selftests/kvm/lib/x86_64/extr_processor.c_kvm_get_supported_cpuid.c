
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_cpuid2 {int dummy; } ;


 int KSFT_SKIP ;
 int KVM_DEV_PATH ;
 int KVM_GET_SUPPORTED_CPUID ;
 int O_RDONLY ;
 int TEST_ASSERT (int,char*,int,int ) ;
 struct kvm_cpuid2* allocate_kvm_cpuid2 () ;
 int close (int) ;
 int errno ;
 int exit (int ) ;
 int ioctl (int,int ,struct kvm_cpuid2*) ;
 int open (int ,int ) ;

struct kvm_cpuid2 *kvm_get_supported_cpuid(void)
{
 static struct kvm_cpuid2 *cpuid;
 int ret;
 int kvm_fd;

 if (cpuid)
  return cpuid;

 cpuid = allocate_kvm_cpuid2();
 kvm_fd = open(KVM_DEV_PATH, O_RDONLY);
 if (kvm_fd < 0)
  exit(KSFT_SKIP);

 ret = ioctl(kvm_fd, KVM_GET_SUPPORTED_CPUID, cpuid);
 TEST_ASSERT(ret == 0, "KVM_GET_SUPPORTED_CPUID failed %d %d\n",
      ret, errno);

 close(kvm_fd);
 return cpuid;
}
