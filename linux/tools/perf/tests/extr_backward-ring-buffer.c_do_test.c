
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evlist {int dummy; } ;
typedef int sbuf ;


 int STRERR_BUFSIZE ;
 int TEST_FAIL ;
 int count_samples (struct evlist*,int*,int*) ;
 int errno ;
 int evlist__disable (struct evlist*) ;
 int evlist__enable (struct evlist*) ;
 int evlist__mmap (struct evlist*,int) ;
 int evlist__munmap (struct evlist*) ;
 int pr_debug (char*,int ) ;
 int str_error_r (int ,char*,int) ;
 int testcase () ;

__attribute__((used)) static int do_test(struct evlist *evlist, int mmap_pages,
     int *sample_count, int *comm_count)
{
 int err;
 char sbuf[STRERR_BUFSIZE];

 err = evlist__mmap(evlist, mmap_pages);
 if (err < 0) {
  pr_debug("evlist__mmap: %s\n",
    str_error_r(errno, sbuf, sizeof(sbuf)));
  return TEST_FAIL;
 }

 evlist__enable(evlist);
 testcase();
 evlist__disable(evlist);

 err = count_samples(evlist, sample_count, comm_count);
 evlist__munmap(evlist);
 return err;
}
