
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vm {int dummy; } ;
typedef int FILE ;


 char* KVM_DEV_PATH ;
 int TEST_ASSERT (int,char*,...) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;

bool vm_is_unrestricted_guest(struct kvm_vm *vm)
{
 char val = 'N';
 size_t count;
 FILE *f;

 if (vm == ((void*)0)) {

  f = fopen(KVM_DEV_PATH, "r");
  TEST_ASSERT(f != ((void*)0), "Error in opening KVM dev file: %d",
       errno);
  fclose(f);
 }

 f = fopen("/sys/module/kvm_intel/parameters/unrestricted_guest", "r");
 if (f) {
  count = fread(&val, sizeof(char), 1, f);
  TEST_ASSERT(count == 1, "Unable to read from param file.");
  fclose(f);
 }

 return val == 'Y';
}
