
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_args {int dummy; } ;
struct fs_context {struct gfs2_args* fs_private; } ;


 int kfree (struct gfs2_args*) ;

__attribute__((used)) static void gfs2_fc_free(struct fs_context *fc)
{
 struct gfs2_args *args = fc->fs_private;

 kfree(args);
}
