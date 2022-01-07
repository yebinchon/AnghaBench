
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int AF_INET6 ;
 int ENOMEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int SOCK_STREAM ;
 int WRITE_ONCE (int ,int) ;
 int close (int) ;
 int create_sk_storage_map () ;
 int delete_thread ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int * malloc (int) ;
 int nr_sk_threads ;
 int pthread_create (int *,int *,int ,int*) ;
 int pthread_join (int ,void**) ;
 int sk_storage_map ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int stop ;
 int update_thread ;
 int wait_for_threads_err () ;

__attribute__((used)) static int do_sk_storage_map_stress_change(void)
{
 int i, sk_fd, map_fd = -1, err = 0, nr_threads_created = 0;
 pthread_t *sk_thread_ids;
 void *thread_ret;

 sk_thread_ids = malloc(sizeof(pthread_t) * nr_sk_threads);
 if (!sk_thread_ids) {
  fprintf(stderr, "malloc(sk_threads): NULL\n");
  return -ENOMEM;
 }

 sk_fd = socket(AF_INET6, SOCK_STREAM, 0);
 if (sk_fd == -1) {
  err = -errno;
  goto done;
 }

 map_fd = create_sk_storage_map();
 WRITE_ONCE(sk_storage_map, map_fd);

 for (i = 0; i < nr_sk_threads; i++) {
  if (i & 0x1)
   err = pthread_create(&sk_thread_ids[i], ((void*)0),
          update_thread, &sk_fd);
  else
   err = pthread_create(&sk_thread_ids[i], ((void*)0),
          delete_thread, &sk_fd);
  if (err) {
   err = -errno;
   goto done;
  }
  nr_threads_created++;
 }

 wait_for_threads_err();

done:
 WRITE_ONCE(stop, 1);
 for (i = 0; i < nr_threads_created; i++) {
  pthread_join(sk_thread_ids[i], &thread_ret);
  if (IS_ERR(thread_ret) && !err) {
   err = PTR_ERR(thread_ret);
   fprintf(stderr, "threads#%u: err:%d\n", i, err);
  }
 }
 free(sk_thread_ids);

 if (sk_fd != -1)
  close(sk_fd);
 close(map_fd);

 return err;
}
