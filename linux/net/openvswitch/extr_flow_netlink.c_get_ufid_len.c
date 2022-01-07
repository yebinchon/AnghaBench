
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 size_t MAX_UFID_LENGTH ;
 int OVS_NLERR (int,char*,size_t,size_t) ;
 size_t nla_len (struct nlattr const*) ;

__attribute__((used)) static size_t get_ufid_len(const struct nlattr *attr, bool log)
{
 size_t len;

 if (!attr)
  return 0;

 len = nla_len(attr);
 if (len < 1 || len > MAX_UFID_LENGTH) {
  OVS_NLERR(log, "ufid size %u bytes exceeds the range (1, %d)",
     nla_len(attr), MAX_UFID_LENGTH);
  return 0;
 }

 return len;
}
