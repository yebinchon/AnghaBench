
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hfs_bnode {struct page** page; scalar_t__ page_offset; } ;


 scalar_t__ kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memcpy (void*,scalar_t__,int) ;

void hfs_bnode_read(struct hfs_bnode *node, void *buf,
  int off, int len)
{
 struct page *page;

 off += node->page_offset;
 page = node->page[0];

 memcpy(buf, kmap(page) + off, len);
 kunmap(page);
}
