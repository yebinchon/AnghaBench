
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ECRYPTFS_SUPPORTED_FILE_VERSION ;
 int ECRYPTFS_VERSION_MAJOR ;
 int ECRYPTFS_VERSION_MINOR ;

void ecryptfs_get_versions(int *major, int *minor, int *file_version)
{
 *major = ECRYPTFS_VERSION_MAJOR;
 *minor = ECRYPTFS_VERSION_MINOR;
 if (file_version)
  *file_version = ECRYPTFS_SUPPORTED_FILE_VERSION;
}
