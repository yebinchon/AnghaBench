
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_fcall {int size; int tag; int id; } ;
struct p9_client {int dummy; } ;


 int P9_DEBUG_9P ;
 int p9_debug (int ,char*,int,int ,int ) ;
 int p9pdu_writef (struct p9_fcall*,int ,char*,int) ;
 int trace_9p_protocol_dump (struct p9_client*,struct p9_fcall*) ;

int p9pdu_finalize(struct p9_client *clnt, struct p9_fcall *pdu)
{
 int size = pdu->size;
 int err;

 pdu->size = 0;
 err = p9pdu_writef(pdu, 0, "d", size);
 pdu->size = size;

 trace_9p_protocol_dump(clnt, pdu);
 p9_debug(P9_DEBUG_9P, ">>> size=%d type: %d tag: %d\n",
   pdu->size, pdu->id, pdu->tag);

 return err;
}
