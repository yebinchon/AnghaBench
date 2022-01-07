
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_auth {struct gss_auth* target_name; int net; int mech; int * gss_pipe; } ;


 int THIS_MODULE ;
 int gss_mech_put (int ) ;
 int gss_pipe_free (int ) ;
 int kfree (struct gss_auth*) ;
 int module_put (int ) ;
 int put_net (int ) ;

__attribute__((used)) static void
gss_free(struct gss_auth *gss_auth)
{
 gss_pipe_free(gss_auth->gss_pipe[0]);
 gss_pipe_free(gss_auth->gss_pipe[1]);
 gss_mech_put(gss_auth->mech);
 put_net(gss_auth->net);
 kfree(gss_auth->target_name);

 kfree(gss_auth);
 module_put(THIS_MODULE);
}
