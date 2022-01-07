
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int dummy; } ;
struct nlattr {int dummy; } ;


 int NET_DUMP_STR (char*,char*,char const*) ;
 int NET_DUMP_UINT (char*,char*,int) ;
 int NET_END_OBJECT_FINAL ;
 int NET_START_OBJECT ;
 size_t TCA_KIND ;
 size_t TCA_OPTIONS ;
 int do_bpf_filter_dump (struct nlattr*) ;
 int libbpf_nla_data (struct nlattr*) ;
 scalar_t__ strcmp (int ,char*) ;

int do_filter_dump(struct tcmsg *info, struct nlattr **tb, const char *kind,
     const char *devname, int ifindex)
{
 int ret = 0;

 if (tb[TCA_OPTIONS] &&
     strcmp(libbpf_nla_data(tb[TCA_KIND]), "bpf") == 0) {
  NET_START_OBJECT;
  if (devname[0] != '\0')
   NET_DUMP_STR("devname", "%s", devname);
  NET_DUMP_UINT("ifindex", "(%u)", ifindex);
  NET_DUMP_STR("kind", " %s", kind);
  ret = do_bpf_filter_dump(tb[TCA_OPTIONS]);
  NET_END_OBJECT_FINAL;
 }

 return ret;
}
