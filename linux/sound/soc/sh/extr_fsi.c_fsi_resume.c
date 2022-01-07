
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_priv {int capture; int playback; } ;
struct fsi_master {struct fsi_priv fsib; struct fsi_priv fsia; } ;
struct device {int dummy; } ;


 int __fsi_resume (struct fsi_priv*,int *,struct device*) ;
 struct fsi_master* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int fsi_resume(struct device *dev)
{
 struct fsi_master *master = dev_get_drvdata(dev);
 struct fsi_priv *fsia = &master->fsia;
 struct fsi_priv *fsib = &master->fsib;

 __fsi_resume(fsia, &fsia->playback, dev);
 __fsi_resume(fsia, &fsia->capture, dev);

 __fsi_resume(fsib, &fsib->playback, dev);
 __fsi_resume(fsib, &fsib->capture, dev);

 return 0;
}
