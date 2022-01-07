
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_id {int ufid_len; int ufid; } ;
struct nlattr {int dummy; } ;


 int get_ufid_len (struct nlattr const*,int) ;
 int memcpy (int ,int ,int) ;
 int nla_data (struct nlattr const*) ;

bool ovs_nla_get_ufid(struct sw_flow_id *sfid, const struct nlattr *attr,
        bool log)
{
 sfid->ufid_len = get_ufid_len(attr, log);
 if (sfid->ufid_len)
  memcpy(sfid->ufid, nla_data(attr), sfid->ufid_len);

 return sfid->ufid_len;
}
