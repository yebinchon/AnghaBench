
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SADB_ADD ;
 int SADB_DELETE ;
 int SADB_EXPIRE ;
 int SADB_UPDATE ;




 int pr_err (char*,int) ;

__attribute__((used)) static inline int event2keytype(int event)
{
 switch (event) {
 case 131:
  return SADB_DELETE;
 case 129:
  return SADB_ADD;
 case 128:
  return SADB_UPDATE;
 case 130:
  return SADB_EXPIRE;
 default:
  pr_err("pfkey: Unknown SA event %d\n", event);
  break;
 }

 return 0;
}
