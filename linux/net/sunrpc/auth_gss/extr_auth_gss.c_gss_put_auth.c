
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_auth {int kref; } ;


 int gss_free_callback ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void
gss_put_auth(struct gss_auth *gss_auth)
{
 kref_put(&gss_auth->kref, gss_free_callback);
}
