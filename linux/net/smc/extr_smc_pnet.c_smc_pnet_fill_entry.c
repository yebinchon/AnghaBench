
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_user_pnetentry {int ib_port; int smcibdev; int smcd_dev; int ndev; int pnet_name; int list; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int SMC_MAX_PORTS ;
 size_t SMC_PNETID_ETHNAME ;
 size_t SMC_PNETID_IBNAME ;
 size_t SMC_PNETID_IBPORT ;
 size_t SMC_PNETID_NAME ;
 int dev_get_by_name (struct net*,char*) ;
 struct net init_net ;
 int memset (struct smc_user_pnetentry*,int ,int) ;
 scalar_t__ nla_data (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 int smc_pnet_find_ib (char*) ;
 int smc_pnet_find_smcd (char*) ;
 int smc_pnetid_valid (char*,int ) ;
 char* strim (char*) ;

__attribute__((used)) static int smc_pnet_fill_entry(struct net *net,
          struct smc_user_pnetentry *pnetelem,
          struct nlattr *tb[])
{
 char *string, *ibname;
 int rc;

 memset(pnetelem, 0, sizeof(*pnetelem));
 INIT_LIST_HEAD(&pnetelem->list);

 rc = -EINVAL;
 if (!tb[SMC_PNETID_NAME])
  goto error;
 string = (char *)nla_data(tb[SMC_PNETID_NAME]);
 if (!smc_pnetid_valid(string, pnetelem->pnet_name))
  goto error;

 rc = -EINVAL;
 if (tb[SMC_PNETID_ETHNAME]) {
  string = (char *)nla_data(tb[SMC_PNETID_ETHNAME]);
  pnetelem->ndev = dev_get_by_name(net, string);
  if (!pnetelem->ndev)
   goto error;
 }


 if (net != &init_net)
  return 0;

 rc = -EINVAL;
 if (tb[SMC_PNETID_IBNAME]) {
  ibname = (char *)nla_data(tb[SMC_PNETID_IBNAME]);
  ibname = strim(ibname);
  pnetelem->smcibdev = smc_pnet_find_ib(ibname);
  pnetelem->smcd_dev = smc_pnet_find_smcd(ibname);
  if (!pnetelem->smcibdev && !pnetelem->smcd_dev)
   goto error;
  if (pnetelem->smcibdev) {
   if (!tb[SMC_PNETID_IBPORT])
    goto error;
   pnetelem->ib_port = nla_get_u8(tb[SMC_PNETID_IBPORT]);
   if (pnetelem->ib_port < 1 ||
       pnetelem->ib_port > SMC_MAX_PORTS)
    goto error;
  }
 }

 return 0;

error:
 return rc;
}
