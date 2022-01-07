
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct linux_binprm {TYPE_3__* file; } ;
struct cred {int cap_ambient; int cap_effective; int cap_inheritable; int cap_permitted; } ;
struct cpu_vfs_cap_data {int magic_etc; int rootid; int inheritable; int permitted; } ;
struct audit_context {void* aux; } ;
struct TYPE_12__ {int ambient; int effective; int inheritable; int permitted; } ;
struct TYPE_11__ {int ambient; int effective; int inheritable; int permitted; } ;
struct TYPE_10__ {int fE; int rootid; int inheritable; int permitted; } ;
struct TYPE_7__ {void* next; int type; } ;
struct audit_aux_data_bprm_fcaps {int fcap_ver; TYPE_6__ new_pcap; TYPE_5__ old_pcap; TYPE_4__ fcap; TYPE_1__ d; } ;
struct TYPE_8__ {int dentry; } ;
struct TYPE_9__ {TYPE_2__ f_path; } ;


 int AUDIT_BPRM_FCAPS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VFS_CAP_FLAGS_EFFECTIVE ;
 int VFS_CAP_REVISION_MASK ;
 int VFS_CAP_REVISION_SHIFT ;
 struct audit_context* audit_context () ;
 int get_vfs_caps_from_disk (int ,struct cpu_vfs_cap_data*) ;
 struct audit_aux_data_bprm_fcaps* kmalloc (int,int ) ;

int __audit_log_bprm_fcaps(struct linux_binprm *bprm,
      const struct cred *new, const struct cred *old)
{
 struct audit_aux_data_bprm_fcaps *ax;
 struct audit_context *context = audit_context();
 struct cpu_vfs_cap_data vcaps;

 ax = kmalloc(sizeof(*ax), GFP_KERNEL);
 if (!ax)
  return -ENOMEM;

 ax->d.type = AUDIT_BPRM_FCAPS;
 ax->d.next = context->aux;
 context->aux = (void *)ax;

 get_vfs_caps_from_disk(bprm->file->f_path.dentry, &vcaps);

 ax->fcap.permitted = vcaps.permitted;
 ax->fcap.inheritable = vcaps.inheritable;
 ax->fcap.fE = !!(vcaps.magic_etc & VFS_CAP_FLAGS_EFFECTIVE);
 ax->fcap.rootid = vcaps.rootid;
 ax->fcap_ver = (vcaps.magic_etc & VFS_CAP_REVISION_MASK) >> VFS_CAP_REVISION_SHIFT;

 ax->old_pcap.permitted = old->cap_permitted;
 ax->old_pcap.inheritable = old->cap_inheritable;
 ax->old_pcap.effective = old->cap_effective;
 ax->old_pcap.ambient = old->cap_ambient;

 ax->new_pcap.permitted = new->cap_permitted;
 ax->new_pcap.inheritable = new->cap_inheritable;
 ax->new_pcap.effective = new->cap_effective;
 ax->new_pcap.ambient = new->cap_ambient;
 return 0;
}
