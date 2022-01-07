
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct xt_sctp_info {int chunk_match_type; int flag_count; int chunkmap; struct xt_sctp_flag_info* flag_info; } ;
struct xt_sctp_flag_info {int dummy; } ;
struct sk_buff {unsigned int len; } ;
struct sctp_chunkhdr {scalar_t__ length; int flags; int type; } ;
typedef int _sch ;


 int SCTP_CHUNKMAP_CLEAR (int *,int ) ;
 int SCTP_CHUNKMAP_COPY (int *,int ) ;
 int SCTP_CHUNKMAP_IS_CLEAR (int *) ;
 scalar_t__ SCTP_CHUNKMAP_IS_SET (int ,int ) ;



 scalar_t__ SCTP_PAD4 (int ) ;
 int htons (scalar_t__) ;
 int match_flags (struct xt_sctp_flag_info const*,int,int ,int ) ;
 int ntohs (scalar_t__) ;
 int pr_debug (char*,...) ;
 struct sctp_chunkhdr* skb_header_pointer (struct sk_buff const*,unsigned int,int,struct sctp_chunkhdr*) ;

__attribute__((used)) static inline bool
match_packet(const struct sk_buff *skb,
      unsigned int offset,
      const struct xt_sctp_info *info,
      bool *hotdrop)
{
 u_int32_t chunkmapcopy[256 / sizeof (u_int32_t)];
 const struct sctp_chunkhdr *sch;
 struct sctp_chunkhdr _sch;
 int chunk_match_type = info->chunk_match_type;
 const struct xt_sctp_flag_info *flag_info = info->flag_info;
 int flag_count = info->flag_count;





 if (chunk_match_type == 130)
  SCTP_CHUNKMAP_COPY(chunkmapcopy, info->chunkmap);

 do {
  sch = skb_header_pointer(skb, offset, sizeof(_sch), &_sch);
  if (sch == ((void*)0) || sch->length == 0) {
   pr_debug("Dropping invalid SCTP packet.\n");
   *hotdrop = 1;
   return 0;
  }






  offset += SCTP_PAD4(ntohs(sch->length));

  pr_debug("skb->len: %d\toffset: %d\n", skb->len, offset);

  if (SCTP_CHUNKMAP_IS_SET(info->chunkmap, sch->type)) {
   switch (chunk_match_type) {
   case 129:
    if (match_flags(flag_info, flag_count,
     sch->type, sch->flags)) {
     return 1;
    }
    break;

   case 130:
    if (match_flags(flag_info, flag_count,
        sch->type, sch->flags))
     SCTP_CHUNKMAP_CLEAR(chunkmapcopy, sch->type);
    break;

   case 128:
    if (!match_flags(flag_info, flag_count,
        sch->type, sch->flags))
     return 0;
    break;
   }
  } else {
   switch (chunk_match_type) {
   case 128:
    return 0;
   }
  }
 } while (offset < skb->len);

 switch (chunk_match_type) {
 case 130:
  return SCTP_CHUNKMAP_IS_CLEAR(chunkmapcopy);
 case 129:
  return 0;
 case 128:
  return 1;
 }


 return 0;
}
