
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {scalar_t__ fh_export; int fh_dentry; } ;


 int dget (int ) ;
 int exp_get (scalar_t__) ;
 int fh_put (struct svc_fh*) ;

__attribute__((used)) static inline void
fh_dup2(struct svc_fh *dst, struct svc_fh *src)
{
 fh_put(dst);
 dget(src->fh_dentry);
 if (src->fh_export)
  exp_get(src->fh_export);
 *dst = *src;
}
