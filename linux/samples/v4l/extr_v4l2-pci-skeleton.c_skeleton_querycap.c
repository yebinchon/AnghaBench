
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct skeleton {int pdev; } ;
struct file {int dummy; } ;


 char* KBUILD_MODNAME ;
 char* pci_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strlcpy (int ,char*,int) ;
 struct skeleton* video_drvdata (struct file*) ;

__attribute__((used)) static int skeleton_querycap(struct file *file, void *priv,
        struct v4l2_capability *cap)
{
 struct skeleton *skel = video_drvdata(file);

 strlcpy(cap->driver, KBUILD_MODNAME, sizeof(cap->driver));
 strlcpy(cap->card, "V4L2 PCI Skeleton", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "PCI:%s",
   pci_name(skel->pdev));
 return 0;
}
