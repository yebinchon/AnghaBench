
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zero ;


 int PAGE_SIZE ;
 scalar_t__ __end_rodata ;
 scalar_t__ __start_rodata ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int probe_kernel_write (void*,void*,int) ;
 int rodata_test_data ;

void rodata_test(void)
{
 unsigned long start, end;
 int zero = 0;



 if (!rodata_test_data) {
  pr_err("test 1 fails (start data)\n");
  return;
 }


 if (!probe_kernel_write((void *)&rodata_test_data,
    (void *)&zero, sizeof(zero))) {
  pr_err("test data was not read only\n");
  return;
 }


 if (rodata_test_data == zero) {
  pr_err("test data was changed\n");
  return;
 }


 start = (unsigned long)__start_rodata;
 end = (unsigned long)__end_rodata;
 if (start & (PAGE_SIZE - 1)) {
  pr_err("start of .rodata is not page size aligned\n");
  return;
 }
 if (end & (PAGE_SIZE - 1)) {
  pr_err("end of .rodata is not page size aligned\n");
  return;
 }

 pr_info("all tests were successful\n");
}
