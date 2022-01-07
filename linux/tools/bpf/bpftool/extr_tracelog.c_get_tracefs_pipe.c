
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int format ;
typedef int FILE ;


 int ARRAY_SIZE (char const* const*) ;
 scalar_t__ PATH_MAX ;
 int TRACEFS_MAGIC ;
 scalar_t__ block_mount ;
 int fclose (int *) ;
 scalar_t__ find_tracefs_mnt_single (int ,char*,char const* const) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,char*,char*) ;
 scalar_t__ mount_tracefs (char*) ;
 int p_info (char*) ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int strcat (char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strcpy (char*,char const* const) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ validate_tracefs_mnt (char*,int ) ;

__attribute__((used)) static bool get_tracefs_pipe(char *mnt)
{
 static const char * const known_mnts[] = {
  "/sys/kernel/debug/tracing",
  "/sys/kernel/tracing",
  "/tracing",
  "/trace",
 };
 const char *pipe_name = "/trace_pipe";
 const char *fstype = "tracefs";
 char type[100], format[32];
 const char * const *ptr;
 bool found = 0;
 FILE *fp;

 for (ptr = known_mnts; ptr < known_mnts + ARRAY_SIZE(known_mnts); ptr++)
  if (find_tracefs_mnt_single(TRACEFS_MAGIC, mnt, *ptr))
   goto exit_found;

 fp = fopen("/proc/mounts", "r");
 if (!fp)
  return 0;


 snprintf(format, sizeof(format), "%%*s %%%zds %%99s %%*s %%*d %%*d\\n",
   PATH_MAX - strlen(pipe_name) - 1);
 while (fscanf(fp, format, mnt, type) == 2)
  if (strcmp(type, fstype) == 0) {
   found = 1;
   break;
  }
 fclose(fp);


 if (found && validate_tracefs_mnt(mnt, TRACEFS_MAGIC))
  goto exit_found;

 if (block_mount)
  return 0;

 p_info("could not find tracefs, attempting to mount it now");





 strcpy(mnt, known_mnts[1]);
 if (mount_tracefs(mnt))
  return 0;

exit_found:
 strcat(mnt, pipe_name);
 return 1;
}
