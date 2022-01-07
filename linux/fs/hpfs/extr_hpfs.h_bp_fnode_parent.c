
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bplus_header {int flags; } ;


 int BP_fnode_parent ;

__attribute__((used)) static inline bool bp_fnode_parent(struct bplus_header *bp)
{
 return bp->flags & BP_fnode_parent;
}
