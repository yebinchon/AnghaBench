
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {TYPE_1__* i_sb; int i_mapping; } ;
struct dentry {int dummy; } ;
struct delayed_call {int dummy; } ;
struct TYPE_2__ {int s_blocksize; } ;


 int ECHILD ;
 char const* ERR_CAST (struct page*) ;
 char const* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct page*) ;
 char* fscrypt_get_symlink (struct inode*,int ,int ,struct delayed_call*) ;
 int page_address (struct page*) ;
 int put_page (struct page*) ;
 struct page* read_mapping_page (int ,int ,int *) ;

__attribute__((used)) static const char *f2fs_encrypted_get_link(struct dentry *dentry,
        struct inode *inode,
        struct delayed_call *done)
{
 struct page *page;
 const char *target;

 if (!dentry)
  return ERR_PTR(-ECHILD);

 page = read_mapping_page(inode->i_mapping, 0, ((void*)0));
 if (IS_ERR(page))
  return ERR_CAST(page);

 target = fscrypt_get_symlink(inode, page_address(page),
         inode->i_sb->s_blocksize, done);
 put_page(page);
 return target;
}
