; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_add_default_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-stat.c_add_default_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.option = type { %struct.TYPE_8__** }
%struct.perf_event_attr = type { i32, i32 }
%struct.parse_events_error = type { i32 }

@PERF_COUNT_SW_TASK_CLOCK = common dso_local global i32 0, align 4
@PERF_TYPE_SOFTWARE = common dso_local global i32 0, align 4
@PERF_COUNT_SW_CONTEXT_SWITCHES = common dso_local global i32 0, align 4
@PERF_COUNT_SW_CPU_MIGRATIONS = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CPU_CYCLES = common dso_local global i32 0, align 4
@PERF_TYPE_HARDWARE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_STALLED_CYCLES_FRONTEND = common dso_local global i32 0, align 4
@PERF_COUNT_HW_STALLED_CYCLES_BACKEND = common dso_local global i32 0, align 4
@PERF_COUNT_HW_INSTRUCTIONS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_BRANCH_INSTRUCTIONS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_BRANCH_MISSES = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_L1D = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_READ = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_ACCESS = common dso_local global i32 0, align 4
@PERF_TYPE_HW_CACHE = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MISS = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_LL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_L1I = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_DTLB = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_ITLB = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_PREFETCH = common dso_local global i32 0, align 4
@stat_config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@transaction_run = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@evsel_list = common dso_local global %struct.TYPE_8__* null, align 8
@__const.add_default_attributes.opt = private unnamed_addr constant %struct.option { %struct.TYPE_8__** @evsel_list }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cycles-ct\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"el-start\00", align 1
@transaction_attrs = common dso_local global i8* null, align 8
@transaction_limited_attrs = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Cannot set up transaction events\0A\00", align 1
@smi_cost = common dso_local global i64 0, align 8
@FREEZE_ON_SMI_PATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"freeze_on_smi is not supported.\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to set freeze_on_smi.\0A\00", align 1
@smi_reset = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"msr\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"aperf\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"smi\00", align 1
@force_metric_only = common dso_local global i32 0, align 4
@smi_cost_attrs = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [76 x i8] c"To measure SMI cost, it needs msr/aperf/, msr/smi/ and cpu/cycles/ support\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Cannot set up SMI cost events\0A\00", align 1
@topdown_run = common dso_local global i64 0, align 8
@AGGR_GLOBAL = common dso_local global i64 0, align 8
@AGGR_CORE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [55 x i8] c"top down event configuration requires --per-core mode\0A\00", align 1
@nr_cgroups = common dso_local global i64 0, align 8
@target = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [61 x i8] c"top down event configuration requires system-wide mode (-a)\0A\00", align 1
@topdown_attrs = common dso_local global i64* null, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Cannot set up top down events %s: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"System does not support topdown\0A\00", align 1
@PERF_COUNT_SW_CPU_CLOCK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"stalled-cycles-frontend\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"stalled-cycles-backend\00", align 1
@detailed_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @add_default_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_default_attributes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [5 x %struct.perf_event_attr], align 16
  %4 = alloca [1 x %struct.perf_event_attr], align 4
  %5 = alloca [1 x %struct.perf_event_attr], align 4
  %6 = alloca [3 x %struct.perf_event_attr], align 16
  %7 = alloca [4 x %struct.perf_event_attr], align 16
  %8 = alloca [6 x %struct.perf_event_attr], align 16
  %9 = alloca [2 x %struct.perf_event_attr], align 16
  %10 = alloca %struct.parse_events_error, align 4
  %11 = alloca %struct.option, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds [5 x %struct.perf_event_attr], [5 x %struct.perf_event_attr]* %3, i64 0, i64 0
  %16 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %15, i32 0, i32 0
  %17 = load i32, i32* @PERF_COUNT_SW_TASK_CLOCK, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %15, i32 0, i32 1
  %19 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %15, i64 1
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i32 0, i32 0
  %22 = load i32, i32* @PERF_COUNT_SW_CONTEXT_SWITCHES, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i32 0, i32 1
  %24 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %20, i64 1
  %26 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %25, i32 0, i32 0
  %27 = load i32, i32* @PERF_COUNT_SW_CPU_MIGRATIONS, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %25, i32 0, i32 1
  %29 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %25, i64 1
  %31 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 0
  %32 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i32 0, i32 1
  %34 = load i32, i32* @PERF_TYPE_SOFTWARE, align 4
  store i32 %34, i32* %33, align 4
  %35 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %30, i64 1
  %36 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %35, i32 0, i32 0
  %37 = load i32, i32* @PERF_COUNT_HW_CPU_CYCLES, align 4
  store i32 %37, i32* %36, align 8
  %38 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %35, i32 0, i32 1
  %39 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds [1 x %struct.perf_event_attr], [1 x %struct.perf_event_attr]* %4, i64 0, i64 0
  %41 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %40, i32 0, i32 0
  %42 = load i32, i32* @PERF_COUNT_HW_STALLED_CYCLES_FRONTEND, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %40, i32 0, i32 1
  %44 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds [1 x %struct.perf_event_attr], [1 x %struct.perf_event_attr]* %5, i64 0, i64 0
  %46 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %45, i32 0, i32 0
  %47 = load i32, i32* @PERF_COUNT_HW_STALLED_CYCLES_BACKEND, align 4
  store i32 %47, i32* %46, align 4
  %48 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %45, i32 0, i32 1
  %49 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %49, i32* %48, align 4
  %50 = getelementptr inbounds [3 x %struct.perf_event_attr], [3 x %struct.perf_event_attr]* %6, i64 0, i64 0
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %50, i32 0, i32 0
  %52 = load i32, i32* @PERF_COUNT_HW_INSTRUCTIONS, align 4
  store i32 %52, i32* %51, align 8
  %53 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %50, i32 0, i32 1
  %54 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %54, i32* %53, align 4
  %55 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %50, i64 1
  %56 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %55, i32 0, i32 0
  %57 = load i32, i32* @PERF_COUNT_HW_BRANCH_INSTRUCTIONS, align 4
  store i32 %57, i32* %56, align 8
  %58 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %55, i32 0, i32 1
  %59 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %59, i32* %58, align 4
  %60 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %55, i64 1
  %61 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %60, i32 0, i32 0
  %62 = load i32, i32* @PERF_COUNT_HW_BRANCH_MISSES, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %60, i32 0, i32 1
  %64 = load i32, i32* @PERF_TYPE_HARDWARE, align 4
  store i32 %64, i32* %63, align 4
  %65 = getelementptr inbounds [4 x %struct.perf_event_attr], [4 x %struct.perf_event_attr]* %7, i64 0, i64 0
  %66 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %65, i32 0, i32 0
  %67 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %68 = shl i32 %67, 0
  %69 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %68, %70
  %72 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %73 = shl i32 %72, 16
  %74 = or i32 %71, %73
  store i32 %74, i32* %66, align 8
  %75 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %65, i32 0, i32 1
  %76 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %76, i32* %75, align 4
  %77 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %65, i64 1
  %78 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %77, i32 0, i32 0
  %79 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %80 = shl i32 %79, 0
  %81 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %82 = shl i32 %81, 8
  %83 = or i32 %80, %82
  %84 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %85 = shl i32 %84, 16
  %86 = or i32 %83, %85
  store i32 %86, i32* %78, align 8
  %87 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %77, i32 0, i32 1
  %88 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %88, i32* %87, align 4
  %89 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %77, i64 1
  %90 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %89, i32 0, i32 0
  %91 = load i32, i32* @PERF_COUNT_HW_CACHE_LL, align 4
  %92 = shl i32 %91, 0
  %93 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %94 = shl i32 %93, 8
  %95 = or i32 %92, %94
  %96 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %97 = shl i32 %96, 16
  %98 = or i32 %95, %97
  store i32 %98, i32* %90, align 8
  %99 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %89, i32 0, i32 1
  %100 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %100, i32* %99, align 4
  %101 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %89, i64 1
  %102 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %101, i32 0, i32 0
  %103 = load i32, i32* @PERF_COUNT_HW_CACHE_LL, align 4
  %104 = shl i32 %103, 0
  %105 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %106 = shl i32 %105, 8
  %107 = or i32 %104, %106
  %108 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %109 = shl i32 %108, 16
  %110 = or i32 %107, %109
  store i32 %110, i32* %102, align 8
  %111 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %101, i32 0, i32 1
  %112 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %112, i32* %111, align 4
  %113 = getelementptr inbounds [6 x %struct.perf_event_attr], [6 x %struct.perf_event_attr]* %8, i64 0, i64 0
  %114 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %113, i32 0, i32 0
  %115 = load i32, i32* @PERF_COUNT_HW_CACHE_L1I, align 4
  %116 = shl i32 %115, 0
  %117 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %118 = shl i32 %117, 8
  %119 = or i32 %116, %118
  %120 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %121 = shl i32 %120, 16
  %122 = or i32 %119, %121
  store i32 %122, i32* %114, align 8
  %123 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %113, i32 0, i32 1
  %124 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %124, i32* %123, align 4
  %125 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %113, i64 1
  %126 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %125, i32 0, i32 0
  %127 = load i32, i32* @PERF_COUNT_HW_CACHE_L1I, align 4
  %128 = shl i32 %127, 0
  %129 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %130 = shl i32 %129, 8
  %131 = or i32 %128, %130
  %132 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %133 = shl i32 %132, 16
  %134 = or i32 %131, %133
  store i32 %134, i32* %126, align 8
  %135 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %125, i32 0, i32 1
  %136 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %136, i32* %135, align 4
  %137 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %125, i64 1
  %138 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %137, i32 0, i32 0
  %139 = load i32, i32* @PERF_COUNT_HW_CACHE_DTLB, align 4
  %140 = shl i32 %139, 0
  %141 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %142 = shl i32 %141, 8
  %143 = or i32 %140, %142
  %144 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %145 = shl i32 %144, 16
  %146 = or i32 %143, %145
  store i32 %146, i32* %138, align 8
  %147 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %137, i32 0, i32 1
  %148 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %148, i32* %147, align 4
  %149 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %137, i64 1
  %150 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %149, i32 0, i32 0
  %151 = load i32, i32* @PERF_COUNT_HW_CACHE_DTLB, align 4
  %152 = shl i32 %151, 0
  %153 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %154 = shl i32 %153, 8
  %155 = or i32 %152, %154
  %156 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %157 = shl i32 %156, 16
  %158 = or i32 %155, %157
  store i32 %158, i32* %150, align 8
  %159 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %149, i32 0, i32 1
  %160 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %160, i32* %159, align 4
  %161 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %149, i64 1
  %162 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %161, i32 0, i32 0
  %163 = load i32, i32* @PERF_COUNT_HW_CACHE_ITLB, align 4
  %164 = shl i32 %163, 0
  %165 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %166 = shl i32 %165, 8
  %167 = or i32 %164, %166
  %168 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %169 = shl i32 %168, 16
  %170 = or i32 %167, %169
  store i32 %170, i32* %162, align 8
  %171 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %161, i32 0, i32 1
  %172 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %172, i32* %171, align 4
  %173 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %161, i64 1
  %174 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %173, i32 0, i32 0
  %175 = load i32, i32* @PERF_COUNT_HW_CACHE_ITLB, align 4
  %176 = shl i32 %175, 0
  %177 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_READ, align 4
  %178 = shl i32 %177, 8
  %179 = or i32 %176, %178
  %180 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %181 = shl i32 %180, 16
  %182 = or i32 %179, %181
  store i32 %182, i32* %174, align 8
  %183 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %173, i32 0, i32 1
  %184 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %184, i32* %183, align 4
  %185 = getelementptr inbounds [2 x %struct.perf_event_attr], [2 x %struct.perf_event_attr]* %9, i64 0, i64 0
  %186 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %185, i32 0, i32 0
  %187 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %188 = shl i32 %187, 0
  %189 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_PREFETCH, align 4
  %190 = shl i32 %189, 8
  %191 = or i32 %188, %190
  %192 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_ACCESS, align 4
  %193 = shl i32 %192, 16
  %194 = or i32 %191, %193
  store i32 %194, i32* %186, align 8
  %195 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %185, i32 0, i32 1
  %196 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %196, i32* %195, align 4
  %197 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %185, i64 1
  %198 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %197, i32 0, i32 0
  %199 = load i32, i32* @PERF_COUNT_HW_CACHE_L1D, align 4
  %200 = shl i32 %199, 0
  %201 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_PREFETCH, align 4
  %202 = shl i32 %201, 8
  %203 = or i32 %200, %202
  %204 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MISS, align 4
  %205 = shl i32 %204, 16
  %206 = or i32 %203, %205
  store i32 %206, i32* %198, align 8
  %207 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %197, i32 0, i32 1
  %208 = load i32, i32* @PERF_TYPE_HW_CACHE, align 4
  store i32 %208, i32* %207, align 4
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stat_config, i32 0, i32 3), align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %0
  store i32 0, i32* %1, align 4
  br label %433

