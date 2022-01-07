
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kctl_ioctl {int list; int fioctl; } ;
struct list_head {int dummy; } ;
typedef int snd_kctl_ioctl_func_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int down_write (int *) ;
 struct snd_kctl_ioctl* kzalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int snd_ioctl_rwsem ;
 int up_write (int *) ;

__attribute__((used)) static int _snd_ctl_register_ioctl(snd_kctl_ioctl_func_t fcn, struct list_head *lists)
{
 struct snd_kctl_ioctl *pn;

 pn = kzalloc(sizeof(struct snd_kctl_ioctl), GFP_KERNEL);
 if (pn == ((void*)0))
  return -ENOMEM;
 pn->fioctl = fcn;
 down_write(&snd_ioctl_rwsem);
 list_add_tail(&pn->list, lists);
 up_write(&snd_ioctl_rwsem);
 return 0;
}
