
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int mmap_sem; } ;


 unsigned long PAGE_MASK ;
 int get_user_pages_locked (unsigned long,int,int ,struct page**,int*) ;
 int page_to_nid (struct page*) ;
 int put_page (struct page*) ;
 int up_read (int *) ;

__attribute__((used)) static int lookup_node(struct mm_struct *mm, unsigned long addr)
{
 struct page *p;
 int err;

 int locked = 1;
 err = get_user_pages_locked(addr & PAGE_MASK, 1, 0, &p, &locked);
 if (err >= 0) {
  err = page_to_nid(p);
  put_page(p);
 }
 if (locked)
  up_read(&mm->mmap_sem);
 return err;
}
