
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_ssi_dbg {int dbg_dir; } ;


 int debugfs_remove_recursive (int ) ;

void fsl_ssi_debugfs_remove(struct fsl_ssi_dbg *ssi_dbg)
{
 debugfs_remove_recursive(ssi_dbg->dbg_dir);
}
