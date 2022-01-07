; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_events.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_intel-pt.c_intel_pt_synth_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_pt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.perf_session = type { %struct.evlist* }
%struct.evlist = type { i32 }
%struct.evsel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.perf_event_attr = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"There are no selected events with Intel Processor Trace data\0A\00", align 1
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@PERF_SAMPLE_MASK = common dso_local global i32 0, align 4
@PERF_SAMPLE_IP = common dso_local global i32 0, align 4
@PERF_SAMPLE_TID = common dso_local global i32 0, align 4
@PERF_SAMPLE_PERIOD = common dso_local global i32 0, align 4
@PERF_SAMPLE_TIME = common dso_local global i32 0, align 4
@PERF_SAMPLE_CPU = common dso_local global i64 0, align 8
@PERF_COUNT_HW_BRANCH_INSTRUCTIONS = common dso_local global i8* null, align 8
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"branches\00", align 1
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i8* null, align 8
@PERF_ITRACE_PERIOD_NANOSECS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"instructions\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"transactions\00", align 1
@PERF_TYPE_SYNTH = common dso_local global i32 0, align 4
@PERF_SAMPLE_RAW = common dso_local global i32 0, align 4
@PERF_SYNTH_INTEL_PTWRITE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ptwrite\00", align 1
@PERF_SYNTH_INTEL_CBR = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"cbr\00", align 1
@PERF_SYNTH_INTEL_MWAIT = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"mwait\00", align 1
@PERF_SYNTH_INTEL_PWRE = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"pwre\00", align 1
@PERF_SYNTH_INTEL_EXSTOP = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"exstop\00", align 1
@PERF_SYNTH_INTEL_PWRX = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [5 x i8] c"pwrx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_pt*, %struct.perf_session*)* @intel_pt_synth_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_pt_synth_events(%struct.intel_pt* %0, %struct.perf_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_pt*, align 8
  %5 = alloca %struct.perf_session*, align 8
  %6 = alloca %struct.evlist*, align 8
  %7 = alloca %struct.evsel*, align 8
  %8 = alloca %struct.perf_event_attr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_pt* %0, %struct.intel_pt** %4, align 8
  store %struct.perf_session* %1, %struct.perf_session** %5, align 8
  %11 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %12 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %11, i32 0, i32 0
  %13 = load %struct.evlist*, %struct.evlist** %12, align 8
  store %struct.evlist* %13, %struct.evlist** %6, align 8
  %14 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %15 = load %struct.evlist*, %struct.evlist** %6, align 8
  %16 = call %struct.evsel* @intel_pt_evsel(%struct.intel_pt* %14, %struct.evlist* %15)
  store %struct.evsel* %16, %struct.evsel** %7, align 8
  %17 = load %struct.evsel*, %struct.evsel** %7, align 8
  %18 = icmp ne %struct.evsel* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %424

21:                                               ; preds = %2
  %22 = call i32 @memset(%struct.perf_event_attr* %8, i32 0, i32 56)
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 0
  store i32 56, i32* %23, align 8
  %24 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  %25 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load %struct.evsel*, %struct.evsel** %7, align 8
  %27 = getelementptr inbounds %struct.evsel, %struct.evsel* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PERF_SAMPLE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @PERF_SAMPLE_IP, align 4
  %35 = load i32, i32* @PERF_SAMPLE_TID, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %38 = or i32 %36, %37
  %39 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  %42 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %43 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %42, i32 0, i32 21
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %21
  %47 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %57

