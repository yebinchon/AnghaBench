
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_qos_request {scalar_t__ pm_qos_class; } ;



int pm_qos_request_active(struct pm_qos_request *req)
{
 return req->pm_qos_class != 0;
}
