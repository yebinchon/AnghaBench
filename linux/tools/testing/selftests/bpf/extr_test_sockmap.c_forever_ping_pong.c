
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockmap_options {scalar_t__ verbose; } ;
typedef int fd_set ;
typedef int buf ;


 scalar_t__ EWOULDBLOCK ;
 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int c1 ;
 int c2 ;
 int close (int) ;
 scalar_t__ errno ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int p1 ;
 int p2 ;
 int perror (char*) ;
 int printf (char*) ;
 int recv (int,char*,int,int ) ;
 scalar_t__ running ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int send (int,char*,int,int ) ;
 int sleep (int) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static int forever_ping_pong(int rate, struct sockmap_options *opt)
{
 struct timeval timeout;
 char buf[1024] = {0};
 int sc;

 timeout.tv_sec = 10;
 timeout.tv_usec = 0;


 sc = send(c1, buf, sizeof(buf), 0);
 if (sc < 0) {
  perror("send failed()\n");
  return sc;
 }

 do {
  int s, rc, i, max_fd = p2;
  fd_set w;


  FD_ZERO(&w);
  FD_SET(c1, &w);
  FD_SET(c2, &w);
  FD_SET(p1, &w);
  FD_SET(p2, &w);

  s = select(max_fd + 1, &w, ((void*)0), ((void*)0), &timeout);
  if (s == -1) {
   perror("select()");
   break;
  } else if (!s) {
   fprintf(stderr, "unexpected timeout\n");
   break;
  }

  for (i = 0; i <= max_fd && s > 0; ++i) {
   if (!FD_ISSET(i, &w))
    continue;

   s--;

   rc = recv(i, buf, sizeof(buf), 0);
   if (rc < 0) {
    if (errno != EWOULDBLOCK) {
     perror("recv failed()\n");
     return rc;
    }
   }

   if (rc == 0) {
    close(i);
    break;
   }

   sc = send(i, buf, rc, 0);
   if (sc < 0) {
    perror("send failed()\n");
    return sc;
   }
  }

  if (rate)
   sleep(rate);

  if (opt->verbose) {
   printf(".");
   fflush(stdout);

  }
 } while (running);

 return 0;
}
