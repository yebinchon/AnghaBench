
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int dummy; } ;


 int I_MUTEX_NORMAL ;
 int fh_lock_nested (struct svc_fh*,int ) ;

__attribute__((used)) static inline void
fh_lock(struct svc_fh *fhp)
{
 fh_lock_nested(fhp, I_MUTEX_NORMAL);
}
