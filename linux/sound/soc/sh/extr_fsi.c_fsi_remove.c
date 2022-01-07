
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsi_master {int fsib; int fsia; } ;


 struct fsi_master* dev_get_drvdata (int *) ;
 int fsi_stream_remove (int *) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int fsi_remove(struct platform_device *pdev)
{
 struct fsi_master *master;

 master = dev_get_drvdata(&pdev->dev);

 pm_runtime_disable(&pdev->dev);

 fsi_stream_remove(&master->fsia);
 fsi_stream_remove(&master->fsib);

 return 0;
}
