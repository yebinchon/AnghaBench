
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_reservation {unsigned int r_flags; } ;


 int BUG_ON (unsigned int) ;
 unsigned int OCFS2_RESV_TYPES ;

void ocfs2_resv_set_type(struct ocfs2_alloc_reservation *resv,
    unsigned int flags)
{
 BUG_ON(flags & ~OCFS2_RESV_TYPES);

 resv->r_flags |= flags;
}
