
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int u32 ;
struct seq_file {int dummy; } ;


 int seq_write (struct seq_file*,int *,int) ;

__attribute__((used)) static int seq_write_gcov_u32(struct seq_file *seq, u32 v)
{
 return seq_write(seq, &v, sizeof(v));
}
