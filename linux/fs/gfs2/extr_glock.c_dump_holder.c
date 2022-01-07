
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {char* comm; } ;
struct seq_file {int dummy; } ;
struct gfs2_holder {scalar_t__ gh_ip; scalar_t__ gh_owner_pid; int gh_error; int gh_iflags; int gh_flags; int gh_state; } ;


 int PIDTYPE_PID ;
 int gfs2_print_dbg (struct seq_file*,char*,char const*,int ,int ,int ,long,char*,void*) ;
 int hflags2str (char*,int ,int ) ;
 scalar_t__ pid_nr (scalar_t__) ;
 struct task_struct* pid_task (scalar_t__,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int state2str (int ) ;

__attribute__((used)) static void dump_holder(struct seq_file *seq, const struct gfs2_holder *gh,
   const char *fs_id_buf)
{
 struct task_struct *gh_owner = ((void*)0);
 char flags_buf[32];

 rcu_read_lock();
 if (gh->gh_owner_pid)
  gh_owner = pid_task(gh->gh_owner_pid, PIDTYPE_PID);
 gfs2_print_dbg(seq, "%s H: s:%s f:%s e:%d p:%ld [%s] %pS\n",
         fs_id_buf, state2str(gh->gh_state),
         hflags2str(flags_buf, gh->gh_flags, gh->gh_iflags),
         gh->gh_error,
         gh->gh_owner_pid ? (long)pid_nr(gh->gh_owner_pid) : -1,
         gh_owner ? gh_owner->comm : "(ended)",
         (void *)gh->gh_ip);
 rcu_read_unlock();
}