212:                                              ; preds = %0
  %213 = load i64, i64* @transaction_run, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %244

215:                                              ; preds = %212
  %216 = call i64 @metricgroup__has_metric(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = bitcast %struct.option* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %219, i8* align 8 bitcast (%struct.option* @__const.add_default_attributes.opt to i8*), i64 8, i1 false)
  %220 = call i32 @metricgroup__parse_groups(%struct.option* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stat_config, i32 0, i32 2))
  store i32 %220, i32* %1, align 4
  br label %433

221:                                              ; preds = %215
  %222 = call i64 @pmu_have_event(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %221
  %225 = call i64 @pmu_have_event(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %224
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %229 = load i8*, i8** @transaction_attrs, align 8
  %230 = call i32 @parse_events(%struct.TYPE_8__* %228, i8* %229, %struct.parse_events_error* %10)
  store i32 %230, i32* %2, align 4
  br label %235

231:                                              ; preds = %224, %221
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %233 = load i8*, i8** @transaction_limited_attrs, align 8
  %234 = call i32 @parse_events(%struct.TYPE_8__* %232, i8* %233, %struct.parse_events_error* %10)
  store i32 %234, i32* %2, align 4
  br label %235

235:                                              ; preds = %231, %227
  %236 = load i32, i32* %2, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load i32, i32* @stderr, align 4
  %240 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %241 = load i8*, i8** @transaction_attrs, align 8
  %242 = call i32 @parse_events_print_error(%struct.parse_events_error* %10, i8* %241)
  store i32 -1, i32* %1, align 4
  br label %433

243:                                              ; preds = %235
  store i32 0, i32* %1, align 4
  br label %433

244:                                              ; preds = %212
  %245 = load i64, i64* @smi_cost, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %291

247:                                              ; preds = %244
  %248 = load i32, i32* @FREEZE_ON_SMI_PATH, align 4
  %249 = call i64 @sysfs__read_int(i32 %248, i32* %12)
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* @stderr, align 4
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %433

254:                                              ; preds = %247
  %255 = load i32, i32* %12, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %265, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* @FREEZE_ON_SMI_PATH, align 4
  %259 = call i64 @sysfs__write_int(i32 %258, i32 1)
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = load i32, i32* @stderr, align 4
  %263 = call i32 (i32, i8*, ...) @fprintf(i32 %262, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %433

264:                                              ; preds = %257
  store i32 1, i32* @smi_reset, align 4
  br label %265

265:                                              ; preds = %264, %254
  %266 = call i64 @pmu_have_event(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %279

268:                                              ; preds = %265
  %269 = call i64 @pmu_have_event(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %279

271:                                              ; preds = %268
  %272 = load i32, i32* @force_metric_only, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stat_config, i32 0, i32 0), align 8
  br label %275

275:                                              ; preds = %274, %271
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %277 = load i8*, i8** @smi_cost_attrs, align 8
  %278 = call i32 @parse_events(%struct.TYPE_8__* %276, i8* %277, %struct.parse_events_error* %10)
  store i32 %278, i32* %2, align 4
  br label %284

279:                                              ; preds = %268, %265
  %280 = load i32, i32* @stderr, align 4
  %281 = call i32 (i32, i8*, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.10, i64 0, i64 0))
  %282 = load i8*, i8** @smi_cost_attrs, align 8
  %283 = call i32 @parse_events_print_error(%struct.parse_events_error* %10, i8* %282)
  store i32 -1, i32* %1, align 4
  br label %433

284:                                              ; preds = %275
  %285 = load i32, i32* %2, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* @stderr, align 4
  %289 = call i32 (i32, i8*, ...) @fprintf(i32 %288, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %433

290:                                              ; preds = %284
  store i32 0, i32* %1, align 4
  br label %433

291:                                              ; preds = %244
  %292 = load i64, i64* @topdown_run, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %359

294:                                              ; preds = %291
  store i8* null, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %295 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stat_config, i32 0, i32 1), align 8
  %296 = load i64, i64* @AGGR_GLOBAL, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %294
  %299 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stat_config, i32 0, i32 1), align 8
  %300 = load i64, i64* @AGGR_CORE, align 8
  %301 = icmp ne i64 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = call i32 @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %433

304:                                              ; preds = %298, %294
  %305 = load i64, i64* @AGGR_CORE, align 8
  store i64 %305, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stat_config, i32 0, i32 1), align 8
  %306 = load i64, i64* @nr_cgroups, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %304
  %309 = call i64 @target__has_cpu(i32* @target)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %308, %304
  %312 = call i32 @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %433

313:                                              ; preds = %308
  %314 = load i32, i32* @force_metric_only, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %313
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @stat_config, i32 0, i32 0), align 8
  br label %317

