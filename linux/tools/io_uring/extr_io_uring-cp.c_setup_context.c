
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring {int dummy; } ;


 int fprintf (int ,char*,char*) ;
 int io_uring_queue_init (unsigned int,struct io_uring*,int ) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static int setup_context(unsigned entries, struct io_uring *ring)
{
 int ret;

 ret = io_uring_queue_init(entries, ring, 0);
 if (ret < 0) {
  fprintf(stderr, "queue_init: %s\n", strerror(-ret));
  return -1;
 }

 return 0;
}
