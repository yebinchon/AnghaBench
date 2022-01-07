
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct common_audit_data {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_3__ {size_t rlim; int max; } ;
struct TYPE_4__ {scalar_t__ peer; int label; TYPE_1__ rlim; } ;


 int FLAGS_NONE ;
 int GFP_ATOMIC ;
 int aa_label_xaudit (struct audit_buffer*,int ,scalar_t__,int ,int ) ;
 TYPE_2__* aad (struct common_audit_data*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int labels_ns (int ) ;
 int * rlim_names ;

__attribute__((used)) static void audit_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;

 audit_log_format(ab, " rlimit=%s value=%lu",
    rlim_names[aad(sa)->rlim.rlim], aad(sa)->rlim.max);
 if (aad(sa)->peer) {
  audit_log_format(ab, " peer=");
  aa_label_xaudit(ab, labels_ns(aad(sa)->label), aad(sa)->peer,
    FLAGS_NONE, GFP_ATOMIC);
 }
}
