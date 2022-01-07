
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_info {int id; scalar_t__ name; struct mic_info* next; } ;
struct dirent {int * d_name; } ;
typedef int DIR ;


 int MICSYSFSDIR ;
 int atoi (int *) ;
 struct mic_info* calloc (int,int) ;
 int closedir (int *) ;
 scalar_t__ malloc (scalar_t__) ;
 struct mic_info mic_list ;
 int mpsslog (char*,scalar_t__,int ) ;
 int * opendir (int ) ;
 struct dirent* readdir (int *) ;
 int strcpy (scalar_t__,int *) ;
 scalar_t__ strlen (int *) ;
 int strncmp (int *,char*,int) ;

__attribute__((used)) static int
init_mic_list(void)
{
 struct mic_info *mic = &mic_list;
 struct dirent *file;
 DIR *dp;
 int cnt = 0;

 dp = opendir(MICSYSFSDIR);
 if (!dp)
  return 0;

 while ((file = readdir(dp)) != ((void*)0)) {
  if (!strncmp(file->d_name, "mic", 3)) {
   mic->next = calloc(1, sizeof(struct mic_info));
   if (mic->next) {
    mic = mic->next;
    mic->id = atoi(&file->d_name[3]);
    mic->name = malloc(strlen(file->d_name) + 16);
    if (mic->name)
     strcpy(mic->name, file->d_name);
    mpsslog("MIC name %s id %d\n", mic->name,
     mic->id);
    cnt++;
   }
  }
 }

 closedir(dp);
 return cnt;
}