317:                                              ; preds = %316, %313
  %318 = load i64*, i64** @topdown_attrs, align 8
  %319 = call i32 @arch_topdown_check_group(i32* %14)
  %320 = call i64 @topdown_filter_events(i64* %318, i8** %13, i32 %319)
  %321 = icmp slt i64 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = call i32 @pr_err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %433

324:                                              ; preds = %317
  %325 = load i64*, i64** @topdown_attrs, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 0
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %353

329:                                              ; preds = %324
  %330 = load i8*, i8** %13, align 8
  %331 = icmp ne i8* %330, null
  br i1 %331, label %332, label %353

332:                                              ; preds = %329
  %333 = load i32, i32* %14, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %332
  %336 = call i32 (...) @arch_topdown_group_warn()
  br label %337

337:                                              ; preds = %335, %332
  %338 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %339 = load i8*, i8** %13, align 8
  %340 = call i32 @parse_events(%struct.TYPE_8__* %338, i8* %339, %struct.parse_events_error* %10)
  store i32 %340, i32* %2, align 4
  %341 = load i32, i32* %2, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %337
  %344 = load i32, i32* @stderr, align 4
  %345 = load i8*, i8** %13, align 8
  %346 = load i32, i32* %2, align 4
  %347 = call i32 (i32, i8*, ...) @fprintf(i32 %344, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i8* %345, i32 %346)
  %348 = load i8*, i8** %13, align 8
  %349 = call i32 @parse_events_print_error(%struct.parse_events_error* %10, i8* %348)
  %350 = load i8*, i8** %13, align 8
  %351 = call i32 @free(i8* %350)
  store i32 -1, i32* %1, align 4
  br label %433

