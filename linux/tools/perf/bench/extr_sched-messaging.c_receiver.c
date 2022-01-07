
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receiver_context {unsigned int num_packets; int * in_fds; int wakefd; int ready_out; } ;


 int DATASIZE ;
 int EXIT_FAILURE ;
 int close (int ) ;
 int err (int ,char*) ;
 int read (int ,char*,int) ;
 int ready (int ,int ) ;
 int thread_mode ;

__attribute__((used)) static void *receiver(struct receiver_context* ctx)
{
 unsigned int i;

 if (!thread_mode)
  close(ctx->in_fds[1]);


 ready(ctx->ready_out, ctx->wakefd);


 for (i = 0; i < ctx->num_packets; i++) {
  char data[DATASIZE];
  int ret, done = 0;

again:
  ret = read(ctx->in_fds[0], data + done, DATASIZE - done);
  if (ret < 0)
   err(EXIT_FAILURE, "SERVER: read");
  done += ret;
  if (done < DATASIZE)
   goto again;
 }

 return ((void*)0);
}
