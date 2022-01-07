
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* val; } ;
struct fanotify_fid {TYPE_1__ fsid; } ;


 int fanotify_fid_fh (struct fanotify_fid*,unsigned int) ;
 int memcmp (int ,int ,unsigned int) ;

__attribute__((used)) static inline bool fanotify_fid_equal(struct fanotify_fid *fid1,
          struct fanotify_fid *fid2,
          unsigned int fh_len)
{
 return fid1->fsid.val[0] == fid2->fsid.val[0] &&
  fid1->fsid.val[1] == fid2->fsid.val[1] &&
  !memcmp(fanotify_fid_fh(fid1, fh_len),
   fanotify_fid_fh(fid2, fh_len), fh_len);
}
