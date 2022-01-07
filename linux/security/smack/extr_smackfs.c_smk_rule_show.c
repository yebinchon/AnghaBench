
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smack_rule {int smk_access; TYPE_2__* smk_object; TYPE_1__* smk_subject; } ;
struct seq_file {int dummy; } ;
struct TYPE_4__ {int smk_known; } ;
struct TYPE_3__ {int smk_known; } ;


 int MAY_APPEND ;
 int MAY_BRINGUP ;
 int MAY_EXEC ;
 int MAY_LOCK ;
 int MAY_READ ;
 int MAY_TRANSMUTE ;
 int MAY_WRITE ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;
 int seq_putc (struct seq_file*,char) ;
 int strlen (int ) ;

__attribute__((used)) static void smk_rule_show(struct seq_file *s, struct smack_rule *srp, int max)
{






 if (strlen(srp->smk_subject->smk_known) >= max ||
     strlen(srp->smk_object->smk_known) >= max)
  return;

 if (srp->smk_access == 0)
  return;

 seq_printf(s, "%s %s",
     srp->smk_subject->smk_known,
     srp->smk_object->smk_known);

 seq_putc(s, ' ');

 if (srp->smk_access & MAY_READ)
  seq_putc(s, 'r');
 if (srp->smk_access & MAY_WRITE)
  seq_putc(s, 'w');
 if (srp->smk_access & MAY_EXEC)
  seq_putc(s, 'x');
 if (srp->smk_access & MAY_APPEND)
  seq_putc(s, 'a');
 if (srp->smk_access & MAY_TRANSMUTE)
  seq_putc(s, 't');
 if (srp->smk_access & MAY_LOCK)
  seq_putc(s, 'l');
 if (srp->smk_access & MAY_BRINGUP)
  seq_putc(s, 'b');

 seq_putc(s, '\n');
}
