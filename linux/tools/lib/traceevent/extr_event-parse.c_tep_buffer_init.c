
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_input_buf (char const*,unsigned long long) ;

void tep_buffer_init(const char *buf, unsigned long long size)
{
 init_input_buf(buf, size);
}
