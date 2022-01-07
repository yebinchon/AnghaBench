
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct ddebug_iter* private; } ;
struct ddebug_iter {TYPE_1__* table; } ;
struct _ddebug {int format; int function; int lineno; int filename; } ;
typedef int flagsbuf ;
struct TYPE_2__ {int mod_name; } ;


 void* SEQ_START_TOKEN ;
 int ddebug_describe_flags (struct _ddebug*,char*,int) ;
 int seq_escape (struct seq_file*,int ,char*) ;
 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int trim_prefix (int ) ;
 int vpr_info (char*,struct seq_file*,void*) ;

__attribute__((used)) static int ddebug_proc_show(struct seq_file *m, void *p)
{
 struct ddebug_iter *iter = m->private;
 struct _ddebug *dp = p;
 char flagsbuf[10];

 vpr_info("called m=%p p=%p\n", m, p);

 if (p == SEQ_START_TOKEN) {
  seq_puts(m,
    "# filename:lineno [module]function flags format\n");
  return 0;
 }

 seq_printf(m, "%s:%u [%s]%s =%s \"",
     trim_prefix(dp->filename), dp->lineno,
     iter->table->mod_name, dp->function,
     ddebug_describe_flags(dp, flagsbuf, sizeof(flagsbuf)));
 seq_escape(m, dp->format, "\t\r\n\"");
 seq_puts(m, "\"\n");

 return 0;
}
