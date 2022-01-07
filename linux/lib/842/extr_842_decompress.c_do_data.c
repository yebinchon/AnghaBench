
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct sw842_param {int olen; int out; } ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;


 int EINVAL ;
 int ENOSPC ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int next_bits (struct sw842_param*,int *,int) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static int do_data(struct sw842_param *p, u8 n)
{
 u64 v;
 int ret;

 if (n > p->olen)
  return -ENOSPC;

 ret = next_bits(p, &v, n * 8);
 if (ret)
  return ret;

 switch (n) {
 case 2:
  put_unaligned(cpu_to_be16((u16)v), (__be16 *)p->out);
  break;
 case 4:
  put_unaligned(cpu_to_be32((u32)v), (__be32 *)p->out);
  break;
 case 8:
  put_unaligned(cpu_to_be64((u64)v), (__be64 *)p->out);
  break;
 default:
  return -EINVAL;
 }

 p->out += n;
 p->olen -= n;

 return 0;
}
