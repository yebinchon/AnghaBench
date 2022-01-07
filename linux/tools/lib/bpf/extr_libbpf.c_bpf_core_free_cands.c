
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ids_vec {struct ids_vec* data; } ;


 int free (struct ids_vec*) ;

__attribute__((used)) static void bpf_core_free_cands(struct ids_vec *cand_ids)
{
 free(cand_ids->data);
 free(cand_ids);
}
