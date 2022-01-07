
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_writer {struct ctf_stream** stream; } ;
struct ctf_stream {int dummy; } ;


 struct ctf_stream* ctf_stream__create (struct ctf_writer*,int) ;

__attribute__((used)) static struct ctf_stream *ctf_stream(struct ctf_writer *cw, int cpu)
{
 struct ctf_stream *cs = cw->stream[cpu];

 if (!cs) {
  cs = ctf_stream__create(cw, cpu);
  cw->stream[cpu] = cs;
 }

 return cs;
}
