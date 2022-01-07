
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_alloc_reservation {int r_lru; } ;


 int INIT_LIST_HEAD (int *) ;
 int memset (struct ocfs2_alloc_reservation*,int ,int) ;

void ocfs2_resv_init_once(struct ocfs2_alloc_reservation *resv)
{
 memset(resv, 0, sizeof(*resv));
 INIT_LIST_HEAD(&resv->r_lru);
}
