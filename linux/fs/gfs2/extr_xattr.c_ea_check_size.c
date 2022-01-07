
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {unsigned int sd_jbsize; } ;


 int ERANGE ;
 size_t GFS2_EA_MAX_DATA_LEN ;
 int ea_calc_size (struct gfs2_sbd*,unsigned int,size_t,unsigned int*) ;

__attribute__((used)) static int ea_check_size(struct gfs2_sbd *sdp, unsigned int nsize, size_t dsize)
{
 unsigned int size;

 if (dsize > GFS2_EA_MAX_DATA_LEN)
  return -ERANGE;

 ea_calc_size(sdp, nsize, dsize, &size);


 if (size > sdp->sd_jbsize)
  return -ERANGE;

 return 0;
}
