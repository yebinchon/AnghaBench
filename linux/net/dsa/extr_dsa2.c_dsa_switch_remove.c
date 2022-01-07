
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int dummy; } ;
struct dsa_switch {unsigned int index; struct dsa_switch_tree* dst; } ;


 int dsa_tree_remove_switch (struct dsa_switch_tree*,unsigned int) ;

__attribute__((used)) static void dsa_switch_remove(struct dsa_switch *ds)
{
 struct dsa_switch_tree *dst = ds->dst;
 unsigned int index = ds->index;

 dsa_tree_remove_switch(dst, index);
}
