
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int sc_write_logs; } ;


 int nilfs_destroy_logs (int *) ;
 int nilfs_segctor_complete_write (struct nilfs_sc_info*) ;
 int nilfs_wait_on_logs (int *) ;

__attribute__((used)) static int nilfs_segctor_wait(struct nilfs_sc_info *sci)
{
 int ret;

 ret = nilfs_wait_on_logs(&sci->sc_write_logs);
 if (!ret) {
  nilfs_segctor_complete_write(sci);
  nilfs_destroy_logs(&sci->sc_write_logs);
 }
 return ret;
}
