
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_EMPTY_PATH ;
 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EACCES ;
 int EBADF ;
 int EFAULT ;
 int EINVAL ;
 int ELOOP ;
 int ENOENT ;
 scalar_t__ ENOSYS ;
 int ENOTDIR ;
 int O_CLOEXEC ;
 int O_DIRECTORY ;
 int O_PATH ;
 int O_RDONLY ;
 int SEEK_SET ;
 scalar_t__ check_execveat (int,char*,int) ;
 scalar_t__ check_execveat_fail (int,char*,int,int ) ;
 scalar_t__ check_execveat_pathmax (int,char*,int) ;
 char* concat (char*,char*) ;
 scalar_t__ errno ;
 int execveat_ (int,int *,int *,int *,int ) ;
 int ksft_exit_skip (char*) ;
 int lseek (int,int,int ) ;
 int open_or_die (char*,int) ;
 char* realpath (char*,int *) ;
 int rename (char*,char*) ;
 int unlink (char*) ;

__attribute__((used)) static int run_tests(void)
{
 int fail = 0;
 char *fullname = realpath("execveat", ((void*)0));
 char *fullname_script = realpath("script", ((void*)0));
 char *fullname_symlink = concat(fullname, ".symlink");
 int subdir_dfd = open_or_die("subdir", O_DIRECTORY|O_RDONLY);
 int subdir_dfd_ephemeral = open_or_die("subdir.ephemeral",
            O_DIRECTORY|O_RDONLY);
 int dot_dfd = open_or_die(".", O_DIRECTORY|O_RDONLY);
 int root_dfd = open_or_die("/", O_DIRECTORY|O_RDONLY);
 int dot_dfd_path = open_or_die(".", O_DIRECTORY|O_RDONLY|O_PATH);
 int dot_dfd_cloexec = open_or_die(".", O_DIRECTORY|O_RDONLY|O_CLOEXEC);
 int fd = open_or_die("execveat", O_RDONLY);
 int fd_path = open_or_die("execveat", O_RDONLY|O_PATH);
 int fd_symlink = open_or_die("execveat.symlink", O_RDONLY);
 int fd_denatured = open_or_die("execveat.denatured", O_RDONLY);
 int fd_denatured_path = open_or_die("execveat.denatured",
         O_RDONLY|O_PATH);
 int fd_script = open_or_die("script", O_RDONLY);
 int fd_ephemeral = open_or_die("execveat.ephemeral", O_RDONLY);
 int fd_ephemeral_path = open_or_die("execveat.path.ephemeral",
         O_RDONLY|O_PATH);
 int fd_script_ephemeral = open_or_die("script.ephemeral", O_RDONLY);
 int fd_cloexec = open_or_die("execveat", O_RDONLY|O_CLOEXEC);
 int fd_script_cloexec = open_or_die("script", O_RDONLY|O_CLOEXEC);


 errno = 0;
 execveat_(-1, ((void*)0), ((void*)0), ((void*)0), 0);
 if (errno == ENOSYS) {
  ksft_exit_skip(
   "ENOSYS calling execveat - no kernel support?\n");
 }


 lseek(fd, 10, SEEK_SET);



 fail += check_execveat(subdir_dfd, "../execveat", 0);
 fail += check_execveat(dot_dfd, "execveat", 0);
 fail += check_execveat(dot_dfd_path, "execveat", 0);

 fail += check_execveat(AT_FDCWD, fullname, 0);

 fail += check_execveat(99, fullname, 0);

 fail += check_execveat(fd, "", AT_EMPTY_PATH);

 fail += check_execveat(fd_cloexec, "", AT_EMPTY_PATH);

 fail += check_execveat(fd_path, "", AT_EMPTY_PATH);



 rename("execveat.ephemeral", "execveat.moved");
 fail += check_execveat(fd_ephemeral, "", AT_EMPTY_PATH);

 unlink("execveat.moved");
 fail += check_execveat(fd_ephemeral, "", AT_EMPTY_PATH);



 unlink("execveat.path.ephemeral");
 fail += check_execveat(fd_ephemeral_path, "", AT_EMPTY_PATH);


 fail += check_execveat_fail(fd, "", 0, ENOENT);
 fail += check_execveat_fail(fd, ((void*)0), AT_EMPTY_PATH, EFAULT);



 fail += check_execveat(dot_dfd, "execveat.symlink", 0);
 fail += check_execveat(dot_dfd_path, "execveat.symlink", 0);

 fail += check_execveat(AT_FDCWD, fullname_symlink, 0);

 fail += check_execveat(fd_symlink, "", AT_EMPTY_PATH);
 fail += check_execveat(fd_symlink, "",
          AT_EMPTY_PATH|AT_SYMLINK_NOFOLLOW);



 fail += check_execveat_fail(dot_dfd, "execveat.symlink",
        AT_SYMLINK_NOFOLLOW, ELOOP);
 fail += check_execveat_fail(dot_dfd_path, "execveat.symlink",
        AT_SYMLINK_NOFOLLOW, ELOOP);

 fail += check_execveat_fail(AT_FDCWD, fullname_symlink,
        AT_SYMLINK_NOFOLLOW, ELOOP);



 fail += check_execveat(subdir_dfd, "../script", 0);
 fail += check_execveat(dot_dfd, "script", 0);
 fail += check_execveat(dot_dfd_path, "script", 0);

 fail += check_execveat(AT_FDCWD, fullname_script, 0);

 fail += check_execveat(fd_script, "", AT_EMPTY_PATH);
 fail += check_execveat(fd_script, "",
          AT_EMPTY_PATH|AT_SYMLINK_NOFOLLOW);

 fail += check_execveat_fail(fd_script_cloexec, "", AT_EMPTY_PATH,
        ENOENT);
 fail += check_execveat_fail(dot_dfd_cloexec, "script", 0, ENOENT);



 rename("script.ephemeral", "script.moved");
 fail += check_execveat(fd_script_ephemeral, "", AT_EMPTY_PATH);

 unlink("script.moved");
 fail += check_execveat(fd_script_ephemeral, "", AT_EMPTY_PATH);


 rename("subdir.ephemeral", "subdir.moved");
 fail += check_execveat(subdir_dfd_ephemeral, "../script", 0);
 fail += check_execveat(subdir_dfd_ephemeral, "script", 0);

 unlink("subdir.moved/script");
 unlink("subdir.moved");

 fail += check_execveat(subdir_dfd_ephemeral, "../script", 0);
 fail += check_execveat_fail(subdir_dfd_ephemeral, "script", 0, ENOENT);


 fail += check_execveat_fail(dot_dfd, "execveat", 0xFFFF, EINVAL);

 fail += check_execveat_fail(dot_dfd, "no-such-file", 0, ENOENT);
 fail += check_execveat_fail(dot_dfd_path, "no-such-file", 0, ENOENT);
 fail += check_execveat_fail(AT_FDCWD, "no-such-file", 0, ENOENT);

 fail += check_execveat_fail(dot_dfd, "", AT_EMPTY_PATH, EACCES);

 fail += check_execveat_fail(dot_dfd, "Makefile", 0, EACCES);
 fail += check_execveat_fail(fd_denatured, "", AT_EMPTY_PATH, EACCES);
 fail += check_execveat_fail(fd_denatured_path, "", AT_EMPTY_PATH,
        EACCES);

 fail += check_execveat_fail(99, "", AT_EMPTY_PATH, EBADF);
 fail += check_execveat_fail(99, "execveat", 0, EBADF);

 fail += check_execveat_fail(fd, "execveat", 0, ENOTDIR);

 fail += check_execveat_pathmax(root_dfd, "execveat", 0);
 fail += check_execveat_pathmax(root_dfd, "script", 1);
 return fail;
}
