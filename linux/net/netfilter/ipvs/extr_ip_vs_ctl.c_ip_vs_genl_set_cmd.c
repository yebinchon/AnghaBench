
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int sk; } ;
struct netns_ipvs {scalar_t__ sync_state; } ;
struct net {int dummy; } ;
struct ip_vs_service_user_kern {int dummy; } ;
struct ip_vs_service {scalar_t__ af; } ;
struct ip_vs_dest_user_kern {scalar_t__ af; int conn_flags; } ;
struct genl_info {int * attrs; TYPE_1__* genlhdr; } ;
struct TYPE_2__ {int cmd; } ;


 int EAFNOSUPPORT ;
 int EEXIST ;
 int EINVAL ;
 int ESRCH ;
 size_t IPVS_CMD_ATTR_DEST ;
 size_t IPVS_CMD_ATTR_SERVICE ;


 int IPVS_CMD_FLUSH ;


 int IPVS_CMD_SET_CONFIG ;




 int __ip_vs_mutex ;
 int ip_vs_add_dest (struct ip_vs_service*,struct ip_vs_dest_user_kern*) ;
 int ip_vs_add_service (struct netns_ipvs*,struct ip_vs_service_user_kern*,struct ip_vs_service**) ;
 int ip_vs_del_dest (struct ip_vs_service*,struct ip_vs_dest_user_kern*) ;
 int ip_vs_del_service (struct ip_vs_service*) ;
 int ip_vs_edit_dest (struct ip_vs_service*,struct ip_vs_dest_user_kern*) ;
 int ip_vs_edit_service (struct ip_vs_service*,struct ip_vs_service_user_kern*) ;
 int ip_vs_flush (struct netns_ipvs*,int) ;
 int ip_vs_genl_parse_dest (struct ip_vs_dest_user_kern*,int ,int) ;
 int ip_vs_genl_parse_service (struct netns_ipvs*,struct ip_vs_service_user_kern*,int ,int,struct ip_vs_service**) ;
 int ip_vs_genl_set_config (struct netns_ipvs*,int *) ;
 int ip_vs_is_af_valid (scalar_t__) ;
 int ip_vs_zero_all (struct netns_ipvs*) ;
 int ip_vs_zero_service (struct ip_vs_service*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct netns_ipvs* net_ipvs (struct net*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int ip_vs_genl_set_cmd(struct sk_buff *skb, struct genl_info *info)
{
 bool need_full_svc = 0, need_full_dest = 0;
 struct ip_vs_service *svc = ((void*)0);
 struct ip_vs_service_user_kern usvc;
 struct ip_vs_dest_user_kern udest;
 int ret = 0, cmd;
 struct net *net = sock_net(skb->sk);
 struct netns_ipvs *ipvs = net_ipvs(net);

 cmd = info->genlhdr->cmd;

 mutex_lock(&__ip_vs_mutex);

 if (cmd == IPVS_CMD_FLUSH) {
  ret = ip_vs_flush(ipvs, 0);
  goto out;
 } else if (cmd == IPVS_CMD_SET_CONFIG) {
  ret = ip_vs_genl_set_config(ipvs, info->attrs);
  goto out;
 } else if (cmd == 129 &&
     !info->attrs[IPVS_CMD_ATTR_SERVICE]) {
  ret = ip_vs_zero_all(ipvs);
  goto out;
 }




 if (cmd == 132 || cmd == 130)
  need_full_svc = 1;

 ret = ip_vs_genl_parse_service(ipvs, &usvc,
           info->attrs[IPVS_CMD_ATTR_SERVICE],
           need_full_svc, &svc);
 if (ret)
  goto out;


 if ((cmd != 132) && (svc == ((void*)0))) {
  ret = -ESRCH;
  goto out;
 }




 if (cmd == 133 || cmd == 131 ||
     cmd == 135) {
  if (cmd != 135)
   need_full_dest = 1;

  ret = ip_vs_genl_parse_dest(&udest,
         info->attrs[IPVS_CMD_ATTR_DEST],
         need_full_dest);
  if (ret)
   goto out;







  if (udest.af == 0)
   udest.af = svc->af;

  if (!ip_vs_is_af_valid(udest.af)) {
   ret = -EAFNOSUPPORT;
   goto out;
  }

  if (udest.af != svc->af && cmd != 135) {



   if (ipvs->sync_state) {
    ret = -EINVAL;
    goto out;
   }


   switch (udest.conn_flags) {
   case 128:

    break;
   default:
    ret = -EINVAL;
    goto out;
   }
  }
 }

 switch (cmd) {
 case 132:
  if (svc == ((void*)0))
   ret = ip_vs_add_service(ipvs, &usvc, &svc);
  else
   ret = -EEXIST;
  break;
 case 130:
  ret = ip_vs_edit_service(svc, &usvc);
  break;
 case 134:
  ret = ip_vs_del_service(svc);

  break;
 case 133:
  ret = ip_vs_add_dest(svc, &udest);
  break;
 case 131:
  ret = ip_vs_edit_dest(svc, &udest);
  break;
 case 135:
  ret = ip_vs_del_dest(svc, &udest);
  break;
 case 129:
  ret = ip_vs_zero_service(svc);
  break;
 default:
  ret = -EINVAL;
 }

out:
 mutex_unlock(&__ip_vs_mutex);

 return ret;
}
