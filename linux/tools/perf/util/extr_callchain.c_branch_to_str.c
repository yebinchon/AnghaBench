
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double u64 ;
struct branch_type_stat {int dummy; } ;


 int branch_type_str (struct branch_type_stat*,char*,int) ;
 scalar_t__ count_float_printf (int ,char*,double,char*,int,double) ;
 scalar_t__ scnprintf (char*,int,char*) ;

__attribute__((used)) static int branch_to_str(char *bf, int bfsize,
    u64 branch_count, u64 predicted_count,
    u64 abort_count,
    struct branch_type_stat *brtype_stat)
{
 int printed, i = 0;

 printed = branch_type_str(brtype_stat, bf, bfsize);
 if (printed)
  i++;

 if (predicted_count < branch_count) {
  printed += count_float_printf(i++, "predicted",
    predicted_count * 100.0 / branch_count,
    bf + printed, bfsize - printed, 0.0);
 }

 if (abort_count) {
  printed += count_float_printf(i++, "abort",
    abort_count * 100.0 / branch_count,
    bf + printed, bfsize - printed, 0.1);
 }

 if (i)
  printed += scnprintf(bf + printed, bfsize - printed, ")");

 return printed;
}
