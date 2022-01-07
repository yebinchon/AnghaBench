
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nf_conn {int dummy; } ;


 int cond_resched () ;
 struct nf_conn* get_next_corpse (int (*) (struct nf_conn*,void*),void*,unsigned int*) ;
 int might_sleep () ;
 int nf_conntrack_generation ;
 int nf_ct_delete (struct nf_conn*,int ,int) ;
 int nf_ct_put (struct nf_conn*) ;
 unsigned int read_seqcount_begin (int *) ;
 int read_seqcount_retry (int *,unsigned int) ;

__attribute__((used)) static void nf_ct_iterate_cleanup(int (*iter)(struct nf_conn *i, void *data),
      void *data, u32 portid, int report)
{
 unsigned int bucket = 0, sequence;
 struct nf_conn *ct;

 might_sleep();

 for (;;) {
  sequence = read_seqcount_begin(&nf_conntrack_generation);

  while ((ct = get_next_corpse(iter, data, &bucket)) != ((void*)0)) {


   nf_ct_delete(ct, portid, report);
   nf_ct_put(ct);
   cond_resched();
  }

  if (!read_seqcount_retry(&nf_conntrack_generation, sequence))
   break;
  bucket = 0;
 }
}
