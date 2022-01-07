
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comm {int comm_str; } ;


 int comm_str__put (int ) ;
 int free (struct comm*) ;

void comm__free(struct comm *comm)
{
 comm_str__put(comm->comm_str);
 free(comm);
}
