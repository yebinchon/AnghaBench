
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int dummy; } ;


 scalar_t__ do_read (unsigned int*,int) ;
 unsigned int tep_read_number (struct tep_handle*,unsigned int*,int) ;

__attribute__((used)) static unsigned int read4(struct tep_handle *pevent)
{
 unsigned int data;

 if (do_read(&data, 4) < 0)
  return 0;
 return tep_read_number(pevent, &data, 4);
}
