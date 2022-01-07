; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__timehist.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_perf_sched__timehist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.perf_sched = type { i32, i64, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.evsel_str_handler = type { i8*, i32 }
%struct.perf_data = type { i32, i32, i32 }
%struct.perf_session = type { %struct.TYPE_6__, %struct.evlist* }
%struct.TYPE_6__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.evlist = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"sched:sched_switch\00", align 1
@timehist_sched_switch_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"sched:sched_wakeup\00", align 1
@timehist_sched_wakeup_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"sched:sched_wakeup_new\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"sched:sched_migrate_task\00", align 1
@timehist_migrate_task_event = common dso_local global i32 0, align 4
@PERF_DATA_MODE_READ = common dso_local global i32 0, align 4
@input_name = common dso_local global i32 0, align 4
@perf_timehist__process_sample = common dso_local global i32 0, align 4
@perf_event__process_mmap = common dso_local global i32 0, align 4
@perf_event__process_comm = common dso_local global i32 0, align 4
@perf_event__process_exit = common dso_local global i32 0, align 4
@perf_event__process_fork = common dso_local global i32 0, align 4
@process_lost = common dso_local global i32 0, align 4
@perf_event__process_attr = common dso_local global i32 0, align 4
@perf_event__process_tracing_data = common dso_local global i32 0, align 4
@perf_event__process_build_id = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid time string\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"No sched_switch events found. Have you run 'perf sched record'?\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to process events, error %d\00", align 1
@PERF_RECORD_LOST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_sched*)* @perf_sched__timehist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_sched__timehist(%struct.perf_sched* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_sched*, align 8
  %4 = alloca [3 x %struct.evsel_str_handler], align 16
  %5 = alloca [1 x %struct.evsel_str_handler], align 16
  %6 = alloca %struct.perf_data, align 4
  %7 = alloca %struct.perf_session*, align 8
  %8 = alloca %struct.evlist*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_sched* %0, %struct.perf_sched** %3, align 8
  %10 = getelementptr inbounds [3 x %struct.evsel_str_handler], [3 x %struct.evsel_str_handler]* %4, i64 0, i64 0
  %11 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %10, i32 0, i32 1
  %13 = load i32, i32* @timehist_sched_switch_event, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %10, i64 1
  %15 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %14, i32 0, i32 1
  %17 = load i32, i32* @timehist_sched_wakeup_event, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %14, i64 1
  %19 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %18, i32 0, i32 1
  %21 = load i32, i32* @timehist_sched_wakeup_event, align 4
  store i32 %21, i32* %20, align 8
  %22 = getelementptr inbounds [1 x %struct.evsel_str_handler], [1 x %struct.evsel_str_handler]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %23, align 16
  %24 = getelementptr inbounds %struct.evsel_str_handler, %struct.evsel_str_handler* %22, i32 0, i32 1
  %25 = load i32, i32* @timehist_migrate_task_event, align 4
  store i32 %25, i32* %24, align 8
  %26 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 0
  %27 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %28 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %27, i32 0, i32 11
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 1
  %31 = load i32, i32* @PERF_DATA_MODE_READ, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.perf_data, %struct.perf_data* %6, i32 0, i32 2
  %33 = load i32, i32* @input_name, align 4
  store i32 %33, i32* %32, align 4
  store i32 -1, i32* %9, align 4
  %34 = load i32, i32* @perf_timehist__process_sample, align 4
  %35 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %36 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 10
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @perf_event__process_mmap, align 4
  %39 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %40 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 9
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @perf_event__process_comm, align 4
  %43 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %44 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 8
  store i32 %42, i32* %45, align 8
  %46 = load i32, i32* @perf_event__process_exit, align 4
  %47 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %48 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 7
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* @perf_event__process_fork, align 4
  %51 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %52 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %51, i32 0, i32 9
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 8
  %54 = load i32, i32* @process_lost, align 4
  %55 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %56 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %55, i32 0, i32 9
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @perf_event__process_attr, align 4
  %59 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %60 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 4
  store i32 %58, i32* %61, align 8
  %62 = load i32, i32* @perf_event__process_tracing_data, align 4
  %63 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %64 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %63, i32 0, i32 9
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @perf_event__process_build_id, align 4
  %67 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %68 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %67, i32 0, i32 9
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %71 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %70, i32 0, i32 9
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %74 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  %76 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %77 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @symbol_conf, i32 0, i32 0), align 4
  %79 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %80 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %79, i32 0, i32 9
  %81 = call %struct.perf_session* @perf_session__new(%struct.perf_data* %6, i32 0, %struct.TYPE_10__* %80)
  store %struct.perf_session* %81, %struct.perf_session** %7, align 8
  %82 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %83 = call i64 @IS_ERR(%struct.perf_session* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %1
  %86 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %87 = call i32 @PTR_ERR(%struct.perf_session* %86)
  store i32 %87, i32* %2, align 4
  br label %226

88:                                               ; preds = %1
  %89 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %90 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %89, i32 0, i32 1
  %91 = load %struct.evlist*, %struct.evlist** %90, align 8
  store %struct.evlist* %91, %struct.evlist** %8, align 8
  %92 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %93 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 @symbol__init(%struct.TYPE_9__* %94)
  %96 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %97 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %96, i32 0, i32 8
  %98 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %99 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @perf_time__parse_str(i32* %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %88
  %104 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %226

107:                                              ; preds = %88
  %108 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %109 = load %struct.evlist*, %struct.evlist** %8, align 8
  %110 = call i64 @timehist_check_attr(%struct.perf_sched* %108, %struct.evlist* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %221

113:                                              ; preds = %107
  %114 = call i32 (...) @setup_pager()
  %115 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %116 = getelementptr inbounds [3 x %struct.evsel_str_handler], [3 x %struct.evsel_str_handler]* %4, i64 0, i64 0
  %117 = call i64 @perf_session__set_tracepoints_handlers(%struct.perf_session* %115, %struct.evsel_str_handler* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %221

120:                                              ; preds = %113
  %121 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %122 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %121, i32 0, i32 1
  %123 = load %struct.evlist*, %struct.evlist** %122, align 8
  %124 = call i32 @perf_evlist__find_tracepoint_by_name(%struct.evlist* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  br label %221

128:                                              ; preds = %120
  %129 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %130 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %129, i32 0, i32 6
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %135 = getelementptr inbounds [1 x %struct.evsel_str_handler], [1 x %struct.evsel_str_handler]* %5, i64 0, i64 0
  %136 = call i64 @perf_session__set_tracepoints_handlers(%struct.perf_session* %134, %struct.evsel_str_handler* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %221

139:                                              ; preds = %133, %128
  %140 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %141 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %146 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %148 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %139
  %152 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %153 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %152, i32 0, i32 0
  store i32 4, i32* %153, align 8
  br label %154

154:                                              ; preds = %151, %139
  %155 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %156 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @init_idle_threads(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %221

161:                                              ; preds = %154
  %162 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %163 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %168 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %171 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %166, %161
  %173 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %174 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %172
  %178 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %179 = call i32 @timehist_header(%struct.perf_sched* %178)
  br label %180

180:                                              ; preds = %177, %172
  %181 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %182 = call i32 @perf_session__process_events(%struct.perf_session* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* %9, align 4
  %187 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %186)
  br label %221

188:                                              ; preds = %180
  %189 = load %struct.evlist*, %struct.evlist** %8, align 8
  %190 = getelementptr inbounds %struct.evlist, %struct.evlist* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %196 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %195, i32 0, i32 4
  store i32 %194, i32* %196, align 8
  %197 = load %struct.evlist*, %struct.evlist** %8, align 8
  %198 = getelementptr inbounds %struct.evlist, %struct.evlist* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %202 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load %struct.evlist*, %struct.evlist** %8, align 8
  %204 = getelementptr inbounds %struct.evlist, %struct.evlist* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @PERF_RECORD_LOST, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %211 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %213 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %188
  %217 = load %struct.perf_sched*, %struct.perf_sched** %3, align 8
  %218 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %219 = call i32 @timehist_print_summary(%struct.perf_sched* %217, %struct.perf_session* %218)
  br label %220

220:                                              ; preds = %216, %188
  br label %221

221:                                              ; preds = %220, %185, %160, %138, %126, %119, %112
  %222 = call i32 (...) @free_idle_threads()
  %223 = load %struct.perf_session*, %struct.perf_session** %7, align 8
  %224 = call i32 @perf_session__delete(%struct.perf_session* %223)
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %2, align 4
  br label %226

226:                                              ; preds = %221, %103, %85
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.perf_session* @perf_session__new(%struct.perf_data*, i32, %struct.TYPE_10__*) #1

declare dso_local i64 @IS_ERR(%struct.perf_session*) #1

declare dso_local i32 @PTR_ERR(%struct.perf_session*) #1

declare dso_local i32 @symbol__init(%struct.TYPE_9__*) #1

declare dso_local i64 @perf_time__parse_str(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @timehist_check_attr(%struct.perf_sched*, %struct.evlist*) #1

declare dso_local i32 @setup_pager(...) #1

declare dso_local i64 @perf_session__set_tracepoints_handlers(%struct.perf_session*, %struct.evsel_str_handler*) #1

declare dso_local i32 @perf_evlist__find_tracepoint_by_name(%struct.evlist*, i8*) #1

declare dso_local i64 @init_idle_threads(i32) #1

declare dso_local i32 @timehist_header(%struct.perf_sched*) #1

declare dso_local i32 @perf_session__process_events(%struct.perf_session*) #1

declare dso_local i32 @timehist_print_summary(%struct.perf_sched*, %struct.perf_session*) #1

declare dso_local i32 @free_idle_threads(...) #1

declare dso_local i32 @perf_session__delete(%struct.perf_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
