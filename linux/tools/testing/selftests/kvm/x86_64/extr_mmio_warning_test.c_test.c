
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_context {int kvmcpu; struct kvm_run* run; } ;
struct kvm_run {int dummy; } ;
typedef int pthread_t ;


 int KVM_CREATE_VCPU ;
 int KVM_CREATE_VM ;
 int MAP_SHARED ;
 int NTHREAD ;
 int O_RDWR ;
 int PROT_READ ;
 int PROT_WRITE ;
 int TEST_ASSERT (int,char*) ;
 int getpid () ;
 int ioctl (int,int ,int ) ;
 scalar_t__ mmap (int ,int,int,int ,int,int ) ;
 int open (char*,int ) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,int *) ;
 int rand () ;
 int srand (int ) ;
 int thr ;
 int usleep (int) ;

void test(void)
{
 int i, kvm, kvmvm, kvmcpu;
 pthread_t th[NTHREAD];
 struct kvm_run *run;
 struct thread_context tc;

 kvm = open("/dev/kvm", O_RDWR);
 TEST_ASSERT(kvm != -1, "failed to open /dev/kvm");
 kvmvm = ioctl(kvm, KVM_CREATE_VM, 0);
 TEST_ASSERT(kvmvm != -1, "KVM_CREATE_VM failed");
 kvmcpu = ioctl(kvmvm, KVM_CREATE_VCPU, 0);
 TEST_ASSERT(kvmcpu != -1, "KVM_CREATE_VCPU failed");
 run = (struct kvm_run *)mmap(0, 4096, PROT_READ|PROT_WRITE, MAP_SHARED,
        kvmcpu, 0);
 tc.kvmcpu = kvmcpu;
 tc.run = run;
 srand(getpid());
 for (i = 0; i < NTHREAD; i++) {
  pthread_create(&th[i], ((void*)0), thr, (void *)(uintptr_t)&tc);
  usleep(rand() % 10000);
 }
 for (i = 0; i < NTHREAD; i++)
  pthread_join(th[i], ((void*)0));
}
