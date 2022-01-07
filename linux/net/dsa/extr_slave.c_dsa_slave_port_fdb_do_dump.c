
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct nlmsghdr {int dummy; } ;
struct ndmsg {int ndm_state; int ndm_ifindex; scalar_t__ ndm_type; int ndm_flags; scalar_t__ ndm_pad2; scalar_t__ ndm_pad1; int ndm_family; } ;
struct dsa_slave_dump_ctx {scalar_t__ idx; int skb; TYPE_3__* dev; TYPE_2__* cb; } ;
struct TYPE_8__ {int portid; } ;
struct TYPE_7__ {int ifindex; } ;
struct TYPE_6__ {scalar_t__* args; TYPE_1__* nlh; int skb; } ;
struct TYPE_5__ {int nlmsg_seq; } ;


 int AF_BRIDGE ;
 int EMSGSIZE ;
 int ETH_ALEN ;
 int NDA_LLADDR ;
 int NDA_VLAN ;
 TYPE_4__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int NTF_SELF ;
 int NUD_NOARP ;
 int NUD_REACHABLE ;
 int RTM_NEWNEIGH ;
 scalar_t__ nla_put (int ,int ,int ,unsigned char const*) ;
 scalar_t__ nla_put_u16 (int ,int ,scalar_t__) ;
 int nlmsg_cancel (int ,struct nlmsghdr*) ;
 struct ndmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (int ,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (int ,int ,int ,int ,int,int ) ;

__attribute__((used)) static int
dsa_slave_port_fdb_do_dump(const unsigned char *addr, u16 vid,
      bool is_static, void *data)
{
 struct dsa_slave_dump_ctx *dump = data;
 u32 portid = NETLINK_CB(dump->cb->skb).portid;
 u32 seq = dump->cb->nlh->nlmsg_seq;
 struct nlmsghdr *nlh;
 struct ndmsg *ndm;

 if (dump->idx < dump->cb->args[2])
  goto skip;

 nlh = nlmsg_put(dump->skb, portid, seq, RTM_NEWNEIGH,
   sizeof(*ndm), NLM_F_MULTI);
 if (!nlh)
  return -EMSGSIZE;

 ndm = nlmsg_data(nlh);
 ndm->ndm_family = AF_BRIDGE;
 ndm->ndm_pad1 = 0;
 ndm->ndm_pad2 = 0;
 ndm->ndm_flags = NTF_SELF;
 ndm->ndm_type = 0;
 ndm->ndm_ifindex = dump->dev->ifindex;
 ndm->ndm_state = is_static ? NUD_NOARP : NUD_REACHABLE;

 if (nla_put(dump->skb, NDA_LLADDR, ETH_ALEN, addr))
  goto nla_put_failure;

 if (vid && nla_put_u16(dump->skb, NDA_VLAN, vid))
  goto nla_put_failure;

 nlmsg_end(dump->skb, nlh);

skip:
 dump->idx++;
 return 0;

nla_put_failure:
 nlmsg_cancel(dump->skb, nlh);
 return -EMSGSIZE;
}
