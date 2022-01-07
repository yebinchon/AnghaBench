
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_flags; } ;


 int GIF_GLOP_PENDING ;
 int clear_bit_unlock (int ,int *) ;
 int wake_up_bit (int *,int ) ;

__attribute__((used)) static void gfs2_clear_glop_pending(struct gfs2_inode *ip)
{
 if (!ip)
  return;

 clear_bit_unlock(GIF_GLOP_PENDING, &ip->i_flags);
 wake_up_bit(&ip->i_flags, GIF_GLOP_PENDING);
}
