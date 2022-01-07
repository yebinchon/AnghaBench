
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {int i_flags; } ;
struct TYPE_2__ {int lock; } ;
struct gfs2_glock {TYPE_1__ gl_lockref; struct gfs2_inode* gl_object; } ;


 int GIF_GLOP_PENDING ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct gfs2_inode *gfs2_glock2inode(struct gfs2_glock *gl)
{
 struct gfs2_inode *ip;

 spin_lock(&gl->gl_lockref.lock);
 ip = gl->gl_object;
 if (ip)
  set_bit(GIF_GLOP_PENDING, &ip->i_flags);
 spin_unlock(&gl->gl_lockref.lock);
 return ip;
}
