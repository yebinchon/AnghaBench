
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_uring {int dummy; } ;
typedef int off_t ;


 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int QD ;
 int close (scalar_t__) ;
 int copy_file (struct io_uring*,int ) ;
 scalar_t__ get_file_size (scalar_t__,int *) ;
 scalar_t__ infd ;
 int io_uring_queue_exit (struct io_uring*) ;
 scalar_t__ open (char*,int,...) ;
 scalar_t__ outfd ;
 int perror (char*) ;
 int printf (char*,char*) ;
 scalar_t__ setup_context (int ,struct io_uring*) ;

int main(int argc, char *argv[])
{
 struct io_uring ring;
 off_t insize;
 int ret;

 if (argc < 3) {
  printf("%s: infile outfile\n", argv[0]);
  return 1;
 }

 infd = open(argv[1], O_RDONLY);
 if (infd < 0) {
  perror("open infile");
  return 1;
 }
 outfd = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0644);
 if (outfd < 0) {
  perror("open outfile");
  return 1;
 }

 if (setup_context(QD, &ring))
  return 1;
 if (get_file_size(infd, &insize))
  return 1;

 ret = copy_file(&ring, insize);

 close(infd);
 close(outfd);
 io_uring_queue_exit(&ring);
 return ret;
}
