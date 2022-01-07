
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ndmsg {int ndm_flags; int ndm_ifindex; scalar_t__ ndm_type; scalar_t__ ndm_state; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; } ;


 int EINVAL ;
 int ETH_ALEN ;


 int NDA_MAX ;


 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NTF_MASTER ;
 int NTF_SELF ;
 int fdb_vid_parse (struct nlattr*,int *,struct netlink_ext_ack*) ;
 int nda_policy ;
 int* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int valid_fdb_get_strict(const struct nlmsghdr *nlh,
    struct nlattr **tb, u8 *ndm_flags,
    int *br_idx, int *brport_idx, u8 **addr,
    u16 *vid, struct netlink_ext_ack *extack)
{
 struct ndmsg *ndm;
 int err, i;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ndm))) {
  NL_SET_ERR_MSG(extack, "Invalid header for fdb get request");
  return -EINVAL;
 }

 ndm = nlmsg_data(nlh);
 if (ndm->ndm_pad1 || ndm->ndm_pad2 || ndm->ndm_state ||
     ndm->ndm_type) {
  NL_SET_ERR_MSG(extack, "Invalid values in header for fdb get request");
  return -EINVAL;
 }

 if (ndm->ndm_flags & ~(NTF_MASTER | NTF_SELF)) {
  NL_SET_ERR_MSG(extack, "Invalid flags in header for fdb get request");
  return -EINVAL;
 }

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(struct ndmsg), tb,
         NDA_MAX, nda_policy, extack);
 if (err < 0)
  return err;

 *ndm_flags = ndm->ndm_flags;
 *brport_idx = ndm->ndm_ifindex;
 for (i = 0; i <= NDA_MAX; ++i) {
  if (!tb[i])
   continue;

  switch (i) {
  case 130:
   *br_idx = nla_get_u32(tb[i]);
   break;
  case 131:
   if (nla_len(tb[i]) != ETH_ALEN) {
    NL_SET_ERR_MSG(extack, "Invalid address in fdb get request");
    return -EINVAL;
   }
   *addr = nla_data(tb[i]);
   break;
  case 129:
   err = fdb_vid_parse(tb[i], vid, extack);
   if (err)
    return err;
   break;
  case 128:
   break;
  default:
   NL_SET_ERR_MSG(extack, "Unsupported attribute in fdb get request");
   return -EINVAL;
  }
 }

 return 0;
}
