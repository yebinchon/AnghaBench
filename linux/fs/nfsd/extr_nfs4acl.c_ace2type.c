
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ace {int whotype; int flag; } ;


 short ACL_GROUP ;
 short ACL_GROUP_OBJ ;
 short ACL_OTHER ;
 short ACL_USER ;
 short ACL_USER_OBJ ;
 int BUG () ;
 int NFS4_ACE_IDENTIFIER_GROUP ;





__attribute__((used)) static short
ace2type(struct nfs4_ace *ace)
{
 switch (ace->whotype) {
  case 129:
   return (ace->flag & NFS4_ACE_IDENTIFIER_GROUP ?
     ACL_GROUP : ACL_USER);
  case 128:
   return ACL_USER_OBJ;
  case 130:
   return ACL_GROUP_OBJ;
  case 131:
   return ACL_OTHER;
 }
 BUG();
 return -1;
}
