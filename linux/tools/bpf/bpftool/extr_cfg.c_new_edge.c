
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_node {int flags; struct bb_node* dst; struct bb_node* src; } ;
struct bb_node {int dummy; } ;


 struct edge_node* calloc (int,int) ;
 int p_err (char*) ;

__attribute__((used)) static struct edge_node *new_edge(struct bb_node *src, struct bb_node *dst,
      int flags)
{
 struct edge_node *e;

 e = calloc(1, sizeof(*e));
 if (!e) {
  p_err("OOM when allocating edge node");
  return ((void*)0);
 }

 if (src)
  e->src = src;
 if (dst)
  e->dst = dst;

 e->flags |= flags;

 return e;
}