352:                                              ; preds = %337
  br label %356

353:                                              ; preds = %329, %324
  %354 = load i32, i32* @stderr, align 4
  %355 = call i32 (i32, i8*, ...) @fprintf(i32 %354, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %433

356:                                              ; preds = %352
  %357 = load i8*, i8** %13, align 8
  %358 = call i32 @free(i8* %357)
  br label %359

359:                                              ; preds = %356, %291
  %360 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %405, label %365

365:                                              ; preds = %359
  %366 = call i64 @target__has_cpu(i32* @target)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %372

368:                                              ; preds = %365
  %369 = load i32, i32* @PERF_COUNT_SW_CPU_CLOCK, align 4
  %370 = getelementptr inbounds [5 x %struct.perf_event_attr], [5 x %struct.perf_event_attr]* %3, i64 0, i64 0
  %371 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %370, i32 0, i32 0
  store i32 %369, i32* %371, align 16
  br label %372

372:                                              ; preds = %368, %365
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %374 = getelementptr inbounds [5 x %struct.perf_event_attr], [5 x %struct.perf_event_attr]* %3, i64 0, i64 0
  %375 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__* %373, %struct.perf_event_attr* %374)
  %376 = icmp slt i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %372
  store i32 -1, i32* %1, align 4
  br label %433

