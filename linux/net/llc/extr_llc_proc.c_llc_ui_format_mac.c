
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int *) ;

__attribute__((used)) static void llc_ui_format_mac(struct seq_file *seq, u8 *addr)
{
 seq_printf(seq, "%pM", addr);
}
