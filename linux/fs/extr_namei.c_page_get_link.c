
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_size; struct address_space* i_mapping; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct address_space {int dummy; } ;


 int BUG_ON (int) ;
 int ECHILD ;
 char const* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PAGE_SIZE ;
 int PageUptodate (struct page*) ;
 int __GFP_HIGHMEM ;
 struct page* find_get_page (struct address_space*,int ) ;
 int mapping_gfp_mask (struct address_space*) ;
 int nd_terminate_link (char*,int ,scalar_t__) ;
 char* page_address (struct page*) ;
 int page_put_link ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (struct address_space*,int ,int *) ;
 int set_delayed_call (struct delayed_call*,int ,struct page*) ;

const char *page_get_link(struct dentry *dentry, struct inode *inode,
     struct delayed_call *callback)
{
 char *kaddr;
 struct page *page;
 struct address_space *mapping = inode->i_mapping;

 if (!dentry) {
  page = find_get_page(mapping, 0);
  if (!page)
   return ERR_PTR(-ECHILD);
  if (!PageUptodate(page)) {
   put_page(page);
   return ERR_PTR(-ECHILD);
  }
 } else {
  page = read_mapping_page(mapping, 0, ((void*)0));
  if (IS_ERR(page))
   return (char*)page;
 }
 set_delayed_call(callback, page_put_link, page);
 BUG_ON(mapping_gfp_mask(mapping) & __GFP_HIGHMEM);
 kaddr = page_address(page);
 nd_terminate_link(kaddr, inode->i_size, PAGE_SIZE - 1);
 return kaddr;
}
