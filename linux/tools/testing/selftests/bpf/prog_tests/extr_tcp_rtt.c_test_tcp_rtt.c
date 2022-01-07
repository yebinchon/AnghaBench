
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 scalar_t__ CHECK_FAIL (int) ;
 int close (int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int run_test (int,int) ;
 int server_started ;
 int server_started_mtx ;
 int server_thread ;
 int start_server () ;
 int test__join_cgroup (char*) ;

void test_tcp_rtt(void)
{
 int server_fd, cgroup_fd;
 pthread_t tid;

 cgroup_fd = test__join_cgroup("/tcp_rtt");
 if (CHECK_FAIL(cgroup_fd < 0))
  return;

 server_fd = start_server();
 if (CHECK_FAIL(server_fd < 0))
  goto close_cgroup_fd;

 if (CHECK_FAIL(pthread_create(&tid, ((void*)0), server_thread,
          (void *)&server_fd)))
  goto close_server_fd;

 pthread_mutex_lock(&server_started_mtx);
 pthread_cond_wait(&server_started, &server_started_mtx);
 pthread_mutex_unlock(&server_started_mtx);

 CHECK_FAIL(run_test(cgroup_fd, server_fd));
close_server_fd:
 close(server_fd);
close_cgroup_fd:
 close(cgroup_fd);
}
