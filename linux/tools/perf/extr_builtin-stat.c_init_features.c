
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int header; } ;


 int HEADER_AUXTRACE ;
 int HEADER_BRANCH_STACK ;
 int HEADER_BUILD_ID ;
 int HEADER_DIR_FORMAT ;
 int HEADER_FIRST_FEATURE ;
 int HEADER_LAST_FEATURE ;
 int HEADER_TRACING_DATA ;
 int perf_header__clear_feat (int *,int ) ;
 int perf_header__set_feat (int *,int) ;

__attribute__((used)) static void init_features(struct perf_session *session)
{
 int feat;

 for (feat = HEADER_FIRST_FEATURE; feat < HEADER_LAST_FEATURE; feat++)
  perf_header__set_feat(&session->header, feat);

 perf_header__clear_feat(&session->header, HEADER_DIR_FORMAT);
 perf_header__clear_feat(&session->header, HEADER_BUILD_ID);
 perf_header__clear_feat(&session->header, HEADER_TRACING_DATA);
 perf_header__clear_feat(&session->header, HEADER_BRANCH_STACK);
 perf_header__clear_feat(&session->header, HEADER_AUXTRACE);
}
