
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmi_service {struct platform_device* priv; } ;
struct qmi_handle {int dummy; } ;
struct platform_device {int dummy; } ;


 int platform_device_unregister (struct platform_device*) ;

__attribute__((used)) static void qmi_sample_del_server(struct qmi_handle *qmi,
      struct qmi_service *service)
{
 struct platform_device *pdev = service->priv;

 platform_device_unregister(pdev);
}