52:                                               ; preds = %21
  %53 = load i32, i32* @PERF_SAMPLE_TIME, align 4
  %54 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %53
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %59 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %58, i32 0, i32 20
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* @PERF_SAMPLE_CPU, align 8
  %64 = trunc i64 %63 to i32
  %65 = xor i32 %64, -1
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %65
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.evsel*, %struct.evsel** %7, align 8
  %71 = getelementptr inbounds %struct.evsel, %struct.evsel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 11
  store i32 %74, i32* %75, align 4
  %76 = load %struct.evsel*, %struct.evsel** %7, align 8
  %77 = getelementptr inbounds %struct.evsel, %struct.evsel* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 10
  store i32 %80, i32* %81, align 8
  %82 = load %struct.evsel*, %struct.evsel** %7, align 8
  %83 = getelementptr inbounds %struct.evsel, %struct.evsel* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 9
  store i32 %86, i32* %87, align 4
  %88 = load %struct.evsel*, %struct.evsel** %7, align 8
  %89 = getelementptr inbounds %struct.evsel, %struct.evsel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 8
  store i32 %92, i32* %93, align 8
  %94 = load %struct.evsel*, %struct.evsel** %7, align 8
  %95 = getelementptr inbounds %struct.evsel, %struct.evsel* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 7
  store i32 %98, i32* %99, align 4
  %100 = load %struct.evsel*, %struct.evsel** %7, align 8
  %101 = getelementptr inbounds %struct.evsel, %struct.evsel* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 6
  store i32 %104, i32* %105, align 8
  %106 = load %struct.evsel*, %struct.evsel** %7, align 8
  %107 = getelementptr inbounds %struct.evsel, %struct.evsel* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 5
  store i32 %110, i32* %111, align 4
  %112 = load %struct.evsel*, %struct.evsel** %7, align 8
  %113 = getelementptr inbounds %struct.evsel, %struct.evsel* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1000000000
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %69
  store i32 1, i32* %9, align 4
  br label %122

122:                                              ; preds = %121, %69
  %123 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %124 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %123, i32 0, i32 19
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %160

