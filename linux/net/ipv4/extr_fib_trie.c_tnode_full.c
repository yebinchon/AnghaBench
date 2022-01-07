
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_vector {scalar_t__ pos; scalar_t__ bits; } ;


 scalar_t__ IS_TNODE (struct key_vector*) ;

__attribute__((used)) static inline int tnode_full(struct key_vector *tn, struct key_vector *n)
{
 return n && ((n->pos + n->bits) == tn->pos) && IS_TNODE(n);
}
