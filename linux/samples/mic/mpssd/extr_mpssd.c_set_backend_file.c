
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * backend_file; } ;
struct mic_info {int id; TYPE_1__ mic_virtblk; int name; } ;
typedef int FILE ;


 int PATH_MAX ;
 int fclose (int *) ;
 char* fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int * malloc (scalar_t__) ;
 char* mic_config_dir ;
 int mpsslog (char*,int ,int) ;
 int snprintf (char*,int,char*,char*,int) ;
 char* strchr (char*,char) ;
 int strcpy (int *,char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;
 char* virtblk_backend ;

__attribute__((used)) static bool
set_backend_file(struct mic_info *mic)
{
 FILE *config;
 char buff[PATH_MAX], *line, *evv, *p;

 snprintf(buff, PATH_MAX, "%s/mpssd%03d.conf", mic_config_dir, mic->id);
 config = fopen(buff, "r");
 if (config == ((void*)0))
  return 0;
 do {
  line = fgets(buff, PATH_MAX, config);
  if (line == ((void*)0))
   break;
  if (*line == '#')
   continue;
  p = strchr(line, '\n');
  if (p)
   *p = '\0';
 } while (strncmp(line, virtblk_backend, strlen(virtblk_backend)) != 0);
 fclose(config);
 if (line == ((void*)0))
  return 0;
 evv = strchr(line, '=');
 if (evv == ((void*)0))
  return 0;
 mic->mic_virtblk.backend_file = malloc(strlen(evv) + 1);
 if (mic->mic_virtblk.backend_file == ((void*)0)) {
  mpsslog("%s %d can't allocate memory\n", mic->name, mic->id);
  return 0;
 }
 strcpy(mic->mic_virtblk.backend_file, evv + 1);
 return 1;
}
