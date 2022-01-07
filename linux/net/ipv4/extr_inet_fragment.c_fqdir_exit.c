
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fqdir {int destroy_work; } ;


 int INIT_WORK (int *,int ) ;
 int fqdir_work_fn ;
 int queue_work (int ,int *) ;
 int system_wq ;

void fqdir_exit(struct fqdir *fqdir)
{
 INIT_WORK(&fqdir->destroy_work, fqdir_work_fn);
 queue_work(system_wq, &fqdir->destroy_work);
}
