
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnode {int flags; } ;


 int FNODE_dir ;

__attribute__((used)) static inline bool fnode_is_dir(struct fnode *p)
{
 return (p->flags & FNODE_dir) != 0;
}
