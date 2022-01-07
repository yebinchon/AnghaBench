
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct address_space* i_mapping; int i_mode; } ;
struct gfs2_inode {TYPE_2__ i_inode; int i_flags; } ;
struct TYPE_3__ {int ln_sbd; } ;
struct gfs2_glock {scalar_t__ gl_state; int gl_flags; TYPE_1__ gl_name; } ;
struct address_space {int dummy; } ;


 int GFS2_LFC_INODE_GO_SYNC ;
 int GFS2_LOG_HEAD_FLUSH_NORMAL ;
 int GIF_SW_PAGED ;
 int GLF_DIRTY ;
 int GLOCK_BUG_ON (struct gfs2_glock*,int) ;
 scalar_t__ LM_ST_EXCLUSIVE ;
 scalar_t__ S_ISREG (int ) ;
 int clear_bit (int ,int *) ;
 int filemap_fdatawait (struct address_space*) ;
 int filemap_fdatawrite (struct address_space*) ;
 int gfs2_ail_empty_gl (struct gfs2_glock*) ;
 int gfs2_clear_glop_pending (struct gfs2_inode*) ;
 struct address_space* gfs2_glock2aspace (struct gfs2_glock*) ;
 struct gfs2_inode* gfs2_glock2inode (struct gfs2_glock*) ;
 int gfs2_log_flush (int ,struct gfs2_glock*,int) ;
 int inode_dio_wait (TYPE_2__*) ;
 int mapping_set_error (struct address_space*,int) ;
 int smp_mb__before_atomic () ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int unmap_shared_mapping_range (struct address_space*,int ,int ) ;

__attribute__((used)) static void inode_go_sync(struct gfs2_glock *gl)
{
 struct gfs2_inode *ip = gfs2_glock2inode(gl);
 int isreg = ip && S_ISREG(ip->i_inode.i_mode);
 struct address_space *metamapping = gfs2_glock2aspace(gl);
 int error;

 if (isreg) {
  if (test_and_clear_bit(GIF_SW_PAGED, &ip->i_flags))
   unmap_shared_mapping_range(ip->i_inode.i_mapping, 0, 0);
  inode_dio_wait(&ip->i_inode);
 }
 if (!test_and_clear_bit(GLF_DIRTY, &gl->gl_flags))
  goto out;

 GLOCK_BUG_ON(gl, gl->gl_state != LM_ST_EXCLUSIVE);

 gfs2_log_flush(gl->gl_name.ln_sbd, gl, GFS2_LOG_HEAD_FLUSH_NORMAL |
         GFS2_LFC_INODE_GO_SYNC);
 filemap_fdatawrite(metamapping);
 if (isreg) {
  struct address_space *mapping = ip->i_inode.i_mapping;
  filemap_fdatawrite(mapping);
  error = filemap_fdatawait(mapping);
  mapping_set_error(mapping, error);
 }
 error = filemap_fdatawait(metamapping);
 mapping_set_error(metamapping, error);
 gfs2_ail_empty_gl(gl);




 smp_mb__before_atomic();
 clear_bit(GLF_DIRTY, &gl->gl_flags);

out:
 gfs2_clear_glop_pending(ip);
}
