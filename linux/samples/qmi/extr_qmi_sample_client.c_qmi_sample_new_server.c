
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_qrtr {int member_2; int member_1; int member_0; } ;
struct qmi_service {struct platform_device* priv; int port; int node; } ;
struct qmi_handle {int dummy; } ;
struct platform_device {int dummy; } ;
typedef int sq ;


 int AF_QIPCRTR ;
 int ENOMEM ;
 int PLATFORM_DEVID_AUTO ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,struct sockaddr_qrtr*,int) ;
 struct platform_device* platform_device_alloc (char*,int ) ;
 int platform_device_put (struct platform_device*) ;

__attribute__((used)) static int qmi_sample_new_server(struct qmi_handle *qmi,
     struct qmi_service *service)
{
 struct platform_device *pdev;
 struct sockaddr_qrtr sq = { AF_QIPCRTR, service->node, service->port };
 int ret;

 pdev = platform_device_alloc("qmi_sample_client", PLATFORM_DEVID_AUTO);
 if (!pdev)
  return -ENOMEM;

 ret = platform_device_add_data(pdev, &sq, sizeof(sq));
 if (ret)
  goto err_put_device;

 ret = platform_device_add(pdev);
 if (ret)
  goto err_put_device;

 service->priv = pdev;

 return 0;

err_put_device:
 platform_device_put(pdev);

 return ret;
}
