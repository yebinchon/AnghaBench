
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ clockid_res_ns; scalar_t__ use_clockid; int full_auxtrace; int branch_stack; } ;
struct record {TYPE_3__ opts; TYPE_2__* evlist; scalar_t__ no_buildid; struct perf_session* session; } ;
struct perf_session {int header; } ;
struct TYPE_4__ {int entries; } ;
struct TYPE_5__ {TYPE_1__ core; } ;


 int HEADER_AUXTRACE ;
 int HEADER_BRANCH_STACK ;
 int HEADER_BUILD_ID ;
 int HEADER_CLOCKID ;
 int HEADER_COMPRESSED ;
 int HEADER_DIR_FORMAT ;
 int HEADER_FIRST_FEATURE ;
 int HEADER_LAST_FEATURE ;
 int HEADER_STAT ;
 int HEADER_TRACING_DATA ;
 int have_tracepoints (int *) ;
 int perf_header__clear_feat (int *,int ) ;
 int perf_header__set_feat (int *,int) ;
 int record__comp_enabled (struct record*) ;

__attribute__((used)) static void record__init_features(struct record *rec)
{
 struct perf_session *session = rec->session;
 int feat;

 for (feat = HEADER_FIRST_FEATURE; feat < HEADER_LAST_FEATURE; feat++)
  perf_header__set_feat(&session->header, feat);

 if (rec->no_buildid)
  perf_header__clear_feat(&session->header, HEADER_BUILD_ID);

 if (!have_tracepoints(&rec->evlist->core.entries))
  perf_header__clear_feat(&session->header, HEADER_TRACING_DATA);

 if (!rec->opts.branch_stack)
  perf_header__clear_feat(&session->header, HEADER_BRANCH_STACK);

 if (!rec->opts.full_auxtrace)
  perf_header__clear_feat(&session->header, HEADER_AUXTRACE);

 if (!(rec->opts.use_clockid && rec->opts.clockid_res_ns))
  perf_header__clear_feat(&session->header, HEADER_CLOCKID);

 perf_header__clear_feat(&session->header, HEADER_DIR_FORMAT);
 if (!record__comp_enabled(rec))
  perf_header__clear_feat(&session->header, HEADER_COMPRESSED);

 perf_header__clear_feat(&session->header, HEADER_STAT);
}
