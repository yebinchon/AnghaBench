
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct perf_session {int machines; int evlist; } ;


 int machines__set_id_hdr_size (int *,int ) ;
 int perf_evlist__id_hdr_size (int ) ;

void perf_session__set_id_hdr_size(struct perf_session *session)
{
 u16 id_hdr_size = perf_evlist__id_hdr_size(session->evlist);

 machines__set_id_hdr_size(&session->machines, id_hdr_size);
}
