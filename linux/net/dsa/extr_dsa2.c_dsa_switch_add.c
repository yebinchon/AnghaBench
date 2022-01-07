
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch_tree {int dummy; } ;
struct dsa_switch {struct dsa_switch_tree* dst; } ;


 int dsa_tree_add_switch (struct dsa_switch_tree*,struct dsa_switch*) ;

__attribute__((used)) static int dsa_switch_add(struct dsa_switch *ds)
{
 struct dsa_switch_tree *dst = ds->dst;

 return dsa_tree_add_switch(dst, ds);
}
