
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; int ept; int dst; int src; } ;
struct instance_data {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MSG ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int ,int ) ;
 int dev_set_drvdata (int *,struct instance_data*) ;
 struct instance_data* devm_kzalloc (int *,int,int ) ;
 int rpmsg_send (int ,int ,int ) ;
 int strlen (int ) ;

__attribute__((used)) static int rpmsg_sample_probe(struct rpmsg_device *rpdev)
{
 int ret;
 struct instance_data *idata;

 dev_info(&rpdev->dev, "new channel: 0x%x -> 0x%x!\n",
     rpdev->src, rpdev->dst);

 idata = devm_kzalloc(&rpdev->dev, sizeof(*idata), GFP_KERNEL);
 if (!idata)
  return -ENOMEM;

 dev_set_drvdata(&rpdev->dev, idata);


 ret = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
 if (ret) {
  dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", ret);
  return ret;
 }

 return 0;
}
