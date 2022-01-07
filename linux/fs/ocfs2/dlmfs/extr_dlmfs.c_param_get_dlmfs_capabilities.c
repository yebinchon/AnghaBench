
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int DLMFS_CAPABILITIES ;
 int strlcpy (char*,int ,scalar_t__) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int param_get_dlmfs_capabilities(char *buffer,
     const struct kernel_param *kp)
{
 return strlcpy(buffer, DLMFS_CAPABILITIES,
         strlen(DLMFS_CAPABILITIES) + 1);
}
