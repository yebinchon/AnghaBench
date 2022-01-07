
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct svc_fh {int fh_want_write; TYPE_2__* fh_export; } ;
struct TYPE_3__ {int mnt; } ;
struct TYPE_4__ {TYPE_1__ ex_path; } ;


 int mnt_want_write (int ) ;

__attribute__((used)) static inline int fh_want_write(struct svc_fh *fh)
{
 int ret;

 if (fh->fh_want_write)
  return 0;
 ret = mnt_want_write(fh->fh_export->ex_path.mnt);
 if (!ret)
  fh->fh_want_write = 1;
 return ret;
}
