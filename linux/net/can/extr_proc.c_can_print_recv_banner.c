
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void can_print_recv_banner(struct seq_file *m)
{




 seq_puts(m, "  device   can_id   can_mask  function"
   "  userdata   matches  ident\n");
}
