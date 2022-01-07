
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _ddebug {int flags; char* modname; char* function; int lineno; } ;


 int PREFIX_SIZE ;
 int _DPRINTK_FLAGS_INCL_FUNCNAME ;
 int _DPRINTK_FLAGS_INCL_LINENO ;
 int _DPRINTK_FLAGS_INCL_MODNAME ;
 int _DPRINTK_FLAGS_INCL_TID ;
 int current ;
 scalar_t__ in_interrupt () ;
 int remaining (int) ;
 scalar_t__ snprintf (char*,int ,char*,...) ;
 int task_pid_vnr (int ) ;

__attribute__((used)) static char *dynamic_emit_prefix(const struct _ddebug *desc, char *buf)
{
 int pos_after_tid;
 int pos = 0;

 *buf = '\0';

 if (desc->flags & _DPRINTK_FLAGS_INCL_TID) {
  if (in_interrupt())
   pos += snprintf(buf + pos, remaining(pos), "<intr> ");
  else
   pos += snprintf(buf + pos, remaining(pos), "[%d] ",
     task_pid_vnr(current));
 }
 pos_after_tid = pos;
 if (desc->flags & _DPRINTK_FLAGS_INCL_MODNAME)
  pos += snprintf(buf + pos, remaining(pos), "%s:",
    desc->modname);
 if (desc->flags & _DPRINTK_FLAGS_INCL_FUNCNAME)
  pos += snprintf(buf + pos, remaining(pos), "%s:",
    desc->function);
 if (desc->flags & _DPRINTK_FLAGS_INCL_LINENO)
  pos += snprintf(buf + pos, remaining(pos), "%d:",
    desc->lineno);
 if (pos - pos_after_tid)
  pos += snprintf(buf + pos, remaining(pos), " ");
 if (pos >= PREFIX_SIZE)
  buf[PREFIX_SIZE - 1] = '\0';

 return buf;
}
