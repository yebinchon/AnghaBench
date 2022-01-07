
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_mapping; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct TYPE_4__ {void* i_data; } ;
struct TYPE_3__ {int s_blocksize; } ;


 int ECHILD ;
 char const* ERR_CAST (struct page*) ;
 char const* ERR_PTR (int ) ;
 TYPE_2__* EXT4_I (struct inode*) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ ext4_inode_is_fast_symlink (struct inode*) ;
 char* fscrypt_get_symlink (struct inode*,void const*,unsigned int,struct delayed_call*) ;
 void* page_address (struct page*) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (int ,int ,int *) ;

__attribute__((used)) static const char *ext4_encrypted_get_link(struct dentry *dentry,
        struct inode *inode,
        struct delayed_call *done)
{
 struct page *cpage = ((void*)0);
 const void *caddr;
 unsigned int max_size;
 const char *paddr;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 if (ext4_inode_is_fast_symlink(inode)) {
  caddr = EXT4_I(inode)->i_data;
  max_size = sizeof(EXT4_I(inode)->i_data);
 } else {
  cpage = read_mapping_page(inode->i_mapping, 0, ((void*)0));
  if (IS_ERR(cpage))
   return ERR_CAST(cpage);
  caddr = page_address(cpage);
  max_size = inode->i_sb->s_blocksize;
 }

 paddr = fscrypt_get_symlink(inode, caddr, max_size, done);
 if (cpage)
  put_page(cpage);
 return paddr;
}
