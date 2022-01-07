
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int fh_maxsize; } ;


 int memset (struct svc_fh*,int ,int) ;

__attribute__((used)) static __inline__ struct svc_fh *
fh_init(struct svc_fh *fhp, int maxsize)
{
 memset(fhp, 0, sizeof(*fhp));
 fhp->fh_maxsize = maxsize;
 return fhp;
}
