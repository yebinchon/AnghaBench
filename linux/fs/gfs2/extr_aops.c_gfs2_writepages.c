
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int dummy; } ;
struct gfs2_sbd {int sd_flags; } ;
struct address_space {int dummy; } ;


 int SDF_FORCE_AIL_FLUSH ;
 int gfs2_get_block_noalloc ;
 struct gfs2_sbd* gfs2_mapping2sbd (struct address_space*) ;
 int mpage_writepages (struct address_space*,struct writeback_control*,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int gfs2_writepages(struct address_space *mapping,
      struct writeback_control *wbc)
{
 struct gfs2_sbd *sdp = gfs2_mapping2sbd(mapping);
 int ret = mpage_writepages(mapping, wbc, gfs2_get_block_noalloc);







 if (ret == 0)
  set_bit(SDF_FORCE_AIL_FLUSH, &sdp->sd_flags);

 return ret;
}
