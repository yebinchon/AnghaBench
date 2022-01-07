
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rpmsg_device {int dev; } ;
struct qrtr_smd_dev {int dev; int ep; } ;


 int EAGAIN ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 struct qrtr_smd_dev* dev_get_drvdata (int *) ;
 int qrtr_endpoint_post (int *,void*,int) ;

__attribute__((used)) static int qcom_smd_qrtr_callback(struct rpmsg_device *rpdev,
      void *data, int len, void *priv, u32 addr)
{
 struct qrtr_smd_dev *qdev = dev_get_drvdata(&rpdev->dev);
 int rc;

 if (!qdev)
  return -EAGAIN;

 rc = qrtr_endpoint_post(&qdev->ep, data, len);
 if (rc == -EINVAL) {
  dev_err(qdev->dev, "invalid ipcrouter packet\n");

  rc = 0;
 }

 return rc;
}