378:                                              ; preds = %372
  %379 = call i64 @pmu_have_event(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %388

381:                                              ; preds = %378
  %382 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %383 = getelementptr inbounds [1 x %struct.perf_event_attr], [1 x %struct.perf_event_attr]* %4, i64 0, i64 0
  %384 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__* %382, %struct.perf_event_attr* %383)
  %385 = icmp slt i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %381
  store i32 -1, i32* %1, align 4
  br label %433

387:                                              ; preds = %381
  br label %388

388:                                              ; preds = %387, %378
  %389 = call i64 @pmu_have_event(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %388
  %392 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %393 = getelementptr inbounds [1 x %struct.perf_event_attr], [1 x %struct.perf_event_attr]* %5, i64 0, i64 0
  %394 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__* %392, %struct.perf_event_attr* %393)
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %391
  store i32 -1, i32* %1, align 4
  br label %433

397:                                              ; preds = %391
  br label %398

398:                                              ; preds = %397, %388
  %399 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %400 = getelementptr inbounds [3 x %struct.perf_event_attr], [3 x %struct.perf_event_attr]* %6, i64 0, i64 0
  %401 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__* %399, %struct.perf_event_attr* %400)
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %398
  store i32 -1, i32* %1, align 4
  br label %433

404:                                              ; preds = %398
  br label %405

