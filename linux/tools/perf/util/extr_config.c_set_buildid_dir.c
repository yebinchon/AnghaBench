
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEBUG_CACHE_DIR ;
 int MAXPATHLEN ;
 char* buildid_dir ;
 char* getenv (char*) ;
 int scnprintf (char*,int,char*,char const*) ;
 int setenv (char*,char*,int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strncpy (char*,char*,int) ;

void set_buildid_dir(const char *dir)
{
 if (dir)
  scnprintf(buildid_dir, MAXPATHLEN, "%s", dir);


 if (buildid_dir[0] == '\0') {
  char *home = getenv("HOME");

  if (home) {
   snprintf(buildid_dir, MAXPATHLEN, "%s/%s",
     home, DEBUG_CACHE_DIR);
  } else {
   strncpy(buildid_dir, DEBUG_CACHE_DIR, MAXPATHLEN-1);
  }
  buildid_dir[MAXPATHLEN-1] = '\0';
 }

 setenv("PERF_BUILDID_DIR", buildid_dir, 1);
}
