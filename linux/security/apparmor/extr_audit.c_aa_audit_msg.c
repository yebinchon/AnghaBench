
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct TYPE_2__ {int type; } ;


 TYPE_1__* aad (struct common_audit_data*) ;
 int audit_pre ;
 int common_lsm_audit (struct common_audit_data*,int ,void (*) (struct audit_buffer*,void*)) ;

void aa_audit_msg(int type, struct common_audit_data *sa,
    void (*cb) (struct audit_buffer *, void *))
{
 aad(sa)->type = type;
 common_lsm_audit(sa, audit_pre, cb);
}
