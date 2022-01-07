
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT_EMPTY_PATH ;
 int O_RDONLY ;
 int PATH_MAX ;
 int XX_DIR_LEN ;
 scalar_t__ check_execveat (int,char*,int ) ;
 scalar_t__ check_execveat_invoked_rc (int,char*,int ,int,int) ;
 int errno ;
 int exe_cp (char const*,char*) ;
 int free (char*) ;
 char* getcwd (int *,int ) ;
 char* longpath ;
 int memset (char*,char,int) ;
 int mkdir (char*,int) ;
 int open (char*,int ) ;
 int printf (char*,...) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 char* strerror (int) ;
 int strlen (char*) ;

__attribute__((used)) static int check_execveat_pathmax(int root_dfd, const char *src, int is_script)
{
 int fail = 0;
 int ii, count, len;
 char longname[XX_DIR_LEN + 1];
 int fd;

 if (*longpath == '\0') {

  char *cwd = getcwd(((void*)0), 0);

  if (!cwd) {
   printf("Failed to getcwd(), errno=%d (%s)\n",
          errno, strerror(errno));
   return 2;
  }
  strcpy(longpath, cwd);
  strcat(longpath, "/");
  memset(longname, 'x', XX_DIR_LEN - 1);
  longname[XX_DIR_LEN - 1] = '/';
  longname[XX_DIR_LEN] = '\0';
  count = (PATH_MAX - 3 - strlen(cwd)) / XX_DIR_LEN;
  for (ii = 0; ii < count; ii++) {
   strcat(longpath, longname);
   mkdir(longpath, 0755);
  }
  len = (PATH_MAX - 3 - strlen(cwd)) - (count * XX_DIR_LEN);
  if (len <= 0)
   len = 1;
  memset(longname, 'y', len);
  longname[len] = '\0';
  strcat(longpath, longname);
  free(cwd);
 }
 exe_cp(src, longpath);






 fd = open(longpath, O_RDONLY);
 if (fd > 0) {
  printf("Invoke copy of '%s' via filename of length %zu:\n",
   src, strlen(longpath));
  fail += check_execveat(fd, "", AT_EMPTY_PATH);
 } else {
  printf("Failed to open length %zu filename, errno=%d (%s)\n",
   strlen(longpath), errno, strerror(errno));
  fail++;
 }
 if (is_script)
  fail += check_execveat_invoked_rc(root_dfd, longpath + 1, 0,
        127, 126);
 else
  fail += check_execveat(root_dfd, longpath + 1, 0);

 return fail;
}
