
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knfsd_fh {scalar_t__ fh_fsid_type; int fh_fsid; } ;


 int key_len (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static inline bool fh_fsid_match(struct knfsd_fh *fh1, struct knfsd_fh *fh2)
{
 if (fh1->fh_fsid_type != fh2->fh_fsid_type)
  return 0;
 if (memcmp(fh1->fh_fsid, fh2->fh_fsid, key_len(fh1->fh_fsid_type)) != 0)
  return 0;
 return 1;
}
