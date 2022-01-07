
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint16_t ;
struct sk_buff {int len; } ;
struct sadb_msg {int dummy; } ;
struct sadb_ext {int sadb_ext_len; size_t sadb_ext_type; } ;


 int EINVAL ;





 size_t SADB_EXT_MAX ;
 size_t SADB_EXT_RESERVED ;


 scalar_t__* sadb_ext_min_len ;
 int verify_address_len (char const*) ;
 int verify_key_len (char const*) ;
 int verify_sec_ctx_len (char const*) ;

__attribute__((used)) static int parse_exthdrs(struct sk_buff *skb, const struct sadb_msg *hdr, void **ext_hdrs)
{
 const char *p = (char *) hdr;
 int len = skb->len;

 len -= sizeof(*hdr);
 p += sizeof(*hdr);
 while (len > 0) {
  const struct sadb_ext *ehdr = (const struct sadb_ext *) p;
  uint16_t ext_type;
  int ext_len;

  if (len < sizeof(*ehdr))
   return -EINVAL;

  ext_len = ehdr->sadb_ext_len;
  ext_len *= sizeof(uint64_t);
  ext_type = ehdr->sadb_ext_type;
  if (ext_len < sizeof(uint64_t) ||
      ext_len > len ||
      ext_type == SADB_EXT_RESERVED)
   return -EINVAL;

  if (ext_type <= SADB_EXT_MAX) {
   int min = (int) sadb_ext_min_len[ext_type];
   if (ext_len < min)
    return -EINVAL;
   if (ext_hdrs[ext_type-1] != ((void*)0))
    return -EINVAL;
   switch (ext_type) {
   case 132:
   case 134:
   case 133:
   case 129:
    if (verify_address_len(p))
     return -EINVAL;
    break;
   case 128:
    if (verify_sec_ctx_len(p))
     return -EINVAL;
    break;
   case 131:
   case 130:
    if (verify_key_len(p))
     return -EINVAL;
    break;
   default:
    break;
   }
   ext_hdrs[ext_type-1] = (void *) p;
  }
  p += ext_len;
  len -= ext_len;
 }

 return 0;
}
