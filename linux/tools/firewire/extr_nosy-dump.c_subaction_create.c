
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct subaction {size_t length; int packet; int ack; } ;


 int EXIT_FAILURE ;
 int exit (int ) ;
 struct subaction* malloc (int) ;
 int memcpy (int *,int *,size_t) ;

__attribute__((used)) static struct subaction *
subaction_create(uint32_t *data, size_t length)
{
 struct subaction *sa;


 sa = malloc(sizeof *sa - sizeof sa->packet + length);
 if (!sa)
  exit(EXIT_FAILURE);
 sa->ack = data[length / 4 - 1];
 sa->length = length;
 memcpy(&sa->packet, data, length);

 return sa;
}
