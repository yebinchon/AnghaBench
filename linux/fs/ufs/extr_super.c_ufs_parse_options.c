
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;


 int MAX_OPT_ARGS ;
 int ONERROR ;
 int ONERROR_LOCK ;
 int ONERROR_PANIC ;
 int ONERROR_REPAIR ;
 int ONERROR_UMOUNT ;
 int UFSD (char*) ;
 int UFSTYPE ;
 int UFSTYPE_44BSD ;
 int UFSTYPE_HP ;
 int UFSTYPE_NEXTSTEP ;
 int UFSTYPE_NEXTSTEP_CD ;
 int UFSTYPE_OLD ;
 int UFSTYPE_OPENSTEP ;
 int UFSTYPE_SUN ;
 int UFSTYPE_SUNOS ;
 int UFSTYPE_SUNx86 ;
 int UFSTYPE_UFS2 ;
 int match_token (char*,int ,int *) ;
 int pr_err (char*,...) ;
 char* strsep (char**,char*) ;
 int tokens ;
 int ufs_clear_opt (unsigned int,int ) ;
 int ufs_set_opt (unsigned int,int ) ;

__attribute__((used)) static int ufs_parse_options (char * options, unsigned * mount_options)
{
 char * p;

 UFSD("ENTER\n");

 if (!options)
  return 1;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 133:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_OLD);
   break;
  case 129:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_SUNx86);
   break;
  case 131:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_SUN);
   break;
  case 130:
   ufs_clear_opt(*mount_options, UFSTYPE);
   ufs_set_opt(*mount_options, UFSTYPE_SUNOS);
   break;
  case 137:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_44BSD);
   break;
  case 128:
   ufs_clear_opt(*mount_options, UFSTYPE);
   ufs_set_opt(*mount_options, UFSTYPE_UFS2);
   break;
  case 136:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_HP);
   break;
  case 134:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_NEXTSTEP_CD);
   break;
  case 135:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_NEXTSTEP);
   break;
  case 132:
   ufs_clear_opt (*mount_options, UFSTYPE);
   ufs_set_opt (*mount_options, UFSTYPE_OPENSTEP);
   break;
  case 140:
   ufs_clear_opt (*mount_options, ONERROR);
   ufs_set_opt (*mount_options, ONERROR_PANIC);
   break;
  case 141:
   ufs_clear_opt (*mount_options, ONERROR);
   ufs_set_opt (*mount_options, ONERROR_LOCK);
   break;
  case 138:
   ufs_clear_opt (*mount_options, ONERROR);
   ufs_set_opt (*mount_options, ONERROR_UMOUNT);
   break;
  case 139:
   pr_err("Unable to do repair on error, will lock lock instead\n");
   ufs_clear_opt (*mount_options, ONERROR);
   ufs_set_opt (*mount_options, ONERROR_REPAIR);
   break;
  default:
   pr_err("Invalid option: \"%s\" or missing value\n", p);
   return 0;
  }
 }
 return 1;
}
