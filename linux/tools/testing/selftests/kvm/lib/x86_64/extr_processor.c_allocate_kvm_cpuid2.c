
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_cpuid_entry2 {int dummy; } ;
struct kvm_cpuid2 {int nent; } ;


 int abort () ;
 struct kvm_cpuid2* malloc (size_t) ;
 int perror (char*) ;

__attribute__((used)) static struct kvm_cpuid2 *allocate_kvm_cpuid2(void)
{
 struct kvm_cpuid2 *cpuid;
 int nent = 100;
 size_t size;

 size = sizeof(*cpuid);
 size += nent * sizeof(struct kvm_cpuid_entry2);
 cpuid = malloc(size);
 if (!cpuid) {
  perror("malloc");
  abort();
 }

 cpuid->nent = nent;

 return cpuid;
}
