
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct nfs_parsed_mount_data {int version; int minorversion; int flags; } ;


 int NFS_MOUNT_VER3 ;






 int match_token (char*,int ,int *) ;
 int nfs_vers_tokens ;

__attribute__((used)) static int nfs_parse_version_string(char *string,
  struct nfs_parsed_mount_data *mnt,
  substring_t *args)
{
 mnt->flags &= ~NFS_MOUNT_VER3;
 switch (match_token(string, nfs_vers_tokens, args)) {
 case 133:
  mnt->version = 2;
  break;
 case 132:
  mnt->flags |= NFS_MOUNT_VER3;
  mnt->version = 3;
  break;
 case 131:




  mnt->version = 4;
  break;
 case 130:
  mnt->version = 4;
  mnt->minorversion = 0;
  break;
 case 129:
  mnt->version = 4;
  mnt->minorversion = 1;
  break;
 case 128:
  mnt->version = 4;
  mnt->minorversion = 2;
  break;
 default:
  return 0;
 }
 return 1;
}
