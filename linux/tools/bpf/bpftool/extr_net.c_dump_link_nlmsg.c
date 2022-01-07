
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct ip_devname_ifindex {int dummy; } ;
struct ifinfomsg {scalar_t__ ifi_index; } ;
struct bpf_netdev_t {scalar_t__ filter_idx; int used_len; int array_len; TYPE_1__* devices; } ;
struct TYPE_3__ {scalar_t__ ifindex; int devname; } ;


 int ENOMEM ;
 size_t IFLA_IFNAME ;
 int do_xdp_dump (struct ifinfomsg*,struct nlattr**) ;
 char* libbpf_nla_getattr_str (struct nlattr*) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int dump_link_nlmsg(void *cookie, void *msg, struct nlattr **tb)
{
 struct bpf_netdev_t *netinfo = cookie;
 struct ifinfomsg *ifinfo = msg;

 if (netinfo->filter_idx > 0 && netinfo->filter_idx != ifinfo->ifi_index)
  return 0;

 if (netinfo->used_len == netinfo->array_len) {
  netinfo->devices = realloc(netinfo->devices,
   (netinfo->array_len + 16) *
   sizeof(struct ip_devname_ifindex));
  if (!netinfo->devices)
   return -ENOMEM;

  netinfo->array_len += 16;
 }
 netinfo->devices[netinfo->used_len].ifindex = ifinfo->ifi_index;
 snprintf(netinfo->devices[netinfo->used_len].devname,
   sizeof(netinfo->devices[netinfo->used_len].devname),
   "%s",
   tb[IFLA_IFNAME]
    ? libbpf_nla_getattr_str(tb[IFLA_IFNAME])
    : "");
 netinfo->used_len++;

 return do_xdp_dump(ifinfo, tb);
}
