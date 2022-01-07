
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct aa_ext {void* pos; } ;
typedef int __le16 ;


 int AA_ARRAY ;
 int get_unaligned (int *) ;
 int inbounds (struct aa_ext*,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char const*) ;

__attribute__((used)) static size_t unpack_array(struct aa_ext *e, const char *name)
{
 void *pos = e->pos;

 if (unpack_nameX(e, AA_ARRAY, name)) {
  int size;
  if (!inbounds(e, sizeof(u16)))
   goto fail;
  size = (int)le16_to_cpu(get_unaligned((__le16 *) e->pos));
  e->pos += sizeof(u16);
  return size;
 }

fail:
 e->pos = pos;
 return 0;
}
