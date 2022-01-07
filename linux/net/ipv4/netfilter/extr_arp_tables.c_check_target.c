
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_tgchk_param {char const* table; int family; int hook_mask; int targinfo; int target; struct arpt_entry* entryinfo; } ;
struct TYPE_3__ {int target; } ;
struct TYPE_4__ {scalar_t__ target_size; TYPE_1__ kernel; } ;
struct xt_entry_target {TYPE_2__ u; int data; } ;
struct arpt_entry {int comefrom; } ;


 int NFPROTO_ARP ;
 struct xt_entry_target* arpt_get_target (struct arpt_entry*) ;
 int xt_check_target (struct xt_tgchk_param*,scalar_t__,int ,int) ;

__attribute__((used)) static inline int check_target(struct arpt_entry *e, const char *name)
{
 struct xt_entry_target *t = arpt_get_target(e);
 struct xt_tgchk_param par = {
  .table = name,
  .entryinfo = e,
  .target = t->u.kernel.target,
  .targinfo = t->data,
  .hook_mask = e->comefrom,
  .family = NFPROTO_ARP,
 };

 return xt_check_target(&par, t->u.target_size - sizeof(*t), 0, 0);
}
