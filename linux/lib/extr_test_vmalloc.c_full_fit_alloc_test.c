
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;


 int PAGE_SIZE ;
 int fls (int ) ;
 int num_online_cpus () ;
 int test_loop_count ;
 int vfree (void**) ;
 void* vmalloc (int) ;

__attribute__((used)) static int full_fit_alloc_test(void)
{
 void **ptr, **junk_ptr, *tmp;
 int junk_length;
 int rv = -1;
 int i;

 junk_length = fls(num_online_cpus());
 junk_length *= (32 * 1024 * 1024 / PAGE_SIZE);

 ptr = vmalloc(sizeof(void *) * junk_length);
 if (!ptr)
  return rv;

 junk_ptr = vmalloc(sizeof(void *) * junk_length);
 if (!junk_ptr) {
  vfree(ptr);
  return rv;
 }

 for (i = 0; i < junk_length; i++) {
  ptr[i] = vmalloc(1 * PAGE_SIZE);
  junk_ptr[i] = vmalloc(1 * PAGE_SIZE);
 }

 for (i = 0; i < junk_length; i++)
  vfree(junk_ptr[i]);

 for (i = 0; i < test_loop_count; i++) {
  tmp = vmalloc(1 * PAGE_SIZE);

  if (!tmp)
   goto error;

  *((__u8 *)tmp) = 1;
  vfree(tmp);
 }


 rv = 0;

error:
 for (i = 0; i < junk_length; i++)
  vfree(ptr[i]);

 vfree(ptr);
 vfree(junk_ptr);

 return rv;
}
