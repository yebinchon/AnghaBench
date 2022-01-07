
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlattr {int dummy; } ;
struct nf_conn {int dummy; } ;


 size_t CTA_LABELS ;
 size_t CTA_LABELS_MASK ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int nf_connlabels_replace (struct nf_conn*,void*,void const*,size_t) ;
 void* nla_data (struct nlattr const* const) ;
 size_t nla_len (struct nlattr const* const) ;

__attribute__((used)) static int
ctnetlink_attach_labels(struct nf_conn *ct, const struct nlattr * const cda[])
{
 return -EOPNOTSUPP;

}
