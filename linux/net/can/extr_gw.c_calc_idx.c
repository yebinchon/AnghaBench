
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int calc_idx(int idx, int rx_len)
{
 if (idx < 0)
  return rx_len + idx;
 else
  return idx;
}
