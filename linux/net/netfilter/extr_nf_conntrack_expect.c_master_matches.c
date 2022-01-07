
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_conntrack_expect {scalar_t__ master; } ;


 unsigned int NF_CT_EXP_F_SKIP_MASTER ;

__attribute__((used)) static bool master_matches(const struct nf_conntrack_expect *a,
      const struct nf_conntrack_expect *b,
      unsigned int flags)
{
 if (flags & NF_CT_EXP_F_SKIP_MASTER)
  return 1;

 return a->master == b->master;
}
