
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SADB_X_SPDADD ;
 int SADB_X_SPDDELETE ;
 int SADB_X_SPDUPDATE ;




 int pr_err (char*,int) ;

__attribute__((used)) static inline int event2poltype(int event)
{
 switch (event) {
 case 131:
  return SADB_X_SPDDELETE;
 case 130:
  return SADB_X_SPDADD;
 case 128:
  return SADB_X_SPDUPDATE;
 case 129:

 default:
  pr_err("pfkey: Unknown policy event %d\n", event);
  break;
 }

 return 0;
}
