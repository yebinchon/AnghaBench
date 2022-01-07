
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_ssi_dbg {int dbg_dir; } ;
struct device {int dummy; } ;


 int debugfs_create_dir (int ,int *) ;
 int debugfs_create_file (char*,int,int ,struct fsl_ssi_dbg*,int *) ;
 int dev_name (struct device*) ;
 int fsl_ssi_stats_fops ;

void fsl_ssi_debugfs_create(struct fsl_ssi_dbg *ssi_dbg, struct device *dev)
{
 ssi_dbg->dbg_dir = debugfs_create_dir(dev_name(dev), ((void*)0));

 debugfs_create_file("stats", 0444, ssi_dbg->dbg_dir, ssi_dbg,
       &fsl_ssi_stats_fops);
}
