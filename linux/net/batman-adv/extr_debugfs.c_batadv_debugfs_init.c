
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int name; } ;
struct batadv_debuginfo {int fops; TYPE_1__ attr; } ;


 int BATADV_DEBUGFS_SUBDIR ;
 int S_IFREG ;
 int batadv_debugfs ;
 struct batadv_debuginfo** batadv_general_debuginfos ;
 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (int ,int,int ,int *,int *) ;

void batadv_debugfs_init(void)
{
 struct batadv_debuginfo **bat_debug;

 batadv_debugfs = debugfs_create_dir(BATADV_DEBUGFS_SUBDIR, ((void*)0));

 for (bat_debug = batadv_general_debuginfos; *bat_debug; ++bat_debug)
  debugfs_create_file(((*bat_debug)->attr).name,
        S_IFREG | ((*bat_debug)->attr).mode,
        batadv_debugfs, ((void*)0), &(*bat_debug)->fops);
}
