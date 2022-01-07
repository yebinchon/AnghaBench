
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int HEX_PREFIX ;
 int KERN_WARNING ;
 int pr_fmt (int ) ;
 int print_hex_dump (int ,int ,int,int,int,void const*,size_t,int) ;
 int seq_hex_dump (struct seq_file*,int ,int,int,int,void const*,size_t,int) ;

__attribute__((used)) static void warn_or_seq_hex_dump(struct seq_file *seq, int prefix_type,
     int rowsize, int groupsize, const void *buf,
     size_t len, bool ascii)
{
 if (seq)
  seq_hex_dump(seq, HEX_PREFIX, prefix_type, rowsize, groupsize,
        buf, len, ascii);
 else
  print_hex_dump(KERN_WARNING, pr_fmt(HEX_PREFIX), prefix_type,
          rowsize, groupsize, buf, len, ascii);
}
