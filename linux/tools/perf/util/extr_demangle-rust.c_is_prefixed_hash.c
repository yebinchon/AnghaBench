
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seen ;


 int hash_len ;
 int hash_prefix ;
 int hash_prefix_len ;
 int memset (int*,int,int) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static bool is_prefixed_hash(const char *str)
{
 const char *end;
 bool seen[16];
 size_t i;
 int count;

 if (strncmp(str, hash_prefix, hash_prefix_len))
  return 0;
 str += hash_prefix_len;

 memset(seen, 0, sizeof(seen));
 for (end = str + hash_len; str < end; str++)
  if (*str >= '0' && *str <= '9')
   seen[*str - '0'] = 1;
  else if (*str >= 'a' && *str <= 'f')
   seen[*str - 'a' + 10] = 1;
  else
   return 0;


 count = 0;
 for (i = 0; i < 16; i++)
  if (seen[i])
   count++;

 return count >= 5 && count <= 15;
}
