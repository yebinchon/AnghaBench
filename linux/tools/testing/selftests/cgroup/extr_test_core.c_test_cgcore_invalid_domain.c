
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOPNOTSUPP ;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ cg_create (char*) ;
 int cg_destroy (char*) ;
 int cg_enter_current (char const*) ;
 char* cg_name (char const*,char*) ;
 scalar_t__ cg_read_strcmp (char*,char*,char*) ;
 scalar_t__ cg_write (char*,char*,char*) ;
 scalar_t__ errno ;
 int free (char*) ;

__attribute__((used)) static int test_cgcore_invalid_domain(const char *root)
{
 int ret = KSFT_FAIL;
 char *grandparent = ((void*)0), *parent = ((void*)0), *child = ((void*)0);

 grandparent = cg_name(root, "cg_test_grandparent");
 parent = cg_name(root, "cg_test_grandparent/cg_test_parent");
 child = cg_name(root, "cg_test_grandparent/cg_test_parent/cg_test_child");
 if (!parent || !child || !grandparent)
  goto cleanup;

 if (cg_create(grandparent))
  goto cleanup;

 if (cg_create(parent))
  goto cleanup;

 if (cg_create(child))
  goto cleanup;

 if (cg_write(parent, "cgroup.type", "threaded"))
  goto cleanup;

 if (cg_read_strcmp(child, "cgroup.type", "domain invalid\n"))
  goto cleanup;

 if (!cg_enter_current(child))
  goto cleanup;

 if (errno != EOPNOTSUPP)
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 cg_enter_current(root);
 if (child)
  cg_destroy(child);
 if (parent)
  cg_destroy(parent);
 if (grandparent)
  cg_destroy(grandparent);
 free(child);
 free(parent);
 free(grandparent);
 return ret;
}
