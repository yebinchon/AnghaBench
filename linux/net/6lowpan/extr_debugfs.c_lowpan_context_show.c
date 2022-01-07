
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct seq_file {struct lowpan_iphc_ctx_table* private; } ;
struct lowpan_iphc_ctx_table {int lock; TYPE_1__* table; } ;
struct TYPE_3__ {int plen; int pfx; int id; } ;


 int LOWPAN_IPHC_CTX_TABLE_SIZE ;
 int lowpan_iphc_ctx_is_active (TYPE_1__*) ;
 int lowpan_iphc_ctx_is_compression (TYPE_1__*) ;
 int seq_printf (struct seq_file*,char*,char*,char*,char,...) ;
 int seq_puts (struct seq_file*,char*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int lowpan_context_show(struct seq_file *file, void *offset)
{
 struct lowpan_iphc_ctx_table *t = file->private;
 int i;

 seq_printf(file, "%3s|%-43s|%c\n", "cid", "prefix", 'C');
 seq_puts(file, "-------------------------------------------------\n");

 spin_lock_bh(&t->lock);
 for (i = 0; i < LOWPAN_IPHC_CTX_TABLE_SIZE; i++) {
  if (!lowpan_iphc_ctx_is_active(&t->table[i]))
   continue;

  seq_printf(file, "%3d|%39pI6c/%-3d|%d\n", t->table[i].id,
      &t->table[i].pfx, t->table[i].plen,
      lowpan_iphc_ctx_is_compression(&t->table[i]));
 }
 spin_unlock_bh(&t->lock);

 return 0;
}
