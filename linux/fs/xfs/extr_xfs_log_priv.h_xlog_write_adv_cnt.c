
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void
xlog_write_adv_cnt(void **ptr, int *len, int *off, size_t bytes)
{
 *ptr += bytes;
 *len -= bytes;
 *off += bytes;
}
