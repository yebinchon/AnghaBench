
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct aa_ext {char* pos; } ;
typedef int __le16 ;


 int get_unaligned (int *) ;
 int inbounds (struct aa_ext*,size_t) ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static size_t unpack_u16_chunk(struct aa_ext *e, char **chunk)
{
 size_t size = 0;
 void *pos = e->pos;

 if (!inbounds(e, sizeof(u16)))
  goto fail;
 size = le16_to_cpu(get_unaligned((__le16 *) e->pos));
 e->pos += sizeof(__le16);
 if (!inbounds(e, size))
  goto fail;
 *chunk = e->pos;
 e->pos += size;
 return size;

fail:
 e->pos = pos;
 return 0;
}
