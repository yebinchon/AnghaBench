
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_info_req {int msg; } ;


 int DEVLINK_ATTR_INFO_SERIAL_NUMBER ;
 int nla_put_string (int ,int ,char const*) ;

int devlink_info_serial_number_put(struct devlink_info_req *req, const char *sn)
{
 return nla_put_string(req->msg, DEVLINK_ATTR_INFO_SERIAL_NUMBER, sn);
}
