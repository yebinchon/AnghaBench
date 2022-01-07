
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct linux_binprm {unsigned long p; int argc; } ;


 int EFAULT ;
 unsigned long PAGE_MASK ;
 unsigned long PAGE_SIZE ;
 struct page* get_arg_page (struct linux_binprm*,unsigned long,int ) ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int put_arg_page (struct page*) ;

int remove_arg_zero(struct linux_binprm *bprm)
{
 int ret = 0;
 unsigned long offset;
 char *kaddr;
 struct page *page;

 if (!bprm->argc)
  return 0;

 do {
  offset = bprm->p & ~PAGE_MASK;
  page = get_arg_page(bprm, bprm->p, 0);
  if (!page) {
   ret = -EFAULT;
   goto out;
  }
  kaddr = kmap_atomic(page);

  for (; offset < PAGE_SIZE && kaddr[offset];
    offset++, bprm->p++)
   ;

  kunmap_atomic(kaddr);
  put_arg_page(page);
 } while (offset == PAGE_SIZE);

 bprm->p++;
 bprm->argc--;
 ret = 0;

out:
 return ret;
}
