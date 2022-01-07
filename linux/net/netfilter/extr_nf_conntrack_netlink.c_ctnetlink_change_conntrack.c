
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_conn {int dummy; } ;


 size_t CTA_HELP ;
 size_t CTA_LABELS ;
 size_t CTA_MARK ;
 size_t CTA_NAT_DST ;
 size_t CTA_NAT_SRC ;
 size_t CTA_PROTOINFO ;
 size_t CTA_SEQ_ADJ_ORIG ;
 size_t CTA_SEQ_ADJ_REPLY ;
 size_t CTA_STATUS ;
 size_t CTA_SYNPROXY ;
 size_t CTA_TIMEOUT ;
 size_t CTA_TUPLE_MASTER ;
 int EOPNOTSUPP ;
 int ctnetlink_attach_labels (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_helper (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_mark (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_protoinfo (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_seq_adj (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_status (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_synproxy (struct nf_conn*,struct nlattr const* const*) ;
 int ctnetlink_change_timeout (struct nf_conn*,struct nlattr const* const*) ;

__attribute__((used)) static int
ctnetlink_change_conntrack(struct nf_conn *ct,
      const struct nlattr * const cda[])
{
 int err;


 if (cda[CTA_NAT_SRC] || cda[CTA_NAT_DST] || cda[CTA_TUPLE_MASTER])
  return -EOPNOTSUPP;

 if (cda[CTA_HELP]) {
  err = ctnetlink_change_helper(ct, cda);
  if (err < 0)
   return err;
 }

 if (cda[CTA_TIMEOUT]) {
  err = ctnetlink_change_timeout(ct, cda);
  if (err < 0)
   return err;
 }

 if (cda[CTA_STATUS]) {
  err = ctnetlink_change_status(ct, cda);
  if (err < 0)
   return err;
 }

 if (cda[CTA_PROTOINFO]) {
  err = ctnetlink_change_protoinfo(ct, cda);
  if (err < 0)
   return err;
 }






 if (cda[CTA_SEQ_ADJ_ORIG] || cda[CTA_SEQ_ADJ_REPLY]) {
  err = ctnetlink_change_seq_adj(ct, cda);
  if (err < 0)
   return err;
 }

 if (cda[CTA_SYNPROXY]) {
  err = ctnetlink_change_synproxy(ct, cda);
  if (err < 0)
   return err;
 }

 if (cda[CTA_LABELS]) {
  err = ctnetlink_attach_labels(ct, cda);
  if (err < 0)
   return err;
 }

 return 0;
}
