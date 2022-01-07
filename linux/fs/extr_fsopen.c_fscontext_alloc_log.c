
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fs_context {TYPE_1__* fs_type; TYPE_2__* log; } ;
struct TYPE_4__ {int owner; int usage; } ;
struct TYPE_3__ {int owner; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_2__* kzalloc (int,int ) ;
 int refcount_set (int *,int) ;

__attribute__((used)) static int fscontext_alloc_log(struct fs_context *fc)
{
 fc->log = kzalloc(sizeof(*fc->log), GFP_KERNEL);
 if (!fc->log)
  return -ENOMEM;
 refcount_set(&fc->log->usage, 1);
 fc->log->owner = fc->fs_type->owner;
 return 0;
}
