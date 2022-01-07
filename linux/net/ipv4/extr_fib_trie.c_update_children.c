
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_vector {int dummy; } ;


 unsigned long child_length (struct key_vector*) ;
 struct key_vector* get_child (struct key_vector*,unsigned long) ;
 struct key_vector* node_parent (struct key_vector*) ;
 int node_set_parent (struct key_vector*,struct key_vector*) ;

__attribute__((used)) static void update_children(struct key_vector *tn)
{
 unsigned long i;


 for (i = child_length(tn); i;) {
  struct key_vector *inode = get_child(tn, --i);

  if (!inode)
   continue;





  if (node_parent(inode) == tn)
   update_children(inode);
  else
   node_set_parent(inode, tn);
 }
}
