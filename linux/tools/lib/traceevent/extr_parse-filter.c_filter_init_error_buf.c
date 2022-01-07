
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event_filter {char* error_buffer; } ;


 int tep_buffer_init (char*,int ) ;

__attribute__((used)) static void filter_init_error_buf(struct tep_event_filter *filter)
{

 tep_buffer_init("", 0);
 filter->error_buffer[0] = '\0';
}
