
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static u64 rb_cnt(u64 wr, u64 rd, u64 len)
{
 if (rd <= wr)
  return wr - rd;
 else
  return len - (rd - wr);
}
