
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct selinux_state {int dummy; } ;
struct selinux_fs_info {struct selinux_state* state; } ;
struct file {int dummy; } ;
struct av_decision {int flags; int seqno; int auditdeny; int auditallow; int allowed; } ;
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct selinux_fs_info* s_fs_info; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SECCLASS_SECURITY ;
 int SECINITSID_SECURITY ;
 int SECURITY__COMPUTE_AV ;
 int SIMPLE_TRANSACTION_LIMIT ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 TYPE_2__* file_inode (struct file*) ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 int scnprintf (char*,int ,char*,int ,int,int ,int ,int ,int ) ;
 int security_compute_av_user (struct selinux_state*,int ,int ,int ,struct av_decision*) ;
 int security_context_str_to_sid (struct selinux_state*,char*,int *,int ) ;
 int selinux_state ;
 int sscanf (char*,char*,char*,char*,int *) ;

__attribute__((used)) static ssize_t sel_write_access(struct file *file, char *buf, size_t size)
{
 struct selinux_fs_info *fsi = file_inode(file)->i_sb->s_fs_info;
 struct selinux_state *state = fsi->state;
 char *scon = ((void*)0), *tcon = ((void*)0);
 u32 ssid, tsid;
 u16 tclass;
 struct av_decision avd;
 ssize_t length;

 length = avc_has_perm(&selinux_state,
         current_sid(), SECINITSID_SECURITY,
         SECCLASS_SECURITY, SECURITY__COMPUTE_AV, ((void*)0));
 if (length)
  goto out;

 length = -ENOMEM;
 scon = kzalloc(size + 1, GFP_KERNEL);
 if (!scon)
  goto out;

 length = -ENOMEM;
 tcon = kzalloc(size + 1, GFP_KERNEL);
 if (!tcon)
  goto out;

 length = -EINVAL;
 if (sscanf(buf, "%s %s %hu", scon, tcon, &tclass) != 3)
  goto out;

 length = security_context_str_to_sid(state, scon, &ssid, GFP_KERNEL);
 if (length)
  goto out;

 length = security_context_str_to_sid(state, tcon, &tsid, GFP_KERNEL);
 if (length)
  goto out;

 security_compute_av_user(state, ssid, tsid, tclass, &avd);

 length = scnprintf(buf, SIMPLE_TRANSACTION_LIMIT,
     "%x %x %x %x %u %x",
     avd.allowed, 0xffffffff,
     avd.auditallow, avd.auditdeny,
     avd.seqno, avd.flags);
out:
 kfree(tcon);
 kfree(scon);
 return length;
}
