
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct symbol {int dummy; } ;
struct call_path {int in_kernel; int children; int rb_node; scalar_t__ db_id; int ip; struct symbol* sym; struct call_path* parent; } ;


 int RB_CLEAR_NODE (int *) ;
 int RB_ROOT ;

__attribute__((used)) static void call_path__init(struct call_path *cp, struct call_path *parent,
       struct symbol *sym, u64 ip, bool in_kernel)
{
 cp->parent = parent;
 cp->sym = sym;
 cp->ip = sym ? 0 : ip;
 cp->db_id = 0;
 cp->in_kernel = in_kernel;
 RB_CLEAR_NODE(&cp->rb_node);
 cp->children = RB_ROOT;
}
