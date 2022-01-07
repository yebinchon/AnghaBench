
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int env; } ;
struct perf_session {TYPE_2__ header; int evlist; } ;
struct perf_data {int path; int force; int mode; } ;
struct option {int dummy; } ;
struct evsel {TYPE_1__* tp_format; } ;
struct TYPE_6__ {int use_callchain; } ;
struct TYPE_4__ {int tep; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct perf_session*) ;
 scalar_t__ KMEM_SLAB ;
 int LC_ALL ;
 struct option const OPT_BOOLEAN (float,char*,int *,char*) ;
 struct option const OPT_CALLBACK (char,char*,int *,char*,char*,int ) ;
 struct option const OPT_CALLBACK_NOOPT (int ,char*,int *,int *,char*,int ) ;
 struct option const OPT_END () ;
 struct option const OPT_INCR (char,char*,int *,char*) ;
 struct option const OPT_STRING (char,char*,int *,char*,char*) ;
 int PERF_DATA_MODE_READ ;
 int PTR_ERR (struct perf_session*) ;
 int __cmd_kmem (struct perf_session*) ;
 int __cmd_record (int,char const**) ;
 scalar_t__ cpu__setup_cpunode_map () ;
 int input_name ;
 int kmem_config ;
 scalar_t__ kmem_default ;
 int kmem_page ;
 int kmem_page_size ;
 struct perf_session* kmem_session ;
 int kmem_slab ;
 scalar_t__ list_empty (int *) ;
 int live_page ;
 int page_alloc_sort ;
 int page_alloc_sort_input ;
 int page_caller_sort ;
 int page_caller_sort_input ;
 int parse_alloc_opt ;
 int parse_caller_opt ;
 int parse_line_opt ;
 int parse_options_subcommand (int,char const**,struct option const*,char const* const*,char const**,int ) ;
 int parse_page_opt ;
 int parse_slab_opt ;
 int parse_sort_opt ;
 int perf_config (int ,int *) ;
 struct evsel* perf_evlist__find_tracepoint_by_name (int ,char*) ;
 int perf_kmem ;
 int perf_session__delete (struct perf_session*) ;
 struct perf_session* perf_session__new (struct perf_data*,int,int *) ;
 scalar_t__ perf_time__parse_str (int *,int ) ;
 int pr_err (char const*,...) ;
 int ptime ;
 int raw_ip ;
 int setlocale (int ,char*) ;
 int setup_page_sorting (int *,char const* const) ;
 int setup_slab_sorting (int *,char const* const) ;
 int slab_alloc_sort ;
 int slab_caller_sort ;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;
 int symbol__init (int *) ;
 TYPE_3__ symbol_conf ;
 int tep_get_page_size (int ) ;
 int time_str ;
 int usage_with_options (char const**,struct option const*) ;
 int verbose ;

int cmd_kmem(int argc, const char **argv)
{
 const char * const default_slab_sort = "frag,hit,bytes";
 const char * const default_page_sort = "bytes,hit";
 struct perf_data data = {
  .mode = PERF_DATA_MODE_READ,
 };
 const struct option kmem_options[] = {
 OPT_STRING('i', "input", &input_name, "file", "input file name"),
 OPT_INCR('v', "verbose", &verbose,
      "be more verbose (show symbol address, etc)"),
 OPT_CALLBACK_NOOPT(0, "caller", ((void*)0), ((void*)0),
      "show per-callsite statistics", parse_caller_opt),
 OPT_CALLBACK_NOOPT(0, "alloc", ((void*)0), ((void*)0),
      "show per-allocation statistics", parse_alloc_opt),
 OPT_CALLBACK('s', "sort", ((void*)0), "key[,key2...]",
       "sort by keys: ptr, callsite, bytes, hit, pingpong, frag, "
       "page, order, migtype, gfp", parse_sort_opt),
 OPT_CALLBACK('l', "line", ((void*)0), "num", "show n lines", parse_line_opt),
 OPT_BOOLEAN(0, "raw-ip", &raw_ip, "show raw ip instead of symbol"),
 OPT_BOOLEAN('f', "force", &data.force, "don't complain, do it"),
 OPT_CALLBACK_NOOPT(0, "slab", ((void*)0), ((void*)0), "Analyze slab allocator",
      parse_slab_opt),
 OPT_CALLBACK_NOOPT(0, "page", ((void*)0), ((void*)0), "Analyze page allocator",
      parse_page_opt),
 OPT_BOOLEAN(0, "live", &live_page, "Show live page stat"),
 OPT_STRING(0, "time", &time_str, "str",
     "Time span of interest (start,stop)"),
 OPT_END()
 };
 const char *const kmem_subcommands[] = { "record", "stat", ((void*)0) };
 const char *kmem_usage[] = {
  ((void*)0),
  ((void*)0)
 };
 struct perf_session *session;
 static const char errmsg[] = "No %s allocation events found.  Have you run 'perf kmem record --%s'?\n";
 int ret = perf_config(kmem_config, ((void*)0));

 if (ret)
  return ret;

 argc = parse_options_subcommand(argc, argv, kmem_options,
     kmem_subcommands, kmem_usage, 0);

 if (!argc)
  usage_with_options(kmem_usage, kmem_options);

 if (kmem_slab == 0 && kmem_page == 0) {
  if (kmem_default == KMEM_SLAB)
   kmem_slab = 1;
  else
   kmem_page = 1;
 }

 if (!strncmp(argv[0], "rec", 3)) {
  symbol__init(((void*)0));
  return __cmd_record(argc, argv);
 }

 data.path = input_name;

 kmem_session = session = perf_session__new(&data, 0, &perf_kmem);
 if (IS_ERR(session))
  return PTR_ERR(session);

 ret = -1;

 if (kmem_slab) {
  if (!perf_evlist__find_tracepoint_by_name(session->evlist,
         "kmem:kmalloc")) {
   pr_err(errmsg, "slab", "slab");
   goto out_delete;
  }
 }

 if (kmem_page) {
  struct evsel *evsel;

  evsel = perf_evlist__find_tracepoint_by_name(session->evlist,
            "kmem:mm_page_alloc");
  if (evsel == ((void*)0)) {
   pr_err(errmsg, "page", "page");
   goto out_delete;
  }

  kmem_page_size = tep_get_page_size(evsel->tp_format->tep);
  symbol_conf.use_callchain = 1;
 }

 symbol__init(&session->header.env);

 if (perf_time__parse_str(&ptime, time_str) != 0) {
  pr_err("Invalid time string\n");
  ret = -EINVAL;
  goto out_delete;
 }

 if (!strcmp(argv[0], "stat")) {
  setlocale(LC_ALL, "");

  if (cpu__setup_cpunode_map())
   goto out_delete;

  if (list_empty(&slab_caller_sort))
   setup_slab_sorting(&slab_caller_sort, default_slab_sort);
  if (list_empty(&slab_alloc_sort))
   setup_slab_sorting(&slab_alloc_sort, default_slab_sort);
  if (list_empty(&page_caller_sort))
   setup_page_sorting(&page_caller_sort, default_page_sort);
  if (list_empty(&page_alloc_sort))
   setup_page_sorting(&page_alloc_sort, default_page_sort);

  if (kmem_page) {
   setup_page_sorting(&page_alloc_sort_input,
        "page,order,migtype,gfp");
   setup_page_sorting(&page_caller_sort_input,
        "callsite,order,migtype,gfp");
  }
  ret = __cmd_kmem(session);
 } else
  usage_with_options(kmem_usage, kmem_options);

out_delete:
 perf_session__delete(session);

 return ret;
}
