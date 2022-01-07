
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p9_client {int status; } ;


 int Disconnected ;
 int P9_DEBUG_9P ;
 int p9_debug (int ,char*,struct p9_client*) ;

void p9_client_disconnect(struct p9_client *clnt)
{
 p9_debug(P9_DEBUG_9P, "clnt %p\n", clnt);
 clnt->status = Disconnected;
}
