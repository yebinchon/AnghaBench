
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; } ;
struct qrtr_smd_dev {int ep; } ;


 struct qrtr_smd_dev* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int qrtr_endpoint_unregister (int *) ;

__attribute__((used)) static void qcom_smd_qrtr_remove(struct rpmsg_device *rpdev)
{
 struct qrtr_smd_dev *qdev = dev_get_drvdata(&rpdev->dev);

 qrtr_endpoint_unregister(&qdev->ep);

 dev_set_drvdata(&rpdev->dev, ((void*)0));
}
