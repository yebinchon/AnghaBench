
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbud_header {int first_chunks; int last_chunks; } ;


 int NCHUNKS ;

__attribute__((used)) static int num_free_chunks(struct zbud_header *zhdr)
{




 return NCHUNKS - zhdr->first_chunks - zhdr->last_chunks;
}
