
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int dummy; } ;
struct nlattr {int nla_type; int nla_len; } ;


 scalar_t__ IS_ERR (struct nlattr*) ;
 int memcpy (int ,void*,int) ;
 int memset (unsigned char*,int ,int ) ;
 int nla_attr_size (int) ;
 int nla_data (struct nlattr*) ;
 int nla_padlen (int) ;
 struct nlattr* reserve_sfa_size (struct sw_flow_actions**,int,int) ;

__attribute__((used)) static struct nlattr *__add_action(struct sw_flow_actions **sfa,
       int attrtype, void *data, int len, bool log)
{
 struct nlattr *a;

 a = reserve_sfa_size(sfa, nla_attr_size(len), log);
 if (IS_ERR(a))
  return a;

 a->nla_type = attrtype;
 a->nla_len = nla_attr_size(len);

 if (data)
  memcpy(nla_data(a), data, len);
 memset((unsigned char *) a + a->nla_len, 0, nla_padlen(len));

 return a;
}
