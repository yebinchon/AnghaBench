
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int addr ;


 scalar_t__ CHECK_FAIL (int) ;
 scalar_t__ accept (int,struct sockaddr*,int*) ;
 int close (int) ;
 int listen (int,int) ;
 int perror (char*) ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int server_started ;
 int server_started_mtx ;

__attribute__((used)) static void *server_thread(void *arg)
{
 struct sockaddr_storage addr;
 socklen_t len = sizeof(addr);
 int fd = *(int *)arg;
 int client_fd;
 int err;

 err = listen(fd, 1);

 pthread_mutex_lock(&server_started_mtx);
 pthread_cond_signal(&server_started);
 pthread_mutex_unlock(&server_started_mtx);

 if (CHECK_FAIL(err < 0)) {
  perror("Failed to listed on socket");
  return ((void*)0);
 }

 client_fd = accept(fd, (struct sockaddr *)&addr, &len);
 if (CHECK_FAIL(client_fd < 0)) {
  perror("Failed to accept client");
  return ((void*)0);
 }





 if (CHECK_FAIL(accept(fd, (struct sockaddr *)&addr, &len) >= 0)) {
  perror("Unexpected success in second accept");
  return ((void*)0);
 }

 close(client_fd);

 return ((void*)0);
}
