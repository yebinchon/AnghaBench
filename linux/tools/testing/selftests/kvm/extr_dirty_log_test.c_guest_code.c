
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int GUEST_SYNC (int) ;
 int READ_ONCE (int ) ;
 int TEST_PAGES_PER_LOOP ;
 int guest_num_pages ;
 int guest_page_size ;
 int guest_test_virt_mem ;
 int host_page_size ;
 int iteration ;
 int * random_array ;

__attribute__((used)) static void guest_code(void)
{
 uint64_t addr;
 int i;







 for (i = 0; i < guest_num_pages; i++) {
  addr = guest_test_virt_mem + i * guest_page_size;
  *(uint64_t *)addr = READ_ONCE(iteration);
 }

 while (1) {
  for (i = 0; i < TEST_PAGES_PER_LOOP; i++) {
   addr = guest_test_virt_mem;
   addr += (READ_ONCE(random_array[i]) % guest_num_pages)
    * guest_page_size;
   addr &= ~(host_page_size - 1);
   *(uint64_t *)addr = READ_ONCE(iteration);
  }


  GUEST_SYNC(1);
 }
}
