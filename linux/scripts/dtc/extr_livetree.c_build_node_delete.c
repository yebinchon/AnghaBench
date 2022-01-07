
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcpos {int dummy; } ;
struct node {int deleted; int srcpos; } ;


 int memset (struct node*,int ,int) ;
 int srcpos_copy (struct srcpos*) ;
 struct node* xmalloc (int) ;

struct node *build_node_delete(struct srcpos *srcpos)
{
 struct node *new = xmalloc(sizeof(*new));

 memset(new, 0, sizeof(*new));

 new->deleted = 1;
 new->srcpos = srcpos_copy(srcpos);

 return new;
}
