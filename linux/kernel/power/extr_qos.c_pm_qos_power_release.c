
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_qos_request {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct pm_qos_request* private_data; } ;


 int kfree (struct pm_qos_request*) ;
 int pm_qos_remove_request (struct pm_qos_request*) ;

__attribute__((used)) static int pm_qos_power_release(struct inode *inode, struct file *filp)
{
 struct pm_qos_request *req;

 req = filp->private_data;
 pm_qos_remove_request(req);
 kfree(req);

 return 0;
}
