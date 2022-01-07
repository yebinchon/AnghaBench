
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_reservation {scalar_t__ r_len; } ;



__attribute__((used)) static inline int ocfs2_resv_empty(struct ocfs2_alloc_reservation *resv)
{
 return !!(resv->r_len == 0);
}
