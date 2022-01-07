
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmod_path {int kmod; int comp; scalar_t__ name; } ;
typedef int m ;


 int TEST_ASSERT_VAL (char*,int) ;
 int __kmod_path__parse (struct kmod_path*,char const*,int) ;
 int free (scalar_t__) ;
 int memset (struct kmod_path*,int,int) ;
 int pr_debug (char*,char const*,int,int,int,scalar_t__) ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int test(const char *path, bool alloc_name, bool kmod,
  int comp, const char *name)
{
 struct kmod_path m;

 memset(&m, 0x0, sizeof(m));

 TEST_ASSERT_VAL("kmod_path__parse",
   !__kmod_path__parse(&m, path, alloc_name));

 pr_debug("%s - alloc name %d, kmod %d, comp %d, name '%s'\n",
   path, alloc_name, m.kmod, m.comp, m.name);

 TEST_ASSERT_VAL("wrong kmod", m.kmod == kmod);
 TEST_ASSERT_VAL("wrong comp", m.comp == comp);

 if (name)
  TEST_ASSERT_VAL("wrong name", m.name && !strcmp(name, m.name));
 else
  TEST_ASSERT_VAL("wrong name", !m.name);

 free(m.name);
 return 0;
}
