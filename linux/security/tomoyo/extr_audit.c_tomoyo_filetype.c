
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;







 int const S_IFMT ;


 size_t TOMOYO_TYPE_IS_BLOCK_DEV ;
 size_t TOMOYO_TYPE_IS_CHAR_DEV ;
 size_t TOMOYO_TYPE_IS_DIRECTORY ;
 size_t TOMOYO_TYPE_IS_FIFO ;
 size_t TOMOYO_TYPE_IS_FILE ;
 size_t TOMOYO_TYPE_IS_SOCKET ;
 size_t TOMOYO_TYPE_IS_SYMLINK ;
 char const** tomoyo_condition_keyword ;

__attribute__((used)) static inline const char *tomoyo_filetype(const umode_t mode)
{
 switch (mode & S_IFMT) {
 case 129:
 case 0:
  return tomoyo_condition_keyword[TOMOYO_TYPE_IS_FILE];
 case 132:
  return tomoyo_condition_keyword[TOMOYO_TYPE_IS_DIRECTORY];
 case 130:
  return tomoyo_condition_keyword[TOMOYO_TYPE_IS_SYMLINK];
 case 131:
  return tomoyo_condition_keyword[TOMOYO_TYPE_IS_FIFO];
 case 128:
  return tomoyo_condition_keyword[TOMOYO_TYPE_IS_SOCKET];
 case 134:
  return tomoyo_condition_keyword[TOMOYO_TYPE_IS_BLOCK_DEV];
 case 133:
  return tomoyo_condition_keyword[TOMOYO_TYPE_IS_CHAR_DEV];
 }
 return "unknown";
}
