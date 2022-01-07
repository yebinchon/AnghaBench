
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_extent_tree {TYPE_1__* et_ops; } ;
struct ocfs2_extent_rec {int dummy; } ;
struct TYPE_2__ {int (* eo_extent_map_insert ) (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*) ;} ;


 int stub1 (struct ocfs2_extent_tree*,struct ocfs2_extent_rec*) ;

__attribute__((used)) static inline void ocfs2_et_extent_map_insert(struct ocfs2_extent_tree *et,
           struct ocfs2_extent_rec *rec)
{
 if (et->et_ops->eo_extent_map_insert)
  et->et_ops->eo_extent_map_insert(et, rec);
}
