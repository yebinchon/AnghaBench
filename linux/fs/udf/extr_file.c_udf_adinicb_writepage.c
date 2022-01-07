
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct TYPE_4__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_lenEAttr; TYPE_2__ i_ext; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct inode* host; } ;


 int BUG_ON (int) ;
 int PageLocked (struct page*) ;
 int SetPageUptodate (struct page*) ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int i_size_read (struct inode*) ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (scalar_t__,char*,int ) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int udf_adinicb_writepage(struct page *page,
     struct writeback_control *wbc)
{
 struct inode *inode = page->mapping->host;
 char *kaddr;
 struct udf_inode_info *iinfo = UDF_I(inode);

 BUG_ON(!PageLocked(page));

 kaddr = kmap_atomic(page);
 memcpy(iinfo->i_ext.i_data + iinfo->i_lenEAttr, kaddr,
  i_size_read(inode));
 SetPageUptodate(page);
 kunmap_atomic(kaddr);
 mark_inode_dirty(inode);
 unlock_page(page);

 return 0;
}
