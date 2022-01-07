; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_cmd_kmem.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-kmem.c_cmd_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_session = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.perf_data = type { i32, i32, i32 }
%struct.option = type { i32 }
%struct.evsel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"frag,hit,bytes\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bytes,hit\00", align 1
@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@input_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"input file name\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"be more verbose (show symbol address, etc)\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"show per-callsite statistics\00", align 1
@parse_caller_opt = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"alloc\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"show per-allocation statistics\00", align 1
@parse_alloc_opt = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"sort\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"key[,key2...]\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"sort by keys: ptr, callsite, bytes, hit, pingpong, frag, page, order, migtype, gfp\00", align 1
@parse_sort_opt = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"num\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"show n lines\00", align 1
@parse_line_opt = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"raw-ip\00", align 1
@raw_ip = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"show raw ip instead of symbol\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"don't complain, do it\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"slab\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Analyze slab allocator\00", align 1
@parse_slab_opt = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [5 x i8] c"page\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Analyze page allocator\00", align 1
@parse_page_opt = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [5 x i8] c"live\00", align 1
@live_page = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"Show live page stat\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@time_str = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Time span of interest (start,stop)\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"record\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"stat\00", align 1
@__const.cmd_kmem.kmem_subcommands = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* null], align 16
@cmd_kmem.errmsg = internal constant [71 x i8] c"No %s allocation events found.  Have you run 'perf kmem record --%s'?\0A\00", align 16
@kmem_config = common dso_local global i32 0, align 4
@kmem_slab = common dso_local global i32 0, align 4
@kmem_page = common dso_local global i32 0, align 4
@kmem_default = common dso_local global i64 0, align 8
@KMEM_SLAB = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@perf_kmem = common dso_local global i32 0, align 4
@kmem_session = common dso_local global %struct.perf_session* null, align 8
@.str.33 = private unnamed_addr constant [13 x i8] c"kmem:kmalloc\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"kmem:mm_page_alloc\00", align 1
@kmem_page_size = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ptime = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [21 x i8] c"Invalid time string\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LC_ALL = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@slab_caller_sort = common dso_local global i32 0, align 4
@slab_alloc_sort = common dso_local global i32 0, align 4
@page_caller_sort = common dso_local global i32 0, align 4
@page_alloc_sort = common dso_local global i32 0, align 4
@page_alloc_sort_input = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [23 x i8] c"page,order,migtype,gfp\00", align 1
@page_caller_sort_input = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [27 x i8] c"callsite,order,migtype,gfp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_kmem(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.perf_data, align 4
  %9 = alloca [13 x %struct.option], align 16
  %10 = alloca [3 x i8*], align 16
  %11 = alloca [2 x i8*], align 16
  %12 = alloca %struct.perf_session*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.evsel*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %15 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %8, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %8, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %8, i32 0, i32 2
  %18 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds [13 x %struct.option], [13 x %struct.option]* %9, i64 0, i64 0
  %20 = call i32 @OPT_STRING(i8 signext 105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @input_name, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.option, %struct.option* %19, i64 1
  %23 = call i32 @OPT_INCR(i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32* @verbose, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %26 = load i32, i32* @parse_caller_opt, align 4
  %27 = call i32 @OPT_CALLBACK_NOOPT(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32* null, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = load i32, i32* @parse_alloc_opt, align 4
  %31 = call i32 @OPT_CALLBACK_NOOPT(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32* null, i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %30)
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %34 = load i32, i32* @parse_sort_opt, align 4
  %35 = call i32 @OPT_CALLBACK(i8 signext 115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i64 0, i64 0), i32 %34)
  %36 = getelementptr inbounds %struct.option, %struct.option* %33, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.option, %struct.option* %33, i64 1
  %38 = load i32, i32* @parse_line_opt, align 4
  %39 = call i32 @OPT_CALLBACK(i8 signext 108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  %42 = call i32 @OPT_BOOLEAN(float 0.000000e+00, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32* @raw_ip, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  %45 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %8, i32 0, i32 1
  %46 = call i32 @OPT_BOOLEAN(float 1.020000e+02, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i32* %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %47 = getelementptr inbounds %struct.option, %struct.option* %44, i32 0, i32 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds %struct.option, %struct.option* %44, i64 1
  %49 = load i32, i32* @parse_slab_opt, align 4
  %50 = call i32 @OPT_CALLBACK_NOOPT(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i32* null, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %49)
  %51 = getelementptr inbounds %struct.option, %struct.option* %48, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.option, %struct.option* %48, i64 1
  %53 = load i32, i32* @parse_page_opt, align 4
  %54 = call i32 @OPT_CALLBACK_NOOPT(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32* null, i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %53)
  %55 = getelementptr inbounds %struct.option, %struct.option* %52, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.option, %struct.option* %52, i64 1
  %57 = call i32 @OPT_BOOLEAN(float 0.000000e+00, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32* @live_page, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  %58 = getelementptr inbounds %struct.option, %struct.option* %56, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.option, %struct.option* %56, i64 1
  %60 = call i32 @OPT_STRING(i8 signext 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32* @time_str, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.29, i64 0, i64 0))
  %61 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.option, %struct.option* %59, i64 1
  %63 = call i32 (...) @OPT_END()
  %64 = getelementptr inbounds %struct.option, %struct.option* %62, i32 0, i32 0
  store i32 %63, i32* %64, align 4
  %65 = bitcast [3 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %65, i8* align 16 bitcast ([3 x i8*]* @__const.cmd_kmem.kmem_subcommands to i8*), i64 24, i1 false)
  %66 = bitcast [2 x i8*]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %66, i8 0, i64 16, i1 false)
  %67 = load i32, i32* @kmem_config, align 4
  %68 = call i32 @perf_config(i32 %67, i32* null)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %2
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %3, align 4
  br label %213

73:                                               ; preds = %2
  %74 = load i32, i32* %4, align 4
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds [13 x %struct.option], [13 x %struct.option]* %9, i64 0, i64 0
  %77 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %78 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %79 = call i32 @parse_options_subcommand(i32 %74, i8** %75, %struct.option* %76, i8** %77, i8** %78, i32 0)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %73
  %83 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %84 = getelementptr inbounds [13 x %struct.option], [13 x %struct.option]* %9, i64 0, i64 0
  %85 = call i32 @usage_with_options(i8** %83, %struct.option* %84)
  br label %86

86:                                               ; preds = %82, %73
  %87 = load i32, i32* @kmem_slab, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* @kmem_page, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i64, i64* @kmem_default, align 8
  %94 = load i64, i64* @KMEM_SLAB, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* @kmem_slab, align 4
  br label %98

97:                                               ; preds = %92
  store i32 1, i32* @kmem_page, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %99

99:                                               ; preds = %98, %89, %86
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @strncmp(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 3)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = call i32 @symbol__init(i32* null)
  %107 = load i32, i32* %4, align 4
  %108 = load i8**, i8*** %5, align 8
  %109 = call i32 @__cmd_record(i32 %107, i8** %108)
  store i32 %109, i32* %3, align 4
  br label %213

110:                                              ; preds = %99
  %111 = load i32, i32* @input_name, align 4
  %112 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %8, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = call %struct.perf_session* @perf_session__new(%struct.perf_data* %8, i32 0, i32* @perf_kmem)
  store %struct.perf_session* %113, %struct.perf_session** %12, align 8
  store %struct.perf_session* %113, %struct.perf_session** @kmem_session, align 8
  %114 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %115 = call i64 @IS_ERR(%struct.perf_session* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %119 = call i32 @PTR_ERR(%struct.perf_session* %118)
  store i32 %119, i32* %3, align 4
  br label %213

120:                                              ; preds = %110
  store i32 -1, i32* %13, align 4
  %121 = load i32, i32* @kmem_slab, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %125 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call %struct.evsel* @perf_evlist__find_tracepoint_by_name(i32 %126, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %128 = icmp ne %struct.evsel* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @cmd_kmem.errmsg, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  br label %209

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i32, i32* @kmem_page, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %132
  %136 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %137 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.evsel* @perf_evlist__find_tracepoint_by_name(i32 %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  store %struct.evsel* %139, %struct.evsel** %14, align 8
  %140 = load %struct.evsel*, %struct.evsel** %14, align 8
  %141 = icmp eq %struct.evsel* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @cmd_kmem.errmsg, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %209

144:                                              ; preds = %135
  %145 = load %struct.evsel*, %struct.evsel** %14, align 8
  %146 = getelementptr inbounds %struct.evsel, %struct.evsel* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @tep_get_page_size(i32 %149)
  store i32 %150, i32* @kmem_page_size, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @symbol_conf, i32 0, i32 0), align 4
  br label %151

151:                                              ; preds = %144, %132
  %152 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %153 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = call i32 @symbol__init(i32* %154)
  %156 = load i32, i32* @time_str, align 4
  %157 = call i64 @perf_time__parse_str(i32* @ptime, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0))
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %13, align 4
  br label %209

163:                                              ; preds = %151
  %164 = load i8**, i8*** %5, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @strcmp(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %204, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @LC_ALL, align 4
  %171 = call i32 @setlocale(i32 %170, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0))
  %172 = call i64 (...) @cpu__setup_cpunode_map()
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  br label %209

175:                                              ; preds = %169
  %176 = call i64 @list_empty(i32* @slab_caller_sort)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = call i32 @setup_slab_sorting(i32* @slab_caller_sort, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %180

180:                                              ; preds = %178, %175
  %181 = call i64 @list_empty(i32* @slab_alloc_sort)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = call i32 @setup_slab_sorting(i32* @slab_alloc_sort, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  br label %185

185:                                              ; preds = %183, %180
  %186 = call i64 @list_empty(i32* @page_caller_sort)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = call i32 @setup_page_sorting(i32* @page_caller_sort, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  br label %190

190:                                              ; preds = %188, %185
  %191 = call i64 @list_empty(i32* @page_alloc_sort)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = call i32 @setup_page_sorting(i32* @page_alloc_sort, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  br label %195

195:                                              ; preds = %193, %190
  %196 = load i32, i32* @kmem_page, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = call i32 @setup_page_sorting(i32* @page_alloc_sort_input, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i64 0, i64 0))
  %200 = call i32 @setup_page_sorting(i32* @page_caller_sort_input, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %195
  %202 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %203 = call i32 @__cmd_kmem(%struct.perf_session* %202)
  store i32 %203, i32* %13, align 4
  br label %208

204:                                              ; preds = %163
  %205 = getelementptr inbounds [2 x i8*], [2 x i8*]* %11, i64 0, i64 0
  %206 = getelementptr inbounds [13 x %struct.option], [13 x %struct.option]* %9, i64 0, i64 0
  %207 = call i32 @usage_with_options(i8** %205, %struct.option* %206)
  br label %208

208:                                              ; preds = %204, %201
  br label %209

209:                                              ; preds = %208, %174, %159, %142, %129
  %210 = load %struct.perf_session*, %struct.perf_session** %12, align 8
  %211 = call i32 @perf_session__delete(%struct.perf_session* %210)
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %117, %105, %71
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @OPT_INCR(i8 signext, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_CALLBACK_NOOPT(i32, i8*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @OPT_CALLBACK(i8 signext, i8*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @OPT_BOOLEAN(float, i8*, i32*, i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @perf_config(i32, i32*) #1

declare dso_local i32 @parse_options_subcommand(i32, i8**, %struct.option*, i8**, i8**, i32) #1

declare dso_local i32 @usage_with_options(i8**, %struct.option*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @symbol__init(i32*) #1

declare dso_local i32 @__cmd_record(i32, i8**) #1

declare dso_local %struct.perf_session* @perf_session__new(%struct.perf_data*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local %struct.evsel* @perf_evlist__find_tracepoint_by_name(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @tep_get_page_size(i32) #1

declare dso_local i64 @perf_time__parse_str(i32*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i64 @cpu__setup_cpunode_map(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @setup_slab_sorting(i32*, i8*) #1

declare dso_local i32 @setup_page_sorting(i32*, i8*) #1

declare dso_local i32 @__cmd_kmem(%struct.perf_session*) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
