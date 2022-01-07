
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ff_layout_mirror {int lock; int flags; int write_stat; } ;
struct inode {int dummy; } ;
typedef int ktime_t ;
typedef int __u64 ;


 int GFP_NOIO ;
 int NFS4_FF_MIRROR_STAT_AVAIL ;
 int nfs4_ff_layout_stat_io_update_requested (int *,int ) ;
 int nfs4_ff_layoutstat_start_io (struct nfs4_ff_layout_mirror*,int *,int ) ;
 int pnfs_report_layoutstat (struct inode*,int ) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
nfs4_ff_layout_stat_io_start_write(struct inode *inode,
  struct nfs4_ff_layout_mirror *mirror,
  __u64 requested, ktime_t now)
{
 bool report;

 spin_lock(&mirror->lock);
 report = nfs4_ff_layoutstat_start_io(mirror , &mirror->write_stat, now);
 nfs4_ff_layout_stat_io_update_requested(&mirror->write_stat, requested);
 set_bit(NFS4_FF_MIRROR_STAT_AVAIL, &mirror->flags);
 spin_unlock(&mirror->lock);

 if (report)
  pnfs_report_layoutstat(inode, GFP_NOIO);
}
