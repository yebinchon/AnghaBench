
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_SKIP ;
 int KVM_CHECK_EXTENSION ;
 int KVM_DEV_PATH ;
 int O_RDONLY ;
 int TEST_ASSERT (int,char*,int,int ) ;
 int close (int) ;
 int errno ;
 int exit (int ) ;
 int ioctl (int,int ,long) ;
 int open (int ,int ) ;

int kvm_check_cap(long cap)
{
 int ret;
 int kvm_fd;

 kvm_fd = open(KVM_DEV_PATH, O_RDONLY);
 if (kvm_fd < 0)
  exit(KSFT_SKIP);

 ret = ioctl(kvm_fd, KVM_CHECK_EXTENSION, cap);
 TEST_ASSERT(ret != -1, "KVM_CHECK_EXTENSION IOCTL failed,\n"
  "  rc: %i errno: %i", ret, errno);

 close(kvm_fd);

 return ret;
}
