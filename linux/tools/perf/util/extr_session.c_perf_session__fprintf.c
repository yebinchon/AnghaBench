
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int host; } ;
struct perf_session {TYPE_1__ machines; } ;
typedef int FILE ;


 size_t machine__fprintf (int *,int *) ;

size_t perf_session__fprintf(struct perf_session *session, FILE *fp)
{




 return machine__fprintf(&session->machines.host, fp);
}
