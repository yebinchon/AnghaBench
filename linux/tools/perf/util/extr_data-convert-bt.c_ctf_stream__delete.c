
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctf_stream {int stream; } ;


 int bt_ctf_stream_put (int ) ;
 int free (struct ctf_stream*) ;

__attribute__((used)) static void ctf_stream__delete(struct ctf_stream *cs)
{
 if (cs) {
  bt_ctf_stream_put(cs->stream);
  free(cs);
 }
}
