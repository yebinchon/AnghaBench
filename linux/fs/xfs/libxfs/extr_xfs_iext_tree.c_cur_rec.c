
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_iext_rec {int dummy; } ;
struct xfs_iext_cursor {size_t pos; TYPE_1__* leaf; } ;
struct TYPE_2__ {struct xfs_iext_rec* recs; } ;



__attribute__((used)) static inline struct xfs_iext_rec *cur_rec(struct xfs_iext_cursor *cur)
{
 return &cur->leaf->recs[cur->pos];
}
