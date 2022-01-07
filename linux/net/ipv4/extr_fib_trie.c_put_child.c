
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct key_vector {scalar_t__ slen; int * tnode; } ;
struct TYPE_2__ {int full_children; } ;


 int BUG_ON (int) ;
 unsigned long child_length (struct key_vector*) ;
 int empty_child_dec (struct key_vector*) ;
 int empty_child_inc (struct key_vector*) ;
 struct key_vector* get_child (struct key_vector*,unsigned long) ;
 int rcu_assign_pointer (int ,struct key_vector*) ;
 TYPE_1__* tn_info (struct key_vector*) ;
 int tnode_full (struct key_vector*,struct key_vector*) ;

__attribute__((used)) static void put_child(struct key_vector *tn, unsigned long i,
        struct key_vector *n)
{
 struct key_vector *chi = get_child(tn, i);
 int isfull, wasfull;

 BUG_ON(i >= child_length(tn));


 if (!n && chi)
  empty_child_inc(tn);
 if (n && !chi)
  empty_child_dec(tn);


 wasfull = tnode_full(tn, chi);
 isfull = tnode_full(tn, n);

 if (wasfull && !isfull)
  tn_info(tn)->full_children--;
 else if (!wasfull && isfull)
  tn_info(tn)->full_children++;

 if (n && (tn->slen < n->slen))
  tn->slen = n->slen;

 rcu_assign_pointer(tn->tnode[i], n);
}
