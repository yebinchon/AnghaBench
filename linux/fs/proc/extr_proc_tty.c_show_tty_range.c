
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {char* driver_name; int num; int type; scalar_t__ subtype; int name; } ;
struct seq_file {int dummy; } ;
typedef int dev_t ;


 int MAJOR (int ) ;
 scalar_t__ MINOR (int ) ;
 scalar_t__ PTY_TYPE_MASTER ;
 scalar_t__ PTY_TYPE_SLAVE ;
 scalar_t__ SYSTEM_TYPE_CONSOLE ;
 scalar_t__ SYSTEM_TYPE_SYSCONS ;
 scalar_t__ SYSTEM_TYPE_TTY ;




 int seq_printf (struct seq_file*,char*,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void show_tty_range(struct seq_file *m, struct tty_driver *p,
 dev_t from, int num)
{
 seq_printf(m, "%-20s ", p->driver_name ? p->driver_name : "unknown");
 seq_printf(m, "/dev/%-8s ", p->name);
 if (p->num > 1) {
  seq_printf(m, "%3d %d-%d ", MAJOR(from), MINOR(from),
   MINOR(from) + num - 1);
 } else {
  seq_printf(m, "%3d %7d ", MAJOR(from), MINOR(from));
 }
 switch (p->type) {
 case 128:
  seq_puts(m, "system");
  if (p->subtype == SYSTEM_TYPE_TTY)
   seq_puts(m, ":/dev/tty");
  else if (p->subtype == SYSTEM_TYPE_SYSCONS)
   seq_puts(m, ":console");
  else if (p->subtype == SYSTEM_TYPE_CONSOLE)
   seq_puts(m, ":vtmaster");
  break;
 case 131:
  seq_puts(m, "console");
  break;
 case 129:
  seq_puts(m, "serial");
  break;
 case 130:
  if (p->subtype == PTY_TYPE_MASTER)
   seq_puts(m, "pty:master");
  else if (p->subtype == PTY_TYPE_SLAVE)
   seq_puts(m, "pty:slave");
  else
   seq_puts(m, "pty");
  break;
 default:
  seq_printf(m, "type:%d.%d", p->type, p->subtype);
 }
 seq_putc(m, '\n');
}
