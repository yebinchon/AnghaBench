
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ getline (char**,size_t*,int *) ;
 int pr_debug (char*,char*) ;
 int sscanf (char*,char*,int*,int*,int*) ;
 char* strerror (int ) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
fetch_ubuntu_kernel_version(unsigned int *puint)
{
 ssize_t len;
 size_t line_len = 0;
 char *ptr, *line = ((void*)0);
 int version, patchlevel, sublevel, err;
 FILE *vsig;

 if (!puint)
  return 0;

 vsig = fopen("/proc/version_signature", "r");
 if (!vsig) {
  pr_debug("Open /proc/version_signature failed: %s\n",
    strerror(errno));
  return -1;
 }

 len = getline(&line, &line_len, vsig);
 fclose(vsig);
 err = -1;
 if (len <= 0) {
  pr_debug("Reading from /proc/version_signature failed: %s\n",
    strerror(errno));
  goto errout;
 }

 ptr = strrchr(line, ' ');
 if (!ptr) {
  pr_debug("Parsing /proc/version_signature failed: %s\n", line);
  goto errout;
 }

 err = sscanf(ptr + 1, "%d.%d.%d",
       &version, &patchlevel, &sublevel);
 if (err != 3) {
  pr_debug("Unable to get kernel version from /proc/version_signature '%s'\n",
    line);
  goto errout;
 }

 *puint = (version << 16) + (patchlevel << 8) + sublevel;
 err = 0;
errout:
 free(line);
 return err;
}
