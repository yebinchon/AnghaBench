
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_writer {int stream_cnt; int * stream; } ;


 int ctf_stream__delete (int ) ;
 int zfree (int **) ;

__attribute__((used)) static void free_streams(struct ctf_writer *cw)
{
 int cpu;

 for (cpu = 0; cpu < cw->stream_cnt; cpu++)
  ctf_stream__delete(cw->stream[cpu]);

 zfree(&cw->stream);
}
