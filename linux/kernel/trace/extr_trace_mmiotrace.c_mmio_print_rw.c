
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct mmiotrace_rw {int opcode; int value; int pc; scalar_t__ phys; int map_id; int width; } ;
struct trace_mmiotrace_rw {struct mmiotrace_rw rw; } ;
struct trace_iterator {int ts; struct trace_seq seq; struct trace_entry* ent; } ;
struct trace_entry {int dummy; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;





 int USEC_PER_SEC ;
 unsigned long do_div (unsigned long long,int ) ;
 unsigned long long ns2usecs (int ) ;
 int trace_assign_type (struct trace_mmiotrace_rw*,struct trace_entry*) ;
 int trace_handle_return (struct trace_seq*) ;
 int trace_seq_printf (struct trace_seq*,char*,unsigned int,unsigned long,unsigned long,unsigned long long,int,int,int,int ,...) ;
 int trace_seq_puts (struct trace_seq*,char*) ;

__attribute__((used)) static enum print_line_t mmio_print_rw(struct trace_iterator *iter)
{
 struct trace_entry *entry = iter->ent;
 struct trace_mmiotrace_rw *field;
 struct mmiotrace_rw *rw;
 struct trace_seq *s = &iter->seq;
 unsigned long long t = ns2usecs(iter->ts);
 unsigned long usec_rem = do_div(t, USEC_PER_SEC);
 unsigned secs = (unsigned long)t;

 trace_assign_type(field, entry);
 rw = &field->rw;

 switch (rw->opcode) {
 case 130:
  trace_seq_printf(s,
   "R %d %u.%06lu %d 0x%llx 0x%lx 0x%lx %d\n",
   rw->width, secs, usec_rem, rw->map_id,
   (unsigned long long)rw->phys,
   rw->value, rw->pc, 0);
  break;
 case 128:
  trace_seq_printf(s,
   "W %d %u.%06lu %d 0x%llx 0x%lx 0x%lx %d\n",
   rw->width, secs, usec_rem, rw->map_id,
   (unsigned long long)rw->phys,
   rw->value, rw->pc, 0);
  break;
 case 129:
  trace_seq_printf(s,
   "UNKNOWN %u.%06lu %d 0x%llx %02lx,%02lx,"
   "%02lx 0x%lx %d\n",
   secs, usec_rem, rw->map_id,
   (unsigned long long)rw->phys,
   (rw->value >> 16) & 0xff, (rw->value >> 8) & 0xff,
   (rw->value >> 0) & 0xff, rw->pc, 0);
  break;
 default:
  trace_seq_puts(s, "rw what?\n");
  break;
 }

 return trace_handle_return(s);
}
