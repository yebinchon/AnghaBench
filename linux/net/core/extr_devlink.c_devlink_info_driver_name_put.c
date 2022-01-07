
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_info_req {int msg; } ;


 int DEVLINK_ATTR_INFO_DRIVER_NAME ;
 int nla_put_string (int ,int ,char const*) ;

int devlink_info_driver_name_put(struct devlink_info_req *req, const char *name)
{
 return nla_put_string(req->msg, DEVLINK_ATTR_INFO_DRIVER_NAME, name);
}
