
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct nfs_pageio_descriptor {int pg_error; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int NFSIOS_VFSWRITEPAGE ;
 int nfs_async_write_completion_ops ;
 int nfs_do_writepage (struct page*,struct writeback_control*,struct nfs_pageio_descriptor*) ;
 scalar_t__ nfs_error_is_fatal (int) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_pageio_init_write (struct nfs_pageio_descriptor*,struct inode*,int ,int,int *) ;
 TYPE_1__* page_file_mapping (struct page*) ;

__attribute__((used)) static int nfs_writepage_locked(struct page *page,
    struct writeback_control *wbc)
{
 struct nfs_pageio_descriptor pgio;
 struct inode *inode = page_file_mapping(page)->host;
 int err;

 nfs_inc_stats(inode, NFSIOS_VFSWRITEPAGE);
 nfs_pageio_init_write(&pgio, inode, 0,
    0, &nfs_async_write_completion_ops);
 err = nfs_do_writepage(page, wbc, &pgio);
 pgio.pg_error = 0;
 nfs_pageio_complete(&pgio);
 if (err < 0)
  return err;
 if (nfs_error_is_fatal(pgio.pg_error))
  return pgio.pg_error;
 return 0;
}
