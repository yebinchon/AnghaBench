
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z3fold_header {unsigned short start_middle; unsigned short middle_chunks; } ;


 unsigned short CHUNK_SHIFT ;
 void* memmove (void*,void*,unsigned short) ;

__attribute__((used)) static inline void *mchunk_memmove(struct z3fold_header *zhdr,
    unsigned short dst_chunk)
{
 void *beg = zhdr;
 return memmove(beg + (dst_chunk << CHUNK_SHIFT),
         beg + (zhdr->start_middle << CHUNK_SHIFT),
         zhdr->middle_chunks << CHUNK_SHIFT);
}
