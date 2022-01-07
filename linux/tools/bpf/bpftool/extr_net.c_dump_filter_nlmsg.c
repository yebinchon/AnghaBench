
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int dummy; } ;
struct nlattr {int dummy; } ;
struct bpf_filter_t {int ifindex; int devname; int kind; } ;


 int do_filter_dump (struct tcmsg*,struct nlattr**,int ,int ,int ) ;

__attribute__((used)) static int dump_filter_nlmsg(void *cookie, void *msg, struct nlattr **tb)
{
 const struct bpf_filter_t *filter_info = cookie;

 return do_filter_dump((struct tcmsg *)msg, tb, filter_info->kind,
         filter_info->devname, filter_info->ifindex);
}
