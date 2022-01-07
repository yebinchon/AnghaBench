
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_info_req {int dummy; } ;


 int DEVLINK_ATTR_INFO_VERSION_STORED ;
 int devlink_info_version_put (struct devlink_info_req*,int ,char const*,char const*) ;

int devlink_info_version_stored_put(struct devlink_info_req *req,
        const char *version_name,
        const char *version_value)
{
 return devlink_info_version_put(req, DEVLINK_ATTR_INFO_VERSION_STORED,
     version_name, version_value);
}
