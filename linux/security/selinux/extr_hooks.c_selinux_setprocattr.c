
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct task_security_struct {scalar_t__ sid; scalar_t__ sockcreate_sid; scalar_t__ keycreate_sid; scalar_t__ create_sid; scalar_t__ exec_sid; } ;
struct cred {int dummy; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_SELINUX_ERR ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int KEY__CREATE ;
 int PROCESS__DYNTRANSITION ;
 int PROCESS__PTRACE ;
 int PROCESS__SETCURRENT ;
 int PROCESS__SETEXEC ;
 int PROCESS__SETFSCREATE ;
 int PROCESS__SETKEYCREATE ;
 int PROCESS__SETSOCKCREATE ;
 int SECCLASS_KEY ;
 int SECCLASS_PROCESS ;
 int abort_creds (struct cred*) ;
 int audit_context () ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*) ;
 int audit_log_n_untrustedstring (struct audit_buffer*,void*,size_t) ;
 struct audit_buffer* audit_log_start (int ,int ,int ) ;
 int avc_has_perm (int *,scalar_t__,scalar_t__,int ,int ,int *) ;
 int commit_creds (struct cred*) ;
 int current_is_single_threaded () ;
 scalar_t__ current_sid () ;
 int has_cap_mac_admin (int) ;
 struct cred* prepare_creds () ;
 scalar_t__ ptrace_parent_sid () ;
 int security_bounded_transition (int *,scalar_t__,scalar_t__) ;
 int security_context_to_sid (int *,void*,size_t,scalar_t__*,int ) ;
 int security_context_to_sid_force (int *,void*,size_t,scalar_t__*) ;
 struct task_security_struct* selinux_cred (struct cred*) ;
 int selinux_state ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int selinux_setprocattr(const char *name, void *value, size_t size)
{
 struct task_security_struct *tsec;
 struct cred *new;
 u32 mysid = current_sid(), sid = 0, ptsid;
 int error;
 char *str = value;




 if (!strcmp(name, "exec"))
  error = avc_has_perm(&selinux_state,
         mysid, mysid, SECCLASS_PROCESS,
         PROCESS__SETEXEC, ((void*)0));
 else if (!strcmp(name, "fscreate"))
  error = avc_has_perm(&selinux_state,
         mysid, mysid, SECCLASS_PROCESS,
         PROCESS__SETFSCREATE, ((void*)0));
 else if (!strcmp(name, "keycreate"))
  error = avc_has_perm(&selinux_state,
         mysid, mysid, SECCLASS_PROCESS,
         PROCESS__SETKEYCREATE, ((void*)0));
 else if (!strcmp(name, "sockcreate"))
  error = avc_has_perm(&selinux_state,
         mysid, mysid, SECCLASS_PROCESS,
         PROCESS__SETSOCKCREATE, ((void*)0));
 else if (!strcmp(name, "current"))
  error = avc_has_perm(&selinux_state,
         mysid, mysid, SECCLASS_PROCESS,
         PROCESS__SETCURRENT, ((void*)0));
 else
  error = -EINVAL;
 if (error)
  return error;


 if (size && str[0] && str[0] != '\n') {
  if (str[size-1] == '\n') {
   str[size-1] = 0;
   size--;
  }
  error = security_context_to_sid(&selinux_state, value, size,
      &sid, GFP_KERNEL);
  if (error == -EINVAL && !strcmp(name, "fscreate")) {
   if (!has_cap_mac_admin(1)) {
    struct audit_buffer *ab;
    size_t audit_size;



    if (str[size - 1] == '\0')
     audit_size = size - 1;
    else
     audit_size = size;
    ab = audit_log_start(audit_context(),
           GFP_ATOMIC,
           AUDIT_SELINUX_ERR);
    audit_log_format(ab, "op=fscreate invalid_context=");
    audit_log_n_untrustedstring(ab, value, audit_size);
    audit_log_end(ab);

    return error;
   }
   error = security_context_to_sid_force(
            &selinux_state,
            value, size, &sid);
  }
  if (error)
   return error;
 }

 new = prepare_creds();
 if (!new)
  return -ENOMEM;







 tsec = selinux_cred(new);
 if (!strcmp(name, "exec")) {
  tsec->exec_sid = sid;
 } else if (!strcmp(name, "fscreate")) {
  tsec->create_sid = sid;
 } else if (!strcmp(name, "keycreate")) {
  if (sid) {
   error = avc_has_perm(&selinux_state, mysid, sid,
          SECCLASS_KEY, KEY__CREATE, ((void*)0));
   if (error)
    goto abort_change;
  }
  tsec->keycreate_sid = sid;
 } else if (!strcmp(name, "sockcreate")) {
  tsec->sockcreate_sid = sid;
 } else if (!strcmp(name, "current")) {
  error = -EINVAL;
  if (sid == 0)
   goto abort_change;


  error = -EPERM;
  if (!current_is_single_threaded()) {
   error = security_bounded_transition(&selinux_state,
           tsec->sid, sid);
   if (error)
    goto abort_change;
  }


  error = avc_has_perm(&selinux_state,
         tsec->sid, sid, SECCLASS_PROCESS,
         PROCESS__DYNTRANSITION, ((void*)0));
  if (error)
   goto abort_change;



  ptsid = ptrace_parent_sid();
  if (ptsid != 0) {
   error = avc_has_perm(&selinux_state,
          ptsid, sid, SECCLASS_PROCESS,
          PROCESS__PTRACE, ((void*)0));
   if (error)
    goto abort_change;
  }

  tsec->sid = sid;
 } else {
  error = -EINVAL;
  goto abort_change;
 }

 commit_creds(new);
 return size;

abort_change:
 abort_creds(new);
 return error;
}
