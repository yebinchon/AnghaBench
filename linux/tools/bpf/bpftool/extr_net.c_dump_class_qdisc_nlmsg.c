
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tcmsg {scalar_t__ tcm_handle; } ;
struct tc_kind_handle {int dummy; } ;
struct nlattr {int dummy; } ;
struct bpf_tcinfo_t {int used_len; int array_len; TYPE_1__* handle_array; scalar_t__ is_qdisc; } ;
struct TYPE_3__ {scalar_t__ handle; int kind; } ;


 int ENOMEM ;
 size_t TCA_KIND ;
 int libbpf_nla_data (struct nlattr*) ;
 char* libbpf_nla_getattr_str (struct nlattr*) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int snprintf (int ,int,char*,char*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static int dump_class_qdisc_nlmsg(void *cookie, void *msg, struct nlattr **tb)
{
 struct bpf_tcinfo_t *tcinfo = cookie;
 struct tcmsg *info = msg;

 if (tcinfo->is_qdisc) {

  if (tb[TCA_KIND] &&
      strcmp(libbpf_nla_data(tb[TCA_KIND]), "clsact") == 0)
   return 0;
  if (info->tcm_handle == 0)
   return 0;
 }

 if (tcinfo->used_len == tcinfo->array_len) {
  tcinfo->handle_array = realloc(tcinfo->handle_array,
   (tcinfo->array_len + 16) * sizeof(struct tc_kind_handle));
  if (!tcinfo->handle_array)
   return -ENOMEM;

  tcinfo->array_len += 16;
 }
 tcinfo->handle_array[tcinfo->used_len].handle = info->tcm_handle;
 snprintf(tcinfo->handle_array[tcinfo->used_len].kind,
   sizeof(tcinfo->handle_array[tcinfo->used_len].kind),
   "%s",
   tb[TCA_KIND]
    ? libbpf_nla_getattr_str(tb[TCA_KIND])
    : "unknown");
 tcinfo->used_len++;

 return 0;
}
