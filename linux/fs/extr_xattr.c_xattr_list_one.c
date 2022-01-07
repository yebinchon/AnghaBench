
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;


 int ERANGE ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static int xattr_list_one(char **buffer, ssize_t *remaining_size,
     const char *name)
{
 size_t len = strlen(name) + 1;
 if (*buffer) {
  if (*remaining_size < len)
   return -ERANGE;
  memcpy(*buffer, name, len);
  *buffer += len;
 }
 *remaining_size -= len;
 return 0;
}
