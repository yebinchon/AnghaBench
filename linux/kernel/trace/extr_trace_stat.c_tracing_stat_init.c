
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 scalar_t__ IS_ERR (struct dentry*) ;
 int pr_warn (char*) ;
 int stat_dir ;
 int tracefs_create_dir (char*,struct dentry*) ;
 struct dentry* tracing_init_dentry () ;

__attribute__((used)) static int tracing_stat_init(void)
{
 struct dentry *d_tracing;

 d_tracing = tracing_init_dentry();
 if (IS_ERR(d_tracing))
  return 0;

 stat_dir = tracefs_create_dir("trace_stat", d_tracing);
 if (!stat_dir)
  pr_warn("Could not create tracefs 'trace_stat' entry\n");
 return 0;
}
