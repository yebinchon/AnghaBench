
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int cpu_to_be64 (int ) ;
 int le64_to_cpu (int ) ;

__attribute__((used)) static void byte_swap_64(u64 *data_in, u64 *data_out, u32 len)
{
 int i;

 for (i = 0; i < len / 8; i++)
  data_out[i] = cpu_to_be64(le64_to_cpu(data_in[i]));
}
