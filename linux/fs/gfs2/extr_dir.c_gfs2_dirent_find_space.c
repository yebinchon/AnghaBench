
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {unsigned int len; } ;
struct gfs2_dirent {int de_rec_len; int de_name_len; } ;


 unsigned int GFS2_DIRENT_SIZE (unsigned int) ;
 unsigned int be16_to_cpu (int ) ;
 scalar_t__ gfs2_dirent_sentinel (struct gfs2_dirent const*) ;

__attribute__((used)) static int gfs2_dirent_find_space(const struct gfs2_dirent *dent,
      const struct qstr *name,
      void *opaque)
{
 unsigned required = GFS2_DIRENT_SIZE(name->len);
 unsigned actual = GFS2_DIRENT_SIZE(be16_to_cpu(dent->de_name_len));
 unsigned totlen = be16_to_cpu(dent->de_rec_len);

 if (gfs2_dirent_sentinel(dent))
  actual = 0;
 if (totlen - actual >= required)
  return 1;
 return 0;
}
