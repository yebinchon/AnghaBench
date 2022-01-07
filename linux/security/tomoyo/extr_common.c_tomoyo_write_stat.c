
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tomoyo_io_buffer {char* write_buf; } ;


 size_t TOMOYO_MAX_MEMORY_STAT ;
 int sscanf (char*,char*,int *) ;
 char** tomoyo_memory_headers ;
 int * tomoyo_memory_quota ;
 scalar_t__ tomoyo_str_starts (char**,char*) ;

__attribute__((used)) static int tomoyo_write_stat(struct tomoyo_io_buffer *head)
{
 char *data = head->write_buf;
 u8 i;

 if (tomoyo_str_starts(&data, "Memory used by "))
  for (i = 0; i < TOMOYO_MAX_MEMORY_STAT; i++)
   if (tomoyo_str_starts(&data, tomoyo_memory_headers[i]))
    sscanf(data, "%u", &tomoyo_memory_quota[i]);
 return 0;
}
