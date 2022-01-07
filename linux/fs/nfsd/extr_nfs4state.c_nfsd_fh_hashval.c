
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fh_pad; } ;
struct knfsd_fh {int fh_size; TYPE_1__ fh_base; } ;


 int XDR_QUADLEN (int ) ;
 unsigned int jhash2 (int ,int ,int ) ;

__attribute__((used)) static unsigned int nfsd_fh_hashval(struct knfsd_fh *fh)
{
 return jhash2(fh->fh_base.fh_pad, XDR_QUADLEN(fh->fh_size), 0);
}
