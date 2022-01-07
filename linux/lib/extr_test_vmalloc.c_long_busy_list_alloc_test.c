
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int PAGE_SIZE ;
 int test_loop_count ;
 int vfree (void**) ;
 void* vmalloc (int) ;

__attribute__((used)) static int long_busy_list_alloc_test(void)
{
 void *ptr_1, *ptr_2;
 void **ptr;
 int rv = -1;
 int i;

 ptr = vmalloc(sizeof(void *) * 15000);
 if (!ptr)
  return rv;

 for (i = 0; i < 15000; i++)
  ptr[i] = vmalloc(1 * PAGE_SIZE);

 for (i = 0; i < test_loop_count; i++) {
  ptr_1 = vmalloc(100 * PAGE_SIZE);
  if (!ptr_1)
   goto leave;

  ptr_2 = vmalloc(1 * PAGE_SIZE);
  if (!ptr_2) {
   vfree(ptr_1);
   goto leave;
  }

  *((__u8 *)ptr_1) = 0;
  *((__u8 *)ptr_2) = 1;

  vfree(ptr_1);
  vfree(ptr_2);
 }


 rv = 0;

leave:
 for (i = 0; i < 15000; i++)
  vfree(ptr[i]);

 vfree(ptr);
 return rv;
}
