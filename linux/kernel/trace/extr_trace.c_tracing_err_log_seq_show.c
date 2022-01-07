
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {char** errs; size_t type; int pos; int ts; } ;
struct tracing_log_err {TYPE_1__ info; int cmd; int loc; } ;
struct seq_file {int dummy; } ;


 int NSEC_PER_SEC ;
 int do_div (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int tracing_err_log_show_pos (struct seq_file*,int ) ;

__attribute__((used)) static int tracing_err_log_seq_show(struct seq_file *m, void *v)
{
 struct tracing_log_err *err = v;

 if (err) {
  const char *err_text = err->info.errs[err->info.type];
  u64 sec = err->info.ts;
  u32 nsec;

  nsec = do_div(sec, NSEC_PER_SEC);
  seq_printf(m, "[%5llu.%06u] %s%s", sec, nsec / 1000,
      err->loc, err_text);
  seq_printf(m, "%s", err->cmd);
  tracing_err_log_show_pos(m, err->info.pos);
 }

 return 0;
}
