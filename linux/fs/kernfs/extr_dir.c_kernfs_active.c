
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernfs_node {int active; } ;


 scalar_t__ atomic_read (int *) ;
 int kernfs_mutex ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static bool kernfs_active(struct kernfs_node *kn)
{
 lockdep_assert_held(&kernfs_mutex);
 return atomic_read(&kn->active) >= 0;
}
