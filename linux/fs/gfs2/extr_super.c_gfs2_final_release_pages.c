
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_data; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; struct inode i_inode; } ;
struct gfs2_glock {int gl_flags; int gl_revokes; } ;


 int GLF_DIRTY ;
 int GLF_LFLUSH ;
 scalar_t__ atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int * gfs2_glock2aspace (struct gfs2_glock*) ;
 int truncate_inode_pages (int *,int ) ;

__attribute__((used)) static void gfs2_final_release_pages(struct gfs2_inode *ip)
{
 struct inode *inode = &ip->i_inode;
 struct gfs2_glock *gl = ip->i_gl;

 truncate_inode_pages(gfs2_glock2aspace(ip->i_gl), 0);
 truncate_inode_pages(&inode->i_data, 0);

 if (atomic_read(&gl->gl_revokes) == 0) {
  clear_bit(GLF_LFLUSH, &gl->gl_flags);
  clear_bit(GLF_DIRTY, &gl->gl_flags);
 }
}
