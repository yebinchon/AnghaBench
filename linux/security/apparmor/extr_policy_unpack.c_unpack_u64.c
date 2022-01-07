
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct aa_ext {void* pos; } ;
typedef int __le64 ;


 int AA_U64 ;
 int get_unaligned (int *) ;
 int inbounds (struct aa_ext*,int) ;
 int le64_to_cpu (int ) ;
 scalar_t__ unpack_nameX (struct aa_ext*,int ,char const*) ;

__attribute__((used)) static bool unpack_u64(struct aa_ext *e, u64 *data, const char *name)
{
 void *pos = e->pos;

 if (unpack_nameX(e, AA_U64, name)) {
  if (!inbounds(e, sizeof(u64)))
   goto fail;
  if (data)
   *data = le64_to_cpu(get_unaligned((__le64 *) e->pos));
  e->pos += sizeof(u64);
  return 1;
 }

fail:
 e->pos = pos;
 return 0;
}
