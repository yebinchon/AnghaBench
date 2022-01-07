
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {scalar_t__ middle_chunks; int first_chunks; int start_middle; int last_chunks; } ;


 int NCHUNKS ;
 int TOTAL_CHUNKS ;
 int ZHDR_CHUNKS ;
 int max (int,int) ;

__attribute__((used)) static int num_free_chunks(struct z3fold_header *zhdr)
{
 int nfree;





 if (zhdr->middle_chunks != 0) {
  int nfree_before = zhdr->first_chunks ?
   0 : zhdr->start_middle - ZHDR_CHUNKS;
  int nfree_after = zhdr->last_chunks ?
   0 : TOTAL_CHUNKS -
    (zhdr->start_middle + zhdr->middle_chunks);
  nfree = max(nfree_before, nfree_after);
 } else
  nfree = NCHUNKS - zhdr->first_chunks - zhdr->last_chunks;
 return nfree;
}
