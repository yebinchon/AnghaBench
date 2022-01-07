
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct policydb {TYPE_1__* symtab; void* range_tr; void* filename_trans; int permissive_map; int policycaps; int filename_trans_ttypes; int te_avtab; } ;
struct TYPE_2__ {void* table; } ;


 int ENOMEM ;
 int SYM_NUM ;
 int avtab_init (int *) ;
 int cond_policydb_init (struct policydb*) ;
 int * destroy_f ;
 int ebitmap_init (int *) ;
 int filenametr_cmp ;
 int filenametr_hash ;
 void* hashtab_create (int ,int ,int) ;
 int hashtab_destroy (void*) ;
 int hashtab_map (void*,int ,int *) ;
 int memset (struct policydb*,int ,int) ;
 int rangetr_cmp ;
 int rangetr_hash ;
 int roles_init (struct policydb*) ;
 int symtab_init (TYPE_1__*,int ) ;
 int * symtab_sizes ;

__attribute__((used)) static int policydb_init(struct policydb *p)
{
 int i, rc;

 memset(p, 0, sizeof(*p));

 for (i = 0; i < SYM_NUM; i++) {
  rc = symtab_init(&p->symtab[i], symtab_sizes[i]);
  if (rc)
   goto out;
 }

 rc = avtab_init(&p->te_avtab);
 if (rc)
  goto out;

 rc = roles_init(p);
 if (rc)
  goto out;

 rc = cond_policydb_init(p);
 if (rc)
  goto out;

 p->filename_trans = hashtab_create(filenametr_hash, filenametr_cmp,
        (1 << 10));
 if (!p->filename_trans) {
  rc = -ENOMEM;
  goto out;
 }

 p->range_tr = hashtab_create(rangetr_hash, rangetr_cmp, 256);
 if (!p->range_tr) {
  rc = -ENOMEM;
  goto out;
 }

 ebitmap_init(&p->filename_trans_ttypes);
 ebitmap_init(&p->policycaps);
 ebitmap_init(&p->permissive_map);

 return 0;
out:
 hashtab_destroy(p->filename_trans);
 hashtab_destroy(p->range_tr);
 for (i = 0; i < SYM_NUM; i++) {
  hashtab_map(p->symtab[i].table, destroy_f[i], ((void*)0));
  hashtab_destroy(p->symtab[i].table);
 }
 return rc;
}
