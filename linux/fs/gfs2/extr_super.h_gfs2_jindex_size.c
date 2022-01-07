
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {unsigned int sd_journals; int sd_jindex_spin; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline unsigned int gfs2_jindex_size(struct gfs2_sbd *sdp)
{
 unsigned int x;
 spin_lock(&sdp->sd_jindex_spin);
 x = sdp->sd_journals;
 spin_unlock(&sdp->sd_jindex_spin);
 return x;
}
