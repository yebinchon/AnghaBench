
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct aa_ext {char* pos; } ;
typedef int __le32 ;


 int AA_BLOB ;
 int get_unaligned (int *) ;
 scalar_t__ inbounds (struct aa_ext*,size_t) ;
 size_t le32_to_cpu (int ) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char const*) ;

__attribute__((used)) static size_t unpack_blob(struct aa_ext *e, char **blob, const char *name)
{
 void *pos = e->pos;

 if (unpack_nameX(e, AA_BLOB, name)) {
  u32 size;
  if (!inbounds(e, sizeof(u32)))
   goto fail;
  size = le32_to_cpu(get_unaligned((__le32 *) e->pos));
  e->pos += sizeof(u32);
  if (inbounds(e, (size_t) size)) {
   *blob = e->pos;
   e->pos += size;
   return size;
  }
 }

fail:
 e->pos = pos;
 return 0;
}
