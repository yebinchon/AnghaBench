
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int raw_u32 ;
typedef int __u32 ;


 scalar_t__ CHECK (int,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int* ERR_PTR (int ) ;
 int const NAME_TBD ;
 int free (int*) ;
 char* get_next_str (char const*,char const*) ;
 int get_raw_sec_size (int const*) ;
 int* malloc (int) ;
 int strlen (char const*) ;

__attribute__((used)) static __u32 *patch_name_tbd(const __u32 *raw_u32,
        const char *str, __u32 str_off,
        unsigned int str_sec_size,
        unsigned int *ret_size)
{
 int i, raw_u32_size = get_raw_sec_size(raw_u32);
 const char *end_str = str + str_sec_size;
 const char *next_str = str + str_off;
 __u32 *new_u32 = ((void*)0);

 if (raw_u32_size == -1)
  return ERR_PTR(-EINVAL);

 if (!raw_u32_size) {
  *ret_size = 0;
  return ((void*)0);
 }

 new_u32 = malloc(raw_u32_size);
 if (!new_u32)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < raw_u32_size / sizeof(raw_u32[0]); i++) {
  if (raw_u32[i] == NAME_TBD) {
   next_str = get_next_str(next_str, end_str);
   if (CHECK(!next_str, "Error in getting next_str\n")) {
    free(new_u32);
    return ERR_PTR(-EINVAL);
   }
   new_u32[i] = next_str - str;
   next_str += strlen(next_str);
  } else {
   new_u32[i] = raw_u32[i];
  }
 }

 *ret_size = raw_u32_size;
 return new_u32;
}
