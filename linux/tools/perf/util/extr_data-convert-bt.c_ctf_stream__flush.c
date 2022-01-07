
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_stream {scalar_t__ count; int cpu; int stream; } ;


 int bt_ctf_stream_flush (int ) ;
 int pr (char*,int ,scalar_t__) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int ctf_stream__flush(struct ctf_stream *cs)
{
 int err = 0;

 if (cs) {
  err = bt_ctf_stream_flush(cs->stream);
  if (err)
   pr_err("CTF stream %d flush failed\n", cs->cpu);

  pr("Flush stream for cpu %d (%u samples)\n",
     cs->cpu, cs->count);

  cs->count = 0;
 }

 return err;
}
