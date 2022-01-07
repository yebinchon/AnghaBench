
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnode {int flags; } ;


 int FNODE_anode ;

__attribute__((used)) static inline bool fnode_in_anode(struct fnode *p)
{
 return (p->flags & FNODE_anode) != 0;
}
