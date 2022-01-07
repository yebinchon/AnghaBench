
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct nf_ct_seqadj {void* offset_after; void* offset_before; void* correction_pos; } ;


 size_t CTA_SEQADJ_CORRECTION_POS ;
 int CTA_SEQADJ_MAX ;
 size_t CTA_SEQADJ_OFFSET_AFTER ;
 size_t CTA_SEQADJ_OFFSET_BEFORE ;
 int EINVAL ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr const* const,int ,int *) ;
 void* ntohl (int ) ;
 int seqadj_policy ;

__attribute__((used)) static int change_seq_adj(struct nf_ct_seqadj *seq,
     const struct nlattr * const attr)
{
 int err;
 struct nlattr *cda[CTA_SEQADJ_MAX+1];

 err = nla_parse_nested_deprecated(cda, CTA_SEQADJ_MAX, attr,
       seqadj_policy, ((void*)0));
 if (err < 0)
  return err;

 if (!cda[CTA_SEQADJ_CORRECTION_POS])
  return -EINVAL;

 seq->correction_pos =
  ntohl(nla_get_be32(cda[CTA_SEQADJ_CORRECTION_POS]));

 if (!cda[CTA_SEQADJ_OFFSET_BEFORE])
  return -EINVAL;

 seq->offset_before =
  ntohl(nla_get_be32(cda[CTA_SEQADJ_OFFSET_BEFORE]));

 if (!cda[CTA_SEQADJ_OFFSET_AFTER])
  return -EINVAL;

 seq->offset_after =
  ntohl(nla_get_be32(cda[CTA_SEQADJ_OFFSET_AFTER]));

 return 0;
}
