
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct nfs_parsed_mount_data {int auth_info; } ;
typedef int rpc_authflavor_t ;


 int MAX_OPT_ARGS ;
 int MOUNT ;
 int RPC_AUTH_GSS_KRB5 ;
 int RPC_AUTH_GSS_KRB5I ;
 int RPC_AUTH_GSS_KRB5P ;
 int RPC_AUTH_GSS_LKEY ;
 int RPC_AUTH_GSS_LKEYI ;
 int RPC_AUTH_GSS_LKEYP ;
 int RPC_AUTH_GSS_SPKM ;
 int RPC_AUTH_GSS_SPKMI ;
 int RPC_AUTH_GSS_SPKMP ;
 int RPC_AUTH_NULL ;
 int RPC_AUTH_UNIX ;
 int dfprintk (int ,char*,char*) ;
 int match_token (char*,int ,int *) ;
 int nfs_auth_info_add (int *,int ) ;
 int nfs_secflavor_tokens ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int nfs_parse_security_flavors(char *value,
          struct nfs_parsed_mount_data *mnt)
{
 substring_t args[MAX_OPT_ARGS];
 rpc_authflavor_t pseudoflavor;
 char *p;

 dfprintk(MOUNT, "NFS: parsing sec=%s option\n", value);

 while ((p = strsep(&value, ":")) != ((void*)0)) {
  switch (match_token(p, nfs_secflavor_tokens, args)) {
  case 132:
   pseudoflavor = RPC_AUTH_NULL;
   break;
  case 128:
   pseudoflavor = RPC_AUTH_UNIX;
   break;
  case 138:
   pseudoflavor = RPC_AUTH_GSS_KRB5;
   break;
  case 137:
   pseudoflavor = RPC_AUTH_GSS_KRB5I;
   break;
  case 136:
   pseudoflavor = RPC_AUTH_GSS_KRB5P;
   break;
  case 135:
   pseudoflavor = RPC_AUTH_GSS_LKEY;
   break;
  case 134:
   pseudoflavor = RPC_AUTH_GSS_LKEYI;
   break;
  case 133:
   pseudoflavor = RPC_AUTH_GSS_LKEYP;
   break;
  case 131:
   pseudoflavor = RPC_AUTH_GSS_SPKM;
   break;
  case 130:
   pseudoflavor = RPC_AUTH_GSS_SPKMI;
   break;
  case 129:
   pseudoflavor = RPC_AUTH_GSS_SPKMP;
   break;
  default:
   dfprintk(MOUNT,
     "NFS: sec= option '%s' not recognized\n", p);
   return 0;
  }

  if (!nfs_auth_info_add(&mnt->auth_info, pseudoflavor))
   return 0;
 }

 return 1;
}
