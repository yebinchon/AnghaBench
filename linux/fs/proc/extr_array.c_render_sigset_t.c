
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int sigset_t ;


 int _NSIG ;
 char* hex_asc ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char const*) ;
 scalar_t__ sigismember (int *,int) ;

void render_sigset_t(struct seq_file *m, const char *header,
    sigset_t *set)
{
 int i;

 seq_puts(m, header);

 i = _NSIG;
 do {
  int x = 0;

  i -= 4;
  if (sigismember(set, i+1)) x |= 1;
  if (sigismember(set, i+2)) x |= 2;
  if (sigismember(set, i+3)) x |= 4;
  if (sigismember(set, i+4)) x |= 8;
  seq_putc(m, hex_asc[x]);
 } while (i >= 4);

 seq_putc(m, '\n');
}
