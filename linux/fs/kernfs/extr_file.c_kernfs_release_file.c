
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kernfs_open_file {int released; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct kernfs_node {TYPE_2__ attr; } ;
struct TYPE_3__ {int (* release ) (struct kernfs_open_file*) ;} ;


 int kernfs_open_file_mutex ;
 int lockdep_assert_held (int *) ;
 int stub1 (struct kernfs_open_file*) ;

__attribute__((used)) static void kernfs_release_file(struct kernfs_node *kn,
    struct kernfs_open_file *of)
{







 lockdep_assert_held(&kernfs_open_file_mutex);

 if (!of->released) {





  kn->attr.ops->release(of);
  of->released = 1;
 }
}
