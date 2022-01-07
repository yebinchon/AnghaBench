
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct external_find_info {char* dir_pathname; scalar_t__ requested_file_type; char* temp_buffer; int wildcard_spec; int dir_ptr; } ;
struct dirent {char* d_name; } ;


 scalar_t__ REQUEST_DIR_ONLY ;
 scalar_t__ REQUEST_FILE_ONLY ;
 scalar_t__ S_ISDIR (int ) ;
 char* calloc (int,int) ;
 int fnmatch (int ,char*,int ) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 struct dirent* readdir (int ) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

char *acpi_os_get_next_filename(void *dir_handle)
{
 struct external_find_info *external_info = dir_handle;
 struct dirent *dir_entry;
 char *temp_str;
 int str_len;
 struct stat temp_stat;
 int err;

 while ((dir_entry = readdir(external_info->dir_ptr))) {
  if (!fnmatch
      (external_info->wildcard_spec, dir_entry->d_name, 0)) {
   if (dir_entry->d_name[0] == '.') {
    continue;
   }

   str_len = strlen(dir_entry->d_name) +
       strlen(external_info->dir_pathname) + 2;

   temp_str = calloc(str_len, 1);
   if (!temp_str) {
    fprintf(stderr,
     "Could not allocate buffer for temporary string\n");
    return (((void*)0));
   }

   strcpy(temp_str, external_info->dir_pathname);
   strcat(temp_str, "/");
   strcat(temp_str, dir_entry->d_name);

   err = stat(temp_str, &temp_stat);
   if (err == -1) {
    fprintf(stderr,
     "Cannot stat file (should not happen) - %s\n",
     temp_str);
    free(temp_str);
    return (((void*)0));
   }

   free(temp_str);

   if ((S_ISDIR(temp_stat.st_mode)
        && (external_info->requested_file_type ==
     REQUEST_DIR_ONLY))
       || ((!S_ISDIR(temp_stat.st_mode)
     && external_info->requested_file_type ==
     REQUEST_FILE_ONLY))) {



    strcpy(external_info->temp_buffer,
           dir_entry->d_name);
    return (external_info->temp_buffer);
   }
  }
 }

 return (((void*)0));
}
