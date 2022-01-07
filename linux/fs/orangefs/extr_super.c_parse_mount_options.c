
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct super_block {int s_flags; } ;
struct orangefs_sb_info_s {int flags; } ;


 int EINVAL ;
 int MAX_OPT_ARGS ;
 int ORANGEFS_OPT_INTR ;
 int ORANGEFS_OPT_LOCAL_LOCK ;
 struct orangefs_sb_info_s* ORANGEFS_SB (struct super_block*) ;



 int SB_POSIXACL ;
 int gossip_err (char*,char*) ;
 int match_token (char*,int ,int *) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int parse_mount_options(struct super_block *sb, char *options,
  int silent)
{
 struct orangefs_sb_info_s *orangefs_sb = ORANGEFS_SB(sb);
 substring_t args[MAX_OPT_ARGS];
 char *p;





 sb->s_flags &= ~SB_POSIXACL;
 orangefs_sb->flags &= ~ORANGEFS_OPT_INTR;
 orangefs_sb->flags &= ~ORANGEFS_OPT_LOCAL_LOCK;

 while ((p = strsep(&options, ",")) != ((void*)0)) {
  int token;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 130:
   sb->s_flags |= SB_POSIXACL;
   break;
  case 129:
   orangefs_sb->flags |= ORANGEFS_OPT_INTR;
   break;
  case 128:
   orangefs_sb->flags |= ORANGEFS_OPT_LOCAL_LOCK;
   break;
  default:
   goto fail;
  }
 }

 return 0;
fail:
 if (!silent)
  gossip_err("Error: mount option [%s] is not supported.\n", p);
 return -EINVAL;
}
