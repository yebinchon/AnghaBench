
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockmap_options {int drop_expected; } ;
struct msg_stats {int bytes_sent; int end; int start; } ;
typedef int FILE ;


 int CLOCK_MONOTONIC ;
 int EIO ;
 int O_RDONLY ;
 int SEEK_SET ;
 int clock_gettime (int ,int *) ;
 int close (int) ;
 int fclose (int *) ;
 int fflush (int *) ;
 int * fopen (char*,char*) ;
 int fseek (int *,int ,int ) ;
 int fwrite (unsigned char*,int,int,int *) ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*,int) ;
 int sendfile (int,int,int *,int) ;

__attribute__((used)) static int msg_loop_sendpage(int fd, int iov_length, int cnt,
        struct msg_stats *s,
        struct sockmap_options *opt)
{
 bool drop = opt->drop_expected;
 unsigned char k = 0;
 FILE *file;
 int i, fp;

 file = fopen(".sendpage_tst.tmp", "w+");
 for (i = 0; i < iov_length * cnt; i++, k++)
  fwrite(&k, sizeof(char), 1, file);
 fflush(file);
 fseek(file, 0, SEEK_SET);
 fclose(file);

 fp = open(".sendpage_tst.tmp", O_RDONLY);
 clock_gettime(CLOCK_MONOTONIC, &s->start);
 for (i = 0; i < cnt; i++) {
  int sent = sendfile(fd, fp, ((void*)0), iov_length);

  if (!drop && sent < 0) {
   perror("send loop error:");
   close(fp);
   return sent;
  } else if (drop && sent >= 0) {
   printf("sendpage loop error expected: %i\n", sent);
   close(fp);
   return -EIO;
  }

  if (sent > 0)
   s->bytes_sent += sent;
 }
 clock_gettime(CLOCK_MONOTONIC, &s->end);
 close(fp);
 return 0;
}
