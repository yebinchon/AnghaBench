
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_tree {int dummy; } ;


 int prune_tree_chunks (struct audit_tree*,int) ;

__attribute__((used)) static void prune_one(struct audit_tree *victim)
{
 prune_tree_chunks(victim, 0);
}
