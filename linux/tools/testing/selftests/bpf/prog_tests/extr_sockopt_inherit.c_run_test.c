
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_prog_load_attr {char* file; } ;
struct bpf_object {int dummy; } ;
typedef int pthread_t ;


 scalar_t__ CHECK_FAIL (int) ;
 int CUSTOM_INHERIT1 ;
 int CUSTOM_INHERIT2 ;
 int CUSTOM_LISTENER ;
 int bpf_object__close (struct bpf_object*) ;
 int bpf_prog_load_xattr (struct bpf_prog_load_attr*,struct bpf_object**,int*) ;
 int close (int) ;
 int connect_to_server (int) ;
 int prog_attach (struct bpf_object*,int,char*) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_create (int *,int *,int ,void*) ;
 int pthread_join (int ,void**) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int server_started ;
 int server_started_mtx ;
 int server_thread ;
 int start_server () ;
 int verify_sockopt (int,int ,char*,int ) ;

__attribute__((used)) static void run_test(int cgroup_fd)
{
 struct bpf_prog_load_attr attr = {
  .file = "./sockopt_inherit.o",
 };
 int server_fd = -1, client_fd;
 struct bpf_object *obj;
 void *server_err;
 pthread_t tid;
 int ignored;
 int err;

 err = bpf_prog_load_xattr(&attr, &obj, &ignored);
 if (CHECK_FAIL(err))
  return;

 err = prog_attach(obj, cgroup_fd, "cgroup/getsockopt");
 if (CHECK_FAIL(err))
  goto close_bpf_object;

 err = prog_attach(obj, cgroup_fd, "cgroup/setsockopt");
 if (CHECK_FAIL(err))
  goto close_bpf_object;

 server_fd = start_server();
 if (CHECK_FAIL(server_fd < 0))
  goto close_bpf_object;

 if (CHECK_FAIL(pthread_create(&tid, ((void*)0), server_thread,
          (void *)&server_fd)))
  goto close_server_fd;

 pthread_mutex_lock(&server_started_mtx);
 pthread_cond_wait(&server_started, &server_started_mtx);
 pthread_mutex_unlock(&server_started_mtx);

 client_fd = connect_to_server(server_fd);
 if (CHECK_FAIL(client_fd < 0))
  goto close_server_fd;

 CHECK_FAIL(verify_sockopt(client_fd, CUSTOM_INHERIT1, "connect", 0));
 CHECK_FAIL(verify_sockopt(client_fd, CUSTOM_INHERIT2, "connect", 0));
 CHECK_FAIL(verify_sockopt(client_fd, CUSTOM_LISTENER, "connect", 0));

 pthread_join(tid, &server_err);

 err = (int)(long)server_err;
 CHECK_FAIL(err);

 close(client_fd);

close_server_fd:
 close(server_fd);
close_bpf_object:
 bpf_object__close(obj);
}
