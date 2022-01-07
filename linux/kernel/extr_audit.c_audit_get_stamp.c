
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int dummy; } ;
struct audit_context {int dummy; } ;


 unsigned int audit_serial () ;
 int auditsc_get_stamp (struct audit_context*,struct timespec64*,unsigned int*) ;
 int ktime_get_coarse_real_ts64 (struct timespec64*) ;

__attribute__((used)) static inline void audit_get_stamp(struct audit_context *ctx,
       struct timespec64 *t, unsigned int *serial)
{
 if (!ctx || !auditsc_get_stamp(ctx, t, serial)) {
  ktime_get_coarse_real_ts64(t);
  *serial = audit_serial();
 }
}
