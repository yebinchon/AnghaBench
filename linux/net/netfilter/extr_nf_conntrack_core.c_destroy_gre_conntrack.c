
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conn {struct nf_conn* master; } ;


 int nf_ct_gre_keymap_destroy (struct nf_conn*) ;

__attribute__((used)) static void destroy_gre_conntrack(struct nf_conn *ct)
{






}
