
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nfs4_cached_acl {int cached; size_t len; int data; } ;
struct inode {int dummy; } ;


 int GFP_KERNEL ;
 size_t PAGE_SIZE ;
 int _copy_from_pages (int ,struct page**,size_t,size_t) ;
 struct nfs4_cached_acl* kmalloc (int,int ) ;
 int nfs4_set_cached_acl (struct inode*,struct nfs4_cached_acl*) ;

__attribute__((used)) static void nfs4_write_cached_acl(struct inode *inode, struct page **pages, size_t pgbase, size_t acl_len)
{
 struct nfs4_cached_acl *acl;
 size_t buflen = sizeof(*acl) + acl_len;

 if (buflen <= PAGE_SIZE) {
  acl = kmalloc(buflen, GFP_KERNEL);
  if (acl == ((void*)0))
   goto out;
  acl->cached = 1;
  _copy_from_pages(acl->data, pages, pgbase, acl_len);
 } else {
  acl = kmalloc(sizeof(*acl), GFP_KERNEL);
  if (acl == ((void*)0))
   goto out;
  acl->cached = 0;
 }
 acl->len = acl_len;
out:
 nfs4_set_cached_acl(inode, acl);
}
