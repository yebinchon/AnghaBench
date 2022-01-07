
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_FAIL ;
 int KSFT_PASS ;
 scalar_t__ cg_check_frozen (char*,int) ;
 scalar_t__ cg_create (char*) ;
 scalar_t__ cg_destroy (char*) ;
 scalar_t__ cg_freeze_wait (char*,int) ;
 char* cg_name (char const*,char*) ;
 int free (char*) ;

__attribute__((used)) static int test_cgfreezer_rmdir(const char *root)
{
 int ret = KSFT_FAIL;
 char *parent, *child = ((void*)0);

 parent = cg_name(root, "cg_test_rmdir_A");
 if (!parent)
  goto cleanup;

 child = cg_name(parent, "cg_test_rmdir_B");
 if (!child)
  goto cleanup;

 if (cg_create(parent))
  goto cleanup;

 if (cg_create(child))
  goto cleanup;

 if (cg_freeze_wait(parent, 1))
  goto cleanup;

 if (cg_destroy(child))
  goto cleanup;

 if (cg_check_frozen(parent, 1))
  goto cleanup;

 if (cg_create(child))
  goto cleanup;

 if (cg_check_frozen(child, 1))
  goto cleanup;

 ret = KSFT_PASS;

cleanup:
 if (child)
  cg_destroy(child);
 free(child);
 if (parent)
  cg_destroy(parent);
 free(parent);
 return ret;
}
