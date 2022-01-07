
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int kind; } ;
struct tcf_meta_hdr {TYPE_3__ right; TYPE_3__ left; } ;
struct tcf_ematch {int datalen; unsigned long data; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int hdr; } ;
struct meta_match {TYPE_1__ rvalue; TYPE_1__ lvalue; } ;


 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 size_t TCA_EM_META_HDR ;
 size_t TCA_EM_META_LVALUE ;
 int TCA_EM_META_MAX ;
 size_t TCA_EM_META_RVALUE ;
 scalar_t__ TCF_META_ID (int ) ;
 scalar_t__ TCF_META_ID_MAX ;
 scalar_t__ TCF_META_TYPE (int ) ;
 scalar_t__ TCF_META_TYPE_MAX ;
 struct meta_match* kzalloc (int,int ) ;
 int memcpy (int *,TYPE_3__*,int) ;
 scalar_t__ meta_change_data (TYPE_1__*,struct nlattr*) ;
 int meta_delete (struct meta_match*) ;
 int meta_is_supported (TYPE_1__*) ;
 int meta_policy ;
 struct tcf_meta_hdr* nla_data (struct nlattr*) ;
 int nla_parse_deprecated (struct nlattr**,int ,void*,int,int ,int *) ;

__attribute__((used)) static int em_meta_change(struct net *net, void *data, int len,
     struct tcf_ematch *m)
{
 int err;
 struct nlattr *tb[TCA_EM_META_MAX + 1];
 struct tcf_meta_hdr *hdr;
 struct meta_match *meta = ((void*)0);

 err = nla_parse_deprecated(tb, TCA_EM_META_MAX, data, len,
       meta_policy, ((void*)0));
 if (err < 0)
  goto errout;

 err = -EINVAL;
 if (tb[TCA_EM_META_HDR] == ((void*)0))
  goto errout;
 hdr = nla_data(tb[TCA_EM_META_HDR]);

 if (TCF_META_TYPE(hdr->left.kind) != TCF_META_TYPE(hdr->right.kind) ||
     TCF_META_TYPE(hdr->left.kind) > TCF_META_TYPE_MAX ||
     TCF_META_ID(hdr->left.kind) > TCF_META_ID_MAX ||
     TCF_META_ID(hdr->right.kind) > TCF_META_ID_MAX)
  goto errout;

 meta = kzalloc(sizeof(*meta), GFP_KERNEL);
 if (meta == ((void*)0)) {
  err = -ENOMEM;
  goto errout;
 }

 memcpy(&meta->lvalue.hdr, &hdr->left, sizeof(hdr->left));
 memcpy(&meta->rvalue.hdr, &hdr->right, sizeof(hdr->right));

 if (!meta_is_supported(&meta->lvalue) ||
     !meta_is_supported(&meta->rvalue)) {
  err = -EOPNOTSUPP;
  goto errout;
 }

 if (meta_change_data(&meta->lvalue, tb[TCA_EM_META_LVALUE]) < 0 ||
     meta_change_data(&meta->rvalue, tb[TCA_EM_META_RVALUE]) < 0)
  goto errout;

 m->datalen = sizeof(*meta);
 m->data = (unsigned long) meta;

 err = 0;
errout:
 if (err && meta)
  meta_delete(meta);
 return err;
}
