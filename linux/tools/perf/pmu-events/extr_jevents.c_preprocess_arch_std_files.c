
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct FTW {int level; } ;


 int FTW_F ;
 scalar_t__ is_json_file (char const*) ;
 int json_events (char const*,int ,void*) ;
 int save_arch_std_events ;

__attribute__((used)) static int preprocess_arch_std_files(const char *fpath, const struct stat *sb,
    int typeflag, struct FTW *ftwbuf)
{
 int level = ftwbuf->level;
 int is_file = typeflag == FTW_F;

 if (level == 1 && is_file && is_json_file(fpath))
  return json_events(fpath, save_arch_std_events, (void *)sb);

 return 0;
}
