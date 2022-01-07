
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int CEPH_FEATURES_SUPPORTED_DEFAULT ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static int param_get_supported_features(char *buffer,
     const struct kernel_param *kp)
{
 return sprintf(buffer, "0x%llx", CEPH_FEATURES_SUPPORTED_DEFAULT);
}
