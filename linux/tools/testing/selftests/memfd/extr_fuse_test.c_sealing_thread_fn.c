
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SEAL_WRITE ;
 int global_mfd ;
 int global_p ;
 int mfd_assert_add_seals (int ,int ) ;
 int mfd_busy_add_seals (int ,int ) ;
 int mfd_def_size ;
 int munmap (int ,int ) ;
 int printf (char*) ;
 int sleep (int) ;
 int usleep (int) ;

__attribute__((used)) static int sealing_thread_fn(void *arg)
{
 int sig, r;
 usleep(200000);


 munmap(global_p, mfd_def_size);





 r = mfd_busy_add_seals(global_mfd, F_SEAL_WRITE);
 if (r >= 0) {
  printf("HURRAY! This kernel fixed GUP races!\n");
 } else {

  sleep(1);


  mfd_assert_add_seals(global_mfd, F_SEAL_WRITE);
 }

 return 0;
}
