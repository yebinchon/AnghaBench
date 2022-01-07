
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int kcore_copy__compare_files (char*,char*) ;
 int scnprintf (char*,int,char*,char const*,char const*) ;

__attribute__((used)) static int kcore_copy__compare_file(const char *from_dir, const char *to_dir,
        const char *name)
{
 char from_filename[PATH_MAX];
 char to_filename[PATH_MAX];

 scnprintf(from_filename, PATH_MAX, "%s/%s", from_dir, name);
 scnprintf(to_filename, PATH_MAX, "%s/%s", to_dir, name);

 return kcore_copy__compare_files(from_filename, to_filename);
}
