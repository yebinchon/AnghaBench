
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ocfs2_local_alloc {scalar_t__* la_bitmap; int la_size; scalar_t__ la_bm_off; } ;
struct TYPE_3__ {scalar_t__ i_used; scalar_t__ i_total; } ;
struct TYPE_4__ {TYPE_1__ bitmap1; } ;
struct ocfs2_dinode {TYPE_2__ id1; } ;


 struct ocfs2_local_alloc* OCFS2_LOCAL_ALLOC (struct ocfs2_dinode*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void ocfs2_clear_local_alloc(struct ocfs2_dinode *alloc)
{
 struct ocfs2_local_alloc *la = OCFS2_LOCAL_ALLOC(alloc);
 int i;

 alloc->id1.bitmap1.i_total = 0;
 alloc->id1.bitmap1.i_used = 0;
 la->la_bm_off = 0;
 for(i = 0; i < le16_to_cpu(la->la_size); i++)
  la->la_bitmap[i] = 0;
}
