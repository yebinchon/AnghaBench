
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timechart {scalar_t__ skip_eagain; struct per_pid* all_data; } ;
struct per_pidcomm {int Y; double max_bytes; double total_bytes; struct per_pidcomm* next; int start_time; scalar_t__ comm; struct io_sample* io_samples; int end_time; int display; } ;
struct per_pid {int pid; struct per_pid* next; struct per_pidcomm* all; } ;
struct io_sample {scalar_t__ type; int merges; scalar_t__ err; int fd; int end_time; int start_time; scalar_t__ bytes; struct io_sample* next; } ;


 scalar_t__ EAGAIN ;
 scalar_t__ IOTYPE_POLL ;
 scalar_t__ IOTYPE_READ ;
 scalar_t__ IOTYPE_RX ;
 scalar_t__ IOTYPE_SYNC ;
 scalar_t__ IOTYPE_TX ;
 scalar_t__ IOTYPE_WRITE ;
 int sprintf (char*,char*,char*,int,double,char const*) ;
 int svg_box (int,int ,int ,char*) ;
 int svg_fbox (int,int ,int ,int,char*,int ,scalar_t__,int ) ;
 int svg_lbox (int,int ,int ,double,char*,int ,scalar_t__,int ) ;
 int svg_text (int,int ,char*) ;
 int svg_ubox (int,int ,int ,double,char*,int ,scalar_t__,int ) ;

__attribute__((used)) static void draw_io_bars(struct timechart *tchart)
{
 const char *suf;
 double bytes;
 char comm[256];
 struct per_pid *p;
 struct per_pidcomm *c;
 struct io_sample *sample;
 int Y = 1;

 p = tchart->all_data;
 while (p) {
  c = p->all;
  while (c) {
   if (!c->display) {
    c->Y = 0;
    c = c->next;
    continue;
   }

   svg_box(Y, c->start_time, c->end_time, "process3");
   sample = c->io_samples;
   for (sample = c->io_samples; sample; sample = sample->next) {
    double h = (double)sample->bytes / c->max_bytes;

    if (tchart->skip_eagain &&
        sample->err == -EAGAIN)
     continue;

    if (sample->err)
     h = 1;

    if (sample->type == IOTYPE_SYNC)
     svg_fbox(Y,
      sample->start_time,
      sample->end_time,
      1,
      sample->err ? "error" : "sync",
      sample->fd,
      sample->err,
      sample->merges);
    else if (sample->type == IOTYPE_POLL)
     svg_fbox(Y,
      sample->start_time,
      sample->end_time,
      1,
      sample->err ? "error" : "poll",
      sample->fd,
      sample->err,
      sample->merges);
    else if (sample->type == IOTYPE_READ)
     svg_ubox(Y,
      sample->start_time,
      sample->end_time,
      h,
      sample->err ? "error" : "disk",
      sample->fd,
      sample->err,
      sample->merges);
    else if (sample->type == IOTYPE_WRITE)
     svg_lbox(Y,
      sample->start_time,
      sample->end_time,
      h,
      sample->err ? "error" : "disk",
      sample->fd,
      sample->err,
      sample->merges);
    else if (sample->type == IOTYPE_RX)
     svg_ubox(Y,
      sample->start_time,
      sample->end_time,
      h,
      sample->err ? "error" : "net",
      sample->fd,
      sample->err,
      sample->merges);
    else if (sample->type == IOTYPE_TX)
     svg_lbox(Y,
      sample->start_time,
      sample->end_time,
      h,
      sample->err ? "error" : "net",
      sample->fd,
      sample->err,
      sample->merges);
   }

   suf = "";
   bytes = c->total_bytes;
   if (bytes > 1024) {
    bytes = bytes / 1024;
    suf = "K";
   }
   if (bytes > 1024) {
    bytes = bytes / 1024;
    suf = "M";
   }
   if (bytes > 1024) {
    bytes = bytes / 1024;
    suf = "G";
   }


   sprintf(comm, "%s:%i (%3.1f %sbytes)", c->comm ?: "", p->pid, bytes, suf);
   svg_text(Y, c->start_time, comm);

   c->Y = Y;
   Y++;
   c = c->next;
  }
  p = p->next;
 }
}
