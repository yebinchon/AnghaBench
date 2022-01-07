
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int CLONE_FILES ;
 int CLONE_FS ;
 int CLONE_VM ;
 int MEMFD_HUGE_STR ;
 char* SHARED_FT_STR ;
 int abort () ;
 unsigned long default_huge_page_size () ;
 int hugetlbfs_test ;
 int join_idle_thread (int ) ;
 int memfd_str ;
 unsigned long mfd_def_size ;
 int printf (char*,...) ;
 int spawn_idle_thread (int) ;
 int strcmp (char*,char*) ;
 int test_basic () ;
 int test_create () ;
 int test_seal_future_write () ;
 int test_seal_grow () ;
 int test_seal_resize () ;
 int test_seal_shrink () ;
 int test_seal_write () ;
 int test_share_dup (char*,char*) ;
 int test_share_fork (char*,char*) ;
 int test_share_mmap (char*,char*) ;
 int test_share_open (char*,char*) ;

int main(int argc, char **argv)
{
 pid_t pid;

 if (argc == 2) {
  if (!strcmp(argv[1], "hugetlbfs")) {
   unsigned long hpage_size = default_huge_page_size();

   if (!hpage_size) {
    printf("Unable to determine huge page size\n");
    abort();
   }

   hugetlbfs_test = 1;
   memfd_str = MEMFD_HUGE_STR;
   mfd_def_size = hpage_size * 2;
  } else {
   printf("Unknown option: %s\n", argv[1]);
   abort();
  }
 }

 test_create();
 test_basic();

 test_seal_write();
 test_seal_future_write();
 test_seal_shrink();
 test_seal_grow();
 test_seal_resize();

 test_share_dup("SHARE-DUP", "");
 test_share_mmap("SHARE-MMAP", "");
 test_share_open("SHARE-OPEN", "");
 test_share_fork("SHARE-FORK", "");



 pid = spawn_idle_thread(CLONE_FILES | CLONE_FS | CLONE_VM);
 test_share_dup("SHARE-DUP", SHARED_FT_STR);
 test_share_mmap("SHARE-MMAP", SHARED_FT_STR);
 test_share_open("SHARE-OPEN", SHARED_FT_STR);
 test_share_fork("SHARE-FORK", SHARED_FT_STR);
 join_idle_thread(pid);

 printf("memfd: DONE\n");

 return 0;
}
