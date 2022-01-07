
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct mpls_shim_hdr {int dummy; } ;
struct mpls_entry_decoded {int bos; int label; scalar_t__ tc; scalar_t__ ttl; } ;


 int EINVAL ;

 int NL_SET_BAD_ATTR (struct netlink_ext_ack*,struct nlattr const*) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NL_SET_ERR_MSG_ATTR (struct netlink_ext_ack*,struct nlattr const*,char*) ;
 struct mpls_entry_decoded mpls_entry_decode (struct mpls_shim_hdr*) ;
 struct mpls_shim_hdr* nla_data (struct nlattr const*) ;
 unsigned int nla_len (struct nlattr const*) ;

int nla_get_labels(const struct nlattr *nla, u8 max_labels, u8 *labels,
     u32 label[], struct netlink_ext_ack *extack)
{
 unsigned len = nla_len(nla);
 struct mpls_shim_hdr *nla_label;
 u8 nla_labels;
 bool bos;
 int i;




 if (len & 3 || len / 4 > 255) {
  NL_SET_ERR_MSG_ATTR(extack, nla,
        "Invalid length for labels attribute");
  return -EINVAL;
 }


 nla_labels = len/4;
 if (nla_labels > max_labels) {
  NL_SET_ERR_MSG(extack, "Too many labels");
  return -EINVAL;
 }


 if (!label)
  goto out;

 nla_label = nla_data(nla);
 bos = 1;
 for (i = nla_labels - 1; i >= 0; i--, bos = 0) {
  struct mpls_entry_decoded dec;
  dec = mpls_entry_decode(nla_label + i);




  if (dec.ttl) {
   NL_SET_ERR_MSG_ATTR(extack, nla,
         "TTL in label must be 0");
   return -EINVAL;
  }

  if (dec.tc) {
   NL_SET_ERR_MSG_ATTR(extack, nla,
         "Traffic class in label must be 0");
   return -EINVAL;
  }

  if (dec.bos != bos) {
   NL_SET_BAD_ATTR(extack, nla);
   if (bos) {
    NL_SET_ERR_MSG(extack,
            "BOS bit must be set in first label");
   } else {
    NL_SET_ERR_MSG(extack,
            "BOS bit can only be set in first label");
   }
   return -EINVAL;
  }

  switch (dec.label) {
  case 128:




   NL_SET_ERR_MSG_ATTR(extack, nla,
         "Implicit NULL Label (3) can not be used in encapsulation");
   return -EINVAL;
  }

  label[i] = dec.label;
 }
out:
 *labels = nla_labels;
 return 0;
}
