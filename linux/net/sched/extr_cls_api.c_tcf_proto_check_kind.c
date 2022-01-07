
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 scalar_t__ IFNAMSIZ ;
 int memset (char*,int ,scalar_t__) ;
 scalar_t__ nla_strlcpy (char*,struct nlattr*,scalar_t__) ;

__attribute__((used)) static bool tcf_proto_check_kind(struct nlattr *kind, char *name)
{
 if (kind)
  return nla_strlcpy(name, kind, IFNAMSIZ) >= IFNAMSIZ;
 memset(name, 0, IFNAMSIZ);
 return 0;
}
