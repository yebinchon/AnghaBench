
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* fh_pad; } ;
struct knfsd_fh {int fh_size; TYPE_1__ fh_base; } ;
struct svc_fh {struct knfsd_fh fh_handle; } ;


 int sprintf (char*,char*,int,int,int,int,int,int,int) ;

char * SVCFH_fmt(struct svc_fh *fhp)
{
 struct knfsd_fh *fh = &fhp->fh_handle;

 static char buf[80];
 sprintf(buf, "%d: %08x %08x %08x %08x %08x %08x",
  fh->fh_size,
  fh->fh_base.fh_pad[0],
  fh->fh_base.fh_pad[1],
  fh->fh_base.fh_pad[2],
  fh->fh_base.fh_pad[3],
  fh->fh_base.fh_pad[4],
  fh->fh_base.fh_pad[5]);
 return buf;
}