128:                                              ; preds = %122
  %129 = load i8*, i8** @PERF_COUNT_HW_BRANCH_INSTRUCTIONS, align 8
  %130 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %129, i8** %130, align 8
  %131 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %133 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @intel_pt_synth_event(%struct.perf_session* %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %3, align 4
  br label %424

143:                                              ; preds = %128
  %144 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %145 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %144, i32 0, i32 0
  store i32 1, i32* %145, align 8
  %146 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %149 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %152 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 8
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  %155 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %156 = xor i32 %155, -1
  %157 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %156
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %143, %122
  %161 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %162 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %161, i32 0, i32 19
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %160
  %167 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %168 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %167
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %166, %160
  %172 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %173 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %172, i32 0, i32 19
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %171
  %178 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %179 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %178
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %177, %171
  %183 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %184 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %183, i32 0, i32 19
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %231

188:                                              ; preds = %182
  %189 = load i8*, i8** @PERF_COUNT_HW_INSTRUCTIONS, align 8
  %190 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %189, i8** %190, align 8
  %191 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %192 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %191, i32 0, i32 19
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @PERF_ITRACE_PERIOD_NANOSECS, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %188
  %198 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %199 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %200 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %199, i32 0, i32 19
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @intel_pt_ns_to_ticks(%struct.intel_pt* %198, i32 %202)
  %204 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 %203, i32* %204, align 8
  br label %211

205:                                              ; preds = %188
  %206 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %207 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %206, i32 0, i32 19
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 %209, i32* %210, align 8
  br label %211

211:                                              ; preds = %205, %197
  %212 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @intel_pt_synth_event(%struct.perf_session* %212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %213)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %211
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %3, align 4
  br label %424

219:                                              ; preds = %211
  %220 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %221 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %220, i32 0, i32 3
  store i32 1, i32* %221, align 4
  %222 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %225 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %224, i32 0, i32 4
  store i32 %223, i32* %225, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %228 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %231

231:                                              ; preds = %219, %182
  %232 = load i32, i32* @PERF_SAMPLE_PERIOD, align 4
  %233 = xor i32 %232, -1
  %234 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, %233
  store i32 %236, i32* %234, align 4
  %237 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 2
  store i32 1, i32* %237, align 8
  %238 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %239 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %238, i32 0, i32 19
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %268

243:                                              ; preds = %231
  %244 = load i8*, i8** @PERF_COUNT_HW_INSTRUCTIONS, align 8
  %245 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %244, i8** %245, align 8
  %246 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @intel_pt_synth_event(%struct.perf_session* %246, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %247)
  store i32 %248, i32* %10, align 4
  %249 = load i32, i32* %10, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %243
  %252 = load i32, i32* %10, align 4
  store i32 %252, i32* %3, align 4
  br label %424

253:                                              ; preds = %243
  %254 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %255 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %254, i32 0, i32 6
  store i32 1, i32* %255, align 8
  %256 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %259 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %258, i32 0, i32 7
  store i32 %257, i32* %259, align 4
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %262 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %261, i32 0, i32 8
  store i32 %260, i32* %262, align 8
  %263 = load %struct.evlist*, %struct.evlist** %6, align 8
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @intel_pt_set_event_name(%struct.evlist* %263, i32 %264, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  br label %268

268:                                              ; preds = %253, %231
  %269 = load i32, i32* @PERF_TYPE_SYNTH, align 4
  %270 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 4
  store i32 %269, i32* %270, align 8
  %271 = load i32, i32* @PERF_SAMPLE_RAW, align 4
  %272 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = or i32 %273, %271
  store i32 %274, i32* %272, align 4
  %275 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %276 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %275, i32 0, i32 19
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %305

280:                                              ; preds = %268
  %281 = load i8*, i8** @PERF_SYNTH_INTEL_PTWRITE, align 8
  %282 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %281, i8** %282, align 8
  %283 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %284 = load i32, i32* %9, align 4
  %285 = call i32 @intel_pt_synth_event(%struct.perf_session* %283, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %284)
  store i32 %285, i32* %10, align 4
  %286 = load i32, i32* %10, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %280
  %289 = load i32, i32* %10, align 4
  store i32 %289, i32* %3, align 4
  br label %424

290:                                              ; preds = %280
  %291 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %292 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %291, i32 0, i32 9
  store i32 1, i32* %292, align 4
  %293 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %296 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %295, i32 0, i32 10
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* %9, align 4
  %298 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %299 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %298, i32 0, i32 11
  store i32 %297, i32* %299, align 4
  %300 = load %struct.evlist*, %struct.evlist** %6, align 8
  %301 = load i32, i32* %9, align 4
  %302 = call i32 @intel_pt_set_event_name(%struct.evlist* %300, i32 %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %9, align 4
  br label %305

305:                                              ; preds = %290, %268
  %306 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %307 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %306, i32 0, i32 19
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %336

311:                                              ; preds = %305
  %312 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %313 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %312, i32 0, i32 12
  store i32 1, i32* %313, align 8
  %314 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %317 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %316, i32 0, i32 13
  store i32 %315, i32* %317, align 4
  %318 = load i8*, i8** @PERF_SYNTH_INTEL_CBR, align 8
  %319 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %318, i8** %319, align 8
  %320 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @intel_pt_synth_event(%struct.perf_session* %320, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %321)
  store i32 %322, i32* %10, align 4
  %323 = load i32, i32* %10, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %327

325:                                              ; preds = %311
  %326 = load i32, i32* %10, align 4
  store i32 %326, i32* %3, align 4
  br label %424

327:                                              ; preds = %311
  %328 = load i32, i32* %9, align 4
  %329 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %330 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %329, i32 0, i32 14
  store i32 %328, i32* %330, align 8
  %331 = load %struct.evlist*, %struct.evlist** %6, align 8
  %332 = load i32, i32* %9, align 4
  %333 = call i32 @intel_pt_set_event_name(%struct.evlist* %331, i32 %332, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %334 = load i32, i32* %9, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %9, align 4
  br label %336

336:                                              ; preds = %327, %305
  %337 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %338 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %337, i32 0, i32 19
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 2
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %423

342:                                              ; preds = %336
  %343 = load %struct.evsel*, %struct.evsel** %7, align 8
  %344 = getelementptr inbounds %struct.evsel, %struct.evsel* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = and i32 %347, 16
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %423

350:                                              ; preds = %342
  %351 = load i8*, i8** @PERF_SYNTH_INTEL_MWAIT, align 8
  %352 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %351, i8** %352, align 8
  %353 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @intel_pt_synth_event(%struct.perf_session* %353, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %354)
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* %10, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %350
  %359 = load i32, i32* %10, align 4
  store i32 %359, i32* %3, align 4
  br label %424

360:                                              ; preds = %350
  %361 = load i32, i32* %9, align 4
  %362 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %363 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %362, i32 0, i32 15
  store i32 %361, i32* %363, align 4
  %364 = load %struct.evlist*, %struct.evlist** %6, align 8
  %365 = load i32, i32* %9, align 4
  %366 = call i32 @intel_pt_set_event_name(%struct.evlist* %364, i32 %365, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %367 = load i32, i32* %9, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %9, align 4
  %369 = load i8*, i8** @PERF_SYNTH_INTEL_PWRE, align 8
  %370 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %369, i8** %370, align 8
  %371 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %372 = load i32, i32* %9, align 4
  %373 = call i32 @intel_pt_synth_event(%struct.perf_session* %371, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %372)
  store i32 %373, i32* %10, align 4
  %374 = load i32, i32* %10, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %360
  %377 = load i32, i32* %10, align 4
  store i32 %377, i32* %3, align 4
  br label %424

378:                                              ; preds = %360
  %379 = load i32, i32* %9, align 4
  %380 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %381 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %380, i32 0, i32 16
  store i32 %379, i32* %381, align 8
  %382 = load %struct.evlist*, %struct.evlist** %6, align 8
  %383 = load i32, i32* %9, align 4
  %384 = call i32 @intel_pt_set_event_name(%struct.evlist* %382, i32 %383, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %385 = load i32, i32* %9, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %9, align 4
  %387 = load i8*, i8** @PERF_SYNTH_INTEL_EXSTOP, align 8
  %388 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %387, i8** %388, align 8
  %389 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %390 = load i32, i32* %9, align 4
  %391 = call i32 @intel_pt_synth_event(%struct.perf_session* %389, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %390)
  store i32 %391, i32* %10, align 4
  %392 = load i32, i32* %10, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %378
  %395 = load i32, i32* %10, align 4
  store i32 %395, i32* %3, align 4
  br label %424

396:                                              ; preds = %378
  %397 = load i32, i32* %9, align 4
  %398 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %399 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %398, i32 0, i32 17
  store i32 %397, i32* %399, align 4
  %400 = load %struct.evlist*, %struct.evlist** %6, align 8
  %401 = load i32, i32* %9, align 4
  %402 = call i32 @intel_pt_set_event_name(%struct.evlist* %400, i32 %401, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %403 = load i32, i32* %9, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %9, align 4
  %405 = load i8*, i8** @PERF_SYNTH_INTEL_PWRX, align 8
  %406 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %8, i32 0, i32 3
  store i8* %405, i8** %406, align 8
  %407 = load %struct.perf_session*, %struct.perf_session** %5, align 8
  %408 = load i32, i32* %9, align 4
  %409 = call i32 @intel_pt_synth_event(%struct.perf_session* %407, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), %struct.perf_event_attr* %8, i32 %408)
  store i32 %409, i32* %10, align 4
  %410 = load i32, i32* %10, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %396
  %413 = load i32, i32* %10, align 4
  store i32 %413, i32* %3, align 4
  br label %424

414:                                              ; preds = %396
  %415 = load i32, i32* %9, align 4
  %416 = load %struct.intel_pt*, %struct.intel_pt** %4, align 8
  %417 = getelementptr inbounds %struct.intel_pt, %struct.intel_pt* %416, i32 0, i32 18
  store i32 %415, i32* %417, align 8
  %418 = load %struct.evlist*, %struct.evlist** %6, align 8
  %419 = load i32, i32* %9, align 4
  %420 = call i32 @intel_pt_set_event_name(%struct.evlist* %418, i32 %419, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %421 = load i32, i32* %9, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %9, align 4
  br label %423

423:                                              ; preds = %414, %342, %336
  store i32 0, i32* %3, align 4
  br label %424

424:                                              ; preds = %423, %412, %394, %376, %358, %325, %288, %251, %217, %141, %19
  %425 = load i32, i32* %3, align 4
  ret i32 %425
}

declare dso_local %struct.evsel* @intel_pt_evsel(%struct.intel_pt*, %struct.evlist*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @memset(%struct.perf_event_attr*, i32, i32) #1

declare dso_local i32 @intel_pt_synth_event(%struct.perf_session*, i8*, %struct.perf_event_attr*, i32) #1

declare dso_local i32 @intel_pt_ns_to_ticks(%struct.intel_pt*, i32) #1

declare dso_local i32 @intel_pt_set_event_name(%struct.evlist*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
