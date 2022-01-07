
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_wavefront_t ;


 int WFC_REPORT_FREE_MEMORY ;
 int demunge_int32 (char*,int) ;
 int snd_printk (char*) ;
 scalar_t__ snd_wavefront_cmd (int *,int ,char*,int *) ;

__attribute__((used)) static int
wavefront_freemem (snd_wavefront_t *dev)

{
 char rbuf[8];

 if (snd_wavefront_cmd (dev, WFC_REPORT_FREE_MEMORY, rbuf, ((void*)0))) {
  snd_printk ("can't get memory stats.\n");
  return -1;
 } else {
  return demunge_int32 (rbuf, 4);
 }
}
