
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {scalar_t__ index; } ;
struct dsa_notifier_mdb_info {scalar_t__ sw_index; int port; } ;


 scalar_t__ dsa_is_dsa_port (struct dsa_switch*,int) ;

__attribute__((used)) static bool dsa_switch_mdb_match(struct dsa_switch *ds, int port,
     struct dsa_notifier_mdb_info *info)
{
 if (ds->index == info->sw_index && port == info->port)
  return 1;

 if (dsa_is_dsa_port(ds, port))
  return 1;

 return 0;
}
