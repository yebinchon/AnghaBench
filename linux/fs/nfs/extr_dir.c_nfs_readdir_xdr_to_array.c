
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct page {int dummy; } ;
struct nfs_entry {int * fh; int * fattr; int label; int server; scalar_t__ eof; int cookie; scalar_t__ prev_cookie; } ;
struct nfs_cache_array {int eof_index; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int last_cookie; struct file* file; } ;
typedef TYPE_1__ nfs_readdir_descriptor_t ;


 unsigned int ARRAY_SIZE (struct page**) ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_NOWAIT ;
 scalar_t__ IS_ERR (int ) ;
 int NFS_MAX_READDIR_PAGES ;
 int NFS_SERVER (struct inode*) ;
 int PTR_ERR (int ) ;
 struct nfs_cache_array* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (struct nfs_cache_array*,int ,int) ;
 int nfs4_label_alloc (int ,int ) ;
 int nfs4_label_free (int ) ;
 int * nfs_alloc_fattr () ;
 int * nfs_alloc_fhandle () ;
 int nfs_free_fattr (int *) ;
 int nfs_free_fhandle (int *) ;
 int nfs_readdir_alloc_pages (struct page**,unsigned int) ;
 int nfs_readdir_free_pages (struct page**,unsigned int) ;
 int nfs_readdir_page_filler (TYPE_1__*,struct nfs_entry*,struct page**,struct page*,unsigned int) ;
 int nfs_readdir_xdr_filler (struct page**,TYPE_1__*,struct nfs_entry*,struct file*,struct inode*) ;

__attribute__((used)) static
int nfs_readdir_xdr_to_array(nfs_readdir_descriptor_t *desc, struct page *page, struct inode *inode)
{
 struct page *pages[NFS_MAX_READDIR_PAGES];
 struct nfs_entry entry;
 struct file *file = desc->file;
 struct nfs_cache_array *array;
 int status = -ENOMEM;
 unsigned int array_size = ARRAY_SIZE(pages);

 entry.prev_cookie = 0;
 entry.cookie = desc->last_cookie;
 entry.eof = 0;
 entry.fh = nfs_alloc_fhandle();
 entry.fattr = nfs_alloc_fattr();
 entry.server = NFS_SERVER(inode);
 if (entry.fh == ((void*)0) || entry.fattr == ((void*)0))
  goto out;

 entry.label = nfs4_label_alloc(NFS_SERVER(inode), GFP_NOWAIT);
 if (IS_ERR(entry.label)) {
  status = PTR_ERR(entry.label);
  goto out;
 }

 array = kmap(page);
 memset(array, 0, sizeof(struct nfs_cache_array));
 array->eof_index = -1;

 status = nfs_readdir_alloc_pages(pages, array_size);
 if (status < 0)
  goto out_release_array;
 do {
  unsigned int pglen;
  status = nfs_readdir_xdr_filler(pages, desc, &entry, file, inode);

  if (status < 0)
   break;
  pglen = status;
  status = nfs_readdir_page_filler(desc, &entry, pages, page, pglen);
  if (status < 0) {
   if (status == -ENOSPC)
    status = 0;
   break;
  }
 } while (array->eof_index < 0);

 nfs_readdir_free_pages(pages, array_size);
out_release_array:
 kunmap(page);
 nfs4_label_free(entry.label);
out:
 nfs_free_fattr(entry.fattr);
 nfs_free_fhandle(entry.fh);
 return status;
}
