
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int aal5; int aal0; } ;
struct atm_dev {int refcnt; TYPE_1__ stats; int * esi; int type; int number; } ;


 int ESI_LEN ;
 int add_stats (struct seq_file*,char*,int *) ;
 int refcount_read (int *) ;
 int seq_printf (struct seq_file*,char*,int ,...) ;
 int seq_putc (struct seq_file*,char) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void atm_dev_info(struct seq_file *seq, const struct atm_dev *dev)
{
 int i;

 seq_printf(seq, "%3d %-8s", dev->number, dev->type);
 for (i = 0; i < ESI_LEN; i++)
  seq_printf(seq, "%02x", dev->esi[i]);
 seq_puts(seq, "  ");
 add_stats(seq, "0", &dev->stats.aal0);
 seq_puts(seq, "  ");
 add_stats(seq, "5", &dev->stats.aal5);
 seq_printf(seq, "\t[%d]", refcount_read(&dev->refcnt));
 seq_putc(seq, '\n');
}
