
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_device {int dev; int ept; } ;
struct TYPE_2__ {int xmit; } ;
struct qrtr_smd_dev {TYPE_1__ ep; int * dev; int channel; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int QRTR_EP_NID_AUTO ;
 int dev_dbg (int *,char*) ;
 int dev_set_drvdata (int *,struct qrtr_smd_dev*) ;
 struct qrtr_smd_dev* devm_kzalloc (int *,int,int ) ;
 int qcom_smd_qrtr_send ;
 int qrtr_endpoint_register (TYPE_1__*,int ) ;

__attribute__((used)) static int qcom_smd_qrtr_probe(struct rpmsg_device *rpdev)
{
 struct qrtr_smd_dev *qdev;
 int rc;

 qdev = devm_kzalloc(&rpdev->dev, sizeof(*qdev), GFP_KERNEL);
 if (!qdev)
  return -ENOMEM;

 qdev->channel = rpdev->ept;
 qdev->dev = &rpdev->dev;
 qdev->ep.xmit = qcom_smd_qrtr_send;

 rc = qrtr_endpoint_register(&qdev->ep, QRTR_EP_NID_AUTO);
 if (rc)
  return rc;

 dev_set_drvdata(&rpdev->dev, qdev);

 dev_dbg(&rpdev->dev, "Qualcomm SMD QRTR driver probed\n");

 return 0;
}
