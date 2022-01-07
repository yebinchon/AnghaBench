
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
typedef int ssize_t ;
struct TYPE_4__ {TYPE_1__* i_sb; } ;
struct TYPE_3__ {struct selinux_fs_info* s_fs_info; } ;


 int EINVAL ;
 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int SECCLASS_SECURITY ;
 int SECINITSID_SECURITY ;
 int SECURITY__COMPUTE_RELABEL ;
 int SIMPLE_TRANSACTION_LIMIT ;
 int avc_has_perm (int *,int ,int ,int ,int ,int *) ;
 int current_sid () ;
 TYPE_2__* file_inode (struct file*) ;
 int kfree (char*) ;
 char* kzalloc (size_t,int ) ;
 int memcpy (char*,char*,int) ;
 int security_change_sid (struct selinux_state*,int,int,int ,int*) ;
 int security_context_str_to_sid (struct selinux_state*,char*,int*,int ) ;
 int security_sid_to_context (struct selinux_state*,int,char**,int*) ;
 int selinux_state ;
 int sscanf (char*,char*,char*,char*,int *) ;

__attribute__((used)) static ssize_t sel_write_relabel(struct file *file, char *buf, size_t size)
{
 struct selinux_fs_info *fsi = file_inode(file)->i_sb->s_fs_info;
 struct selinux_state *state = fsi->state;
 char *scon = ((void*)0), *tcon = ((void*)0);
 u32 ssid, tsid, newsid;
 u16 tclass;
 ssize_t length;
 char *newcon = ((void*)0);
 u32 len;

 length = avc_has_perm(&selinux_state,
         current_sid(), SECINITSID_SECURITY,
         SECCLASS_SECURITY, SECURITY__COMPUTE_RELABEL,
         ((void*)0));
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

 length = security_change_sid(state, ssid, tsid, tclass, &newsid);
 if (length)
  goto out;

 length = security_sid_to_context(state, newsid, &newcon, &len);
 if (length)
  goto out;

 length = -ERANGE;
 if (len > SIMPLE_TRANSACTION_LIMIT)
  goto out;

 memcpy(buf, newcon, len);
 length = len;
out:
 kfree(newcon);
 kfree(tcon);
 kfree(scon);
 return length;
}
