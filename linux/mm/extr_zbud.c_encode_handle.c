
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zbud_header {int last_chunks; } ;
typedef enum buddy { ____Placeholder_buddy } buddy ;


 int CHUNK_SHIFT ;
 int FIRST ;
 int PAGE_SIZE ;
 scalar_t__ ZHDR_SIZE_ALIGNED ;

__attribute__((used)) static unsigned long encode_handle(struct zbud_header *zhdr, enum buddy bud)
{
 unsigned long handle;







 handle = (unsigned long)zhdr;
 if (bud == FIRST)

  handle += ZHDR_SIZE_ALIGNED;
 else
  handle += PAGE_SIZE - (zhdr->last_chunks << CHUNK_SHIFT);
 return handle;
}
