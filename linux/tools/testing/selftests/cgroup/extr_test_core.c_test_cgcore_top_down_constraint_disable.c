
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 char* cg_name (char const*,char*) ;
 scalar_t__ cg_write (char*,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static int test_cgcore_top_down_constraint_disable(const char *root)
{
 int ret = KSFT_FAIL;
 char *parent = ((void*)0), *child = ((void*)0);

 parent = cg_name(root, "cg_test_parent");
 child = cg_name(root, "cg_test_parent/cg_test_child");
 if (!parent || !child)
  goto cleanup;

 if (cg_create(parent))
  goto cleanup;

 if (cg_create(child))
  goto cleanup;

 if (cg_write(parent, "cgroup.subtree_control", "+memory"))
  goto cleanup;

 if (cg_write(child, "cgroup.subtree_control", "+memory"))
  goto cleanup;

 if (!cg_write(parent, "cgroup.subtree_control", "-memory"))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (child)
  cg_destroy(child);
 if (parent)
  cg_destroy(parent);
 free(child);
 free(parent);
 return ret;
}
