
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {scalar_t__ fh_locked; scalar_t__ fh_dentry; } ;


 int WARN_ON (int) ;

__attribute__((used)) static __inline__ struct svc_fh *
fh_copy(struct svc_fh *dst, struct svc_fh *src)
{
 WARN_ON(src->fh_dentry || src->fh_locked);

 *dst = *src;
 return dst;
}
