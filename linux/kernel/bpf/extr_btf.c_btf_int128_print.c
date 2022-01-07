
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,scalar_t__,...) ;

__attribute__((used)) static void btf_int128_print(struct seq_file *m, void *data)
{







 u64 upper_num, lower_num;





 upper_num = *(u64 *)(data + 8);
 lower_num = *(u64 *)data;

 if (upper_num == 0)
  seq_printf(m, "0x%llx", lower_num);
 else
  seq_printf(m, "0x%llx%016llx", upper_num, lower_num);
}