405:                                              ; preds = %404, %359
  %406 = load i32, i32* @detailed_run, align 4
  %407 = icmp slt i32 %406, 1
  br i1 %407, label %408, label %409

408:                                              ; preds = %405
  store i32 0, i32* %1, align 4
  br label %433

409:                                              ; preds = %405
  %410 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %411 = getelementptr inbounds [4 x %struct.perf_event_attr], [4 x %struct.perf_event_attr]* %7, i64 0, i64 0
  %412 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__* %410, %struct.perf_event_attr* %411)
  %413 = icmp slt i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %409
  store i32 -1, i32* %1, align 4
  br label %433

415:                                              ; preds = %409
  %416 = load i32, i32* @detailed_run, align 4
  %417 = icmp slt i32 %416, 2
  br i1 %417, label %418, label %419

418:                                              ; preds = %415
  store i32 0, i32* %1, align 4
  br label %433

419:                                              ; preds = %415
  %420 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %421 = getelementptr inbounds [6 x %struct.perf_event_attr], [6 x %struct.perf_event_attr]* %8, i64 0, i64 0
  %422 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__* %420, %struct.perf_event_attr* %421)
  %423 = icmp slt i32 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %419
  store i32 -1, i32* %1, align 4
  br label %433

425:                                              ; preds = %419
  %426 = load i32, i32* @detailed_run, align 4
  %427 = icmp slt i32 %426, 3
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  store i32 0, i32* %1, align 4
  br label %433

429:                                              ; preds = %425
  %430 = load %struct.TYPE_8__*, %struct.TYPE_8__** @evsel_list, align 8
  %431 = getelementptr inbounds [2 x %struct.perf_event_attr], [2 x %struct.perf_event_attr]* %9, i64 0, i64 0
  %432 = call i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__* %430, %struct.perf_event_attr* %431)
  store i32 %432, i32* %1, align 4
  br label %433

433:                                              ; preds = %429, %428, %424, %418, %414, %408, %403, %396, %386, %377, %353, %343, %322, %311, %302, %290, %287, %279, %261, %251, %243, %238, %218, %211
  %434 = load i32, i32* %1, align 4
  ret i32 %434
}

declare dso_local i64 @metricgroup__has_metric(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @metricgroup__parse_groups(%struct.option*, i8*, i32*) #1

declare dso_local i64 @pmu_have_event(i8*, i8*) #1

declare dso_local i32 @parse_events(%struct.TYPE_8__*, i8*, %struct.parse_events_error*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @parse_events_print_error(%struct.parse_events_error*, i8*) #1

declare dso_local i64 @sysfs__read_int(i32, i32*) #1

declare dso_local i64 @sysfs__write_int(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @target__has_cpu(i32*) #1

declare dso_local i64 @topdown_filter_events(i64*, i8**, i32) #1

declare dso_local i32 @arch_topdown_check_group(i32*) #1

declare dso_local i32 @arch_topdown_group_warn(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @perf_evlist__add_default_attrs(%struct.TYPE_8__*, %struct.perf_event_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
