
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsmntok_t ;


 int free (int *) ;
 int unmapfile (char*,size_t) ;

void free_json(char *map, size_t size, jsmntok_t *tokens)
{
 free(tokens);
 unmapfile(map, size);
}
