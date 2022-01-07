
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct aa_ext {void* pos; } ;


 int AA_U8 ;
 int get_unaligned (int *) ;
 int inbounds (struct aa_ext*,int) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char const*) ;

__attribute__((used)) static bool unpack_u8(struct aa_ext *e, u8 *data, const char *name)
{
 void *pos = e->pos;

 if (unpack_nameX(e, AA_U8, name)) {
  if (!inbounds(e, sizeof(u8)))
   goto fail;
  if (data)
   *data = get_unaligned((u8 *)e->pos);
  e->pos += sizeof(u8);
  return 1;
 }

fail:
 e->pos = pos;
 return 0;
}
