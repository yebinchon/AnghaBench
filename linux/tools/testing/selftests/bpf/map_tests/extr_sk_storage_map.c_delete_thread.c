
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 void* ERR_PTR (int) ;
 int READ_ONCE (int ) ;
 int bpf_map_delete_elem (int,int*) ;
 int errno ;
 int fprintf (int ,char*,int,int) ;
 int is_stopped () ;
 int notify_thread_err () ;
 int sk_storage_map ;
 int stderr ;

__attribute__((used)) static void *delete_thread(void *arg)
{
 int map_fd = READ_ONCE(sk_storage_map);
 int sk_fd = *(int *)arg;
 int err = 0;

 while (!is_stopped()) {
  err = bpf_map_delete_elem(map_fd, &sk_fd);
  if (err && errno != ENOENT) {
   err = -errno;
   fprintf(stderr, "bpf_map_delete_elem: %d %d\n",
    err, errno);
   break;
  }
 }

 if (!is_stopped()) {
  notify_thread_err();
  return ERR_PTR(err);
 }

 return ((void*)0);
}
