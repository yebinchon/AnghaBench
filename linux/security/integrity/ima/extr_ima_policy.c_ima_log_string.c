
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_buffer {int dummy; } ;


 int ima_log_string_op (struct audit_buffer*,char*,char*,int *) ;

__attribute__((used)) static void ima_log_string(struct audit_buffer *ab, char *key, char *value)
{
 ima_log_string_op(ab, key, value, ((void*)0));
}
