
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* net; } ;
struct common_audit_data {TYPE_2__ u; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_7__ {size_t type; int protocol; } ;
struct TYPE_8__ {int request; int denied; scalar_t__ peer; int label; TYPE_3__ net; } ;
struct TYPE_5__ {size_t family; } ;


 int FLAGS_NONE ;
 int GFP_ATOMIC ;
 int NET_PERMS_MASK ;
 int aa_audit_perm_mask (struct audit_buffer*,int,int *,int ,int ,int) ;
 int aa_label_xaudit (struct audit_buffer*,int ,scalar_t__,int ,int ) ;
 TYPE_4__* aad (struct common_audit_data*) ;
 scalar_t__* address_family_names ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 int audit_log_string (struct audit_buffer*,scalar_t__) ;
 int labels_ns (int ) ;
 int net_mask_names ;
 scalar_t__* sock_type_names ;

void audit_net_cb(struct audit_buffer *ab, void *va)
{
 struct common_audit_data *sa = va;

 audit_log_format(ab, " family=");
 if (address_family_names[sa->u.net->family])
  audit_log_string(ab, address_family_names[sa->u.net->family]);
 else
  audit_log_format(ab, "\"unknown(%d)\"", sa->u.net->family);
 audit_log_format(ab, " sock_type=");
 if (sock_type_names[aad(sa)->net.type])
  audit_log_string(ab, sock_type_names[aad(sa)->net.type]);
 else
  audit_log_format(ab, "\"unknown(%d)\"", aad(sa)->net.type);
 audit_log_format(ab, " protocol=%d", aad(sa)->net.protocol);

 if (aad(sa)->request & NET_PERMS_MASK) {
  audit_log_format(ab, " requested_mask=");
  aa_audit_perm_mask(ab, aad(sa)->request, ((void*)0), 0,
       net_mask_names, NET_PERMS_MASK);

  if (aad(sa)->denied & NET_PERMS_MASK) {
   audit_log_format(ab, " denied_mask=");
   aa_audit_perm_mask(ab, aad(sa)->denied, ((void*)0), 0,
        net_mask_names, NET_PERMS_MASK);
  }
 }
 if (aad(sa)->peer) {
  audit_log_format(ab, " peer=");
  aa_label_xaudit(ab, labels_ns(aad(sa)->label), aad(sa)->peer,
    FLAGS_NONE, GFP_ATOMIC);
 }
}
