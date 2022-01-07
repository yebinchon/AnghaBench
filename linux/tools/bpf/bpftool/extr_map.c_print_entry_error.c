
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_map_info {int key_size; } ;


 int fprint_hex (int ,unsigned char*,int,char*) ;
 int printf (char*,...) ;
 int stdout ;
 int strlen (char const*) ;

__attribute__((used)) static void print_entry_error(struct bpf_map_info *info, unsigned char *key,
         const char *error_msg)
{
 int msg_size = strlen(error_msg);
 bool single_line, break_names;

 break_names = info->key_size > 16 || msg_size > 16;
 single_line = info->key_size + msg_size <= 24 && !break_names;

 printf("key:%c", break_names ? '\n' : ' ');
 fprint_hex(stdout, key, info->key_size, " ");

 printf(single_line ? "  " : "\n");

 printf("value:%c%s", break_names ? '\n' : ' ', error_msg);

 printf("\n");
}
