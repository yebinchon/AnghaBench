
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct nfs_pageio_descriptor {int pg_error; struct nfs_io_completion* pg_io_completion; } ;
struct nfs_io_completion {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;


 int GFP_KERNEL ;
 int NFSIOS_VFSWRITEPAGES ;
 int nfs_async_write_completion_ops ;
 scalar_t__ nfs_error_is_fatal (int) ;
 int nfs_inc_stats (struct inode*,int ) ;
 struct nfs_io_completion* nfs_io_completion_alloc (int ) ;
 int nfs_io_completion_commit ;
 int nfs_io_completion_init (struct nfs_io_completion*,int ,struct inode*) ;
 int nfs_io_completion_put (struct nfs_io_completion*) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_pageio_init_write (struct nfs_pageio_descriptor*,struct inode*,int ,int,int *) ;
 int nfs_writepages_callback ;
 int wb_priority (struct writeback_control*) ;
 int write_cache_pages (struct address_space*,struct writeback_control*,int ,struct nfs_pageio_descriptor*) ;

int nfs_writepages(struct address_space *mapping, struct writeback_control *wbc)
{
 struct inode *inode = mapping->host;
 struct nfs_pageio_descriptor pgio;
 struct nfs_io_completion *ioc;
 int err;

 nfs_inc_stats(inode, NFSIOS_VFSWRITEPAGES);

 ioc = nfs_io_completion_alloc(GFP_KERNEL);
 if (ioc)
  nfs_io_completion_init(ioc, nfs_io_completion_commit, inode);

 nfs_pageio_init_write(&pgio, inode, wb_priority(wbc), 0,
    &nfs_async_write_completion_ops);
 pgio.pg_io_completion = ioc;
 err = write_cache_pages(mapping, wbc, nfs_writepages_callback, &pgio);
 pgio.pg_error = 0;
 nfs_pageio_complete(&pgio);
 nfs_io_completion_put(ioc);

 if (err < 0)
  goto out_err;
 err = pgio.pg_error;
 if (nfs_error_is_fatal(err))
  goto out_err;
 return 0;
out_err:
 return err;
}
