
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6core {struct q6core* svc_version; scalar_t__ get_version_supported; struct q6core* fwk_version; scalar_t__ fwk_version_supported; } ;
struct apr_device {int dev; } ;


 struct q6core* dev_get_drvdata (int *) ;
 int * g_core ;
 int kfree (struct q6core*) ;

__attribute__((used)) static int q6core_exit(struct apr_device *adev)
{
 struct q6core *core = dev_get_drvdata(&adev->dev);

 if (core->fwk_version_supported)
  kfree(core->fwk_version);
 if (core->get_version_supported)
  kfree(core->svc_version);

 g_core = ((void*)0);
 kfree(core);

 return 0;
}
