
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_reservation {unsigned int r_len; unsigned int r_start; } ;



__attribute__((used)) static inline unsigned int ocfs2_resv_end(struct ocfs2_alloc_reservation *resv)
{
 if (resv->r_len)
  return resv->r_start + resv->r_len - 1;
 return resv->r_start;
}
