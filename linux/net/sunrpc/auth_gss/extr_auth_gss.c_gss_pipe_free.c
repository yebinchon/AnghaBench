
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_pipe {int kref; } ;


 int __gss_pipe_release ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void gss_pipe_free(struct gss_pipe *p)
{
 if (p != ((void*)0))
  kref_put(&p->kref, __gss_pipe_release);
}
