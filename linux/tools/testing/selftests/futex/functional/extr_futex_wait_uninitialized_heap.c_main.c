
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int MAP_ANONYMOUS ;
 int MAP_PRIVATE ;
 int PROT_READ ;
 int PROT_WRITE ;
 int RET_ERROR ;
 int RET_FAIL ;
 int RET_PASS ;
 int TEST_NAME ;
 int WAIT_US ;
 int _SC_PAGESIZE ;
 int atoi (int ) ;
 int basename (char*) ;
 void* buf ;
 scalar_t__ child_blocked ;
 int child_ret ;
 int errno ;
 int error (char*,int ) ;
 int exit (int) ;
 int fail (char*) ;
 int getopt (int,char**,char*) ;
 int info (char*,int ) ;
 int ksft_print_header () ;
 int ksft_print_msg (char*,int ) ;
 int ksft_set_plan (int) ;
 int log_color (int) ;
 int log_verbosity (int ) ;
 void* mmap (int *,long,int,int,int ,int ) ;
 int optarg ;
 int print_result (int ,int) ;
 int pthread_create (int *,int *,int ,int *) ;
 long sysconf (int ) ;
 int usage (int ) ;
 int usleep (int ) ;
 int wait_thread ;

int main(int argc, char **argv)
{
 int c, ret = RET_PASS;
 long page_size;
 pthread_t thr;

 while ((c = getopt(argc, argv, "chv:")) != -1) {
  switch (c) {
  case 'c':
   log_color(1);
   break;
  case 'h':
   usage(basename(argv[0]));
   exit(0);
  case 'v':
   log_verbosity(atoi(optarg));
   break;
  default:
   usage(basename(argv[0]));
   exit(1);
  }
 }

 page_size = sysconf(_SC_PAGESIZE);

 buf = mmap(((void*)0), page_size, PROT_READ|PROT_WRITE,
     MAP_PRIVATE|MAP_ANONYMOUS, 0, 0);
 if (buf == (void *)-1) {
  error("mmap\n", errno);
  exit(1);
 }

 ksft_print_header();
 ksft_set_plan(1);
 ksft_print_msg("%s: Test the uninitialized futex value in FUTEX_WAIT\n",
        basename(argv[0]));


 ret = pthread_create(&thr, ((void*)0), wait_thread, ((void*)0));
 if (ret) {
  error("pthread_create\n", errno);
  ret = RET_ERROR;
  goto out;
 }

 info("waiting %dus for child to return\n", WAIT_US);
 usleep(WAIT_US);

 ret = child_ret;
 if (child_blocked) {
  fail("child blocked in kernel\n");
  ret = RET_FAIL;
 }

 out:
 print_result(TEST_NAME, ret);
 return ret;
}
