
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct gfs2_glock {TYPE_1__ gl_lockref; } ;


 int gfs2_dump_glock (struct seq_file*,struct gfs2_glock*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dump_glock(struct seq_file *seq, struct gfs2_glock *gl, bool fsid)
{
 spin_lock(&gl->gl_lockref.lock);
 gfs2_dump_glock(seq, gl, fsid);
 spin_unlock(&gl->gl_lockref.lock);
}
