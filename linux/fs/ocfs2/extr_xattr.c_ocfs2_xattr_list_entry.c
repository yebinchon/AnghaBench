
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct TYPE_2__ {int s_mount_opt; } ;


 int CAP_SYS_ADMIN ;
 int ERANGE ;
 int OCFS2_MOUNT_NOUSERXATTR ;
 TYPE_1__* OCFS2_SB (struct super_block*) ;




 int SB_POSIXACL ;
 int capable (int ) ;
 int memcpy (char*,char const*,int) ;
 char* ocfs2_xattr_prefix (int) ;
 int strlen (char const*) ;

__attribute__((used)) static int ocfs2_xattr_list_entry(struct super_block *sb,
      char *buffer, size_t size,
      size_t *result, int type,
      const char *name, int name_len)
{
 char *p = buffer + *result;
 const char *prefix;
 int prefix_len;
 int total_len;

 switch(type) {
 case 128:
  if (OCFS2_SB(sb)->s_mount_opt & OCFS2_MOUNT_NOUSERXATTR)
   return 0;
  break;

 case 131:
 case 130:
  if (!(sb->s_flags & SB_POSIXACL))
   return 0;
  break;

 case 129:
  if (!capable(CAP_SYS_ADMIN))
   return 0;
  break;
 }

 prefix = ocfs2_xattr_prefix(type);
 if (!prefix)
  return 0;
 prefix_len = strlen(prefix);
 total_len = prefix_len + name_len + 1;
 *result += total_len;


 if (!size)
  return 0;

 if (*result > size)
  return -ERANGE;

 memcpy(p, prefix, prefix_len);
 memcpy(p + prefix_len, name, name_len);
 p[prefix_len + name_len] = '\0';

 return 0;
}
