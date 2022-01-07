
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ) ;

void ima_print_digest(struct seq_file *m, u8 *digest, u32 size)
{
 u32 i;

 for (i = 0; i < size; i++)
  seq_printf(m, "%02x", *(digest + i));
}
