
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {unsigned long nrpages; int i_pages; } ;
struct inode {int i_mode; TYPE_1__ i_data; } ;
struct gfs2_inode {scalar_t__ i_diskflags; int i_flags; struct inode i_inode; scalar_t__ i_no_addr; scalar_t__ i_no_formal_ino; } ;
struct gfs2_glock {struct gfs2_inode* gl_object; } ;


 int IF2DT (int ) ;
 int gfs2_print_dbg (struct seq_file*,char*,char const*,unsigned long long,unsigned long long,int ,int ,unsigned int,unsigned long long,unsigned long) ;
 scalar_t__ i_size_read (struct inode*) ;
 int xa_lock_irq (int *) ;
 int xa_unlock_irq (int *) ;

__attribute__((used)) static void inode_go_dump(struct seq_file *seq, struct gfs2_glock *gl,
     const char *fs_id_buf)
{
 struct gfs2_inode *ip = gl->gl_object;
 struct inode *inode = &ip->i_inode;
 unsigned long nrpages;

 if (ip == ((void*)0))
  return;

 xa_lock_irq(&inode->i_data.i_pages);
 nrpages = inode->i_data.nrpages;
 xa_unlock_irq(&inode->i_data.i_pages);

 gfs2_print_dbg(seq, "%s I: n:%llu/%llu t:%u f:0x%02lx d:0x%08x s:%llu "
         "p:%lu\n", fs_id_buf,
    (unsigned long long)ip->i_no_formal_ino,
    (unsigned long long)ip->i_no_addr,
    IF2DT(ip->i_inode.i_mode), ip->i_flags,
    (unsigned int)ip->i_diskflags,
    (unsigned long long)i_size_read(inode), nrpages);
}
