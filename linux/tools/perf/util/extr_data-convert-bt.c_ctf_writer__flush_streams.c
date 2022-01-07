
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_writer {int stream_cnt; int * stream; } ;


 int ctf_stream__flush (int ) ;

__attribute__((used)) static int ctf_writer__flush_streams(struct ctf_writer *cw)
{
 int cpu, ret = 0;

 for (cpu = 0; cpu < cw->stream_cnt && !ret; cpu++)
  ret = ctf_stream__flush(cw->stream[cpu]);

 return ret;
}
