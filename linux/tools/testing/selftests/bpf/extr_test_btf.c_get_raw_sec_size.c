
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raw_types ;
typedef scalar_t__ __u32 ;


 scalar_t__ const BTF_END_RAW ;
 int MAX_NR_RAW_U32 ;

__attribute__((used)) static int get_raw_sec_size(const __u32 *raw_types)
{
 int i;

 for (i = MAX_NR_RAW_U32 - 1;
      i >= 0 && raw_types[i] != BTF_END_RAW;
      i--)
  ;

 return i < 0 ? i : i * sizeof(raw_types[0]);
}
