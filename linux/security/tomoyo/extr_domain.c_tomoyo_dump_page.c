
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_page_dump {scalar_t__ data; struct page* page; } ;
struct page {int dummy; } ;
struct linux_binprm {struct page** page; int mm; } ;


 int FOLL_FORCE ;
 int GFP_NOFS ;
 unsigned long PAGE_SIZE ;
 int current ;
 scalar_t__ get_user_pages_remote (int ,int ,unsigned long,int,int ,struct page**,int *,int *) ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 scalar_t__ kzalloc (unsigned long,int ) ;
 int memcpy (scalar_t__,char*,unsigned long) ;
 int put_page (struct page*) ;

bool tomoyo_dump_page(struct linux_binprm *bprm, unsigned long pos,
        struct tomoyo_page_dump *dump)
{
 struct page *page;


 if (!dump->data) {
  dump->data = kzalloc(PAGE_SIZE, GFP_NOFS);
  if (!dump->data)
   return 0;
 }
 page = bprm->page[pos / PAGE_SIZE];

 if (page != dump->page) {
  const unsigned int offset = pos % PAGE_SIZE;





  char *kaddr = kmap_atomic(page);

  dump->page = page;
  memcpy(dump->data + offset, kaddr + offset,
         PAGE_SIZE - offset);
  kunmap_atomic(kaddr);
 }




 return 1;
}
