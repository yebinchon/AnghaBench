
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6copp {int refcount; int copp_idx; int afe_port; } ;
struct q6adm {int dev; } ;
struct device {int parent; } ;


 int dev_err (int ,char*,int) ;
 struct q6adm* dev_get_drvdata (int ) ;
 int kref_put (int *,int ) ;
 int q6adm_device_close (struct q6adm*,struct q6copp*,int ,int ) ;
 int q6adm_free_copp ;

int q6adm_close(struct device *dev, struct q6copp *copp)
{
 struct q6adm *adm = dev_get_drvdata(dev->parent);
 int ret = 0;

 ret = q6adm_device_close(adm, copp, copp->afe_port, copp->copp_idx);
 if (ret < 0) {
  dev_err(adm->dev, "Failed to close copp %d\n", ret);
  return ret;
 }

 kref_put(&copp->refcount, q6adm_free_copp);

 return 0;
}
