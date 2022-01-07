
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_rw_mutex; int i_res; } ;
typedef int atomic_t ;


 int atomic_read (int *) ;
 int down_write (int *) ;
 int gfs2_qa_delete (struct gfs2_inode*,int *) ;
 int gfs2_rs_deltree (int *) ;
 int up_write (int *) ;

void gfs2_rsqa_delete(struct gfs2_inode *ip, atomic_t *wcount)
{
 down_write(&ip->i_rw_mutex);
 if ((wcount == ((void*)0)) || (atomic_read(wcount) <= 1))
  gfs2_rs_deltree(&ip->i_res);
 up_write(&ip->i_rw_mutex);
 gfs2_qa_delete(ip, wcount);
}
