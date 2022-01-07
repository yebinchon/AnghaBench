
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int ENOMEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int WRITE_ONCE (int ,int) ;
 int close (int) ;
 int create_sk_storage_map () ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int free (int *) ;
 int insert_close_thread ;
 int is_stopped () ;
 int * malloc (int) ;
 int nr_sk_threads ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,void**) ;
 int sk_storage_map ;
 int stderr ;
 int stop ;
 int wait_for_threads_done () ;
 int wait_for_threads_redo () ;

__attribute__((used)) static int do_sk_storage_map_stress_free(void)
{
 int i, map_fd = -1, err = 0, nr_threads_created = 0;
 pthread_t *sk_thread_ids;
 void *thread_ret;

 sk_thread_ids = malloc(sizeof(pthread_t) * nr_sk_threads);
 if (!sk_thread_ids) {
  fprintf(stderr, "malloc(sk_threads): NULL\n");
  return -ENOMEM;
 }

 for (i = 0; i < nr_sk_threads; i++) {
  err = pthread_create(&sk_thread_ids[i], ((void*)0),
         insert_close_thread, ((void*)0));
  if (err) {
   err = -errno;
   goto done;
  }
  nr_threads_created++;
 }

 while (!is_stopped()) {
  map_fd = create_sk_storage_map();
  WRITE_ONCE(sk_storage_map, map_fd);

  if (!wait_for_threads_done())
   break;

  WRITE_ONCE(sk_storage_map, -1);
  close(map_fd);
  map_fd = -1;

  if (!wait_for_threads_redo())
   break;
 }

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

 if (map_fd != -1)
  close(map_fd);

 return err;
}
