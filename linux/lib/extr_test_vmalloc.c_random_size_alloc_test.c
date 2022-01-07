
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;
typedef int __u8 ;


 unsigned int PAGE_SIZE ;
 int get_random_bytes (unsigned int*,int) ;
 int test_loop_count ;
 int vfree (void*) ;
 void* vmalloc (unsigned int) ;

__attribute__((used)) static int random_size_alloc_test(void)
{
 unsigned int n;
 void *p;
 int i;

 for (i = 0; i < test_loop_count; i++) {
  get_random_bytes(&n, sizeof(i));
  n = (n % 100) + 1;

  p = vmalloc(n * PAGE_SIZE);

  if (!p)
   return -1;

  *((__u8 *)p) = 1;
  vfree(p);
 }

 return 0;
}
