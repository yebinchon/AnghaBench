; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_print_sample.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-sched.c_timehist_print_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_sched = type { i64, i64, i64, i64, i64, i64 }
%struct.evsel = type { i32 }
%struct.perf_sample = type { i32 }
%struct.addr_location = type { i32 }
%struct.thread = type { i64 }
%struct.thread_runtime = type { i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"next_comm\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"next_pid\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%15s [%04d] \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %-*s \00", align 1
@comm_width = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c" %5c \00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"next: %s[%d]\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %-*s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"  %-*s\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@EVSEL__PRINT_SYM = common dso_local global i32 0, align 4
@EVSEL__PRINT_ONELINE = common dso_local global i32 0, align 4
@EVSEL__PRINT_CALLCHAIN_ARROW = common dso_local global i32 0, align 4
@EVSEL__PRINT_SKIP_IGNORED = common dso_local global i32 0, align 4
@callchain_cursor = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@stdout = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_sched*, %struct.evsel*, %struct.perf_sample*, %struct.addr_location*, %struct.thread*, i64, i32)* @timehist_print_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timehist_print_sample(%struct.perf_sched* %0, %struct.evsel* %1, %struct.perf_sample* %2, %struct.addr_location* %3, %struct.thread* %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.perf_sched*, align 8
  %9 = alloca %struct.evsel*, align 8
  %10 = alloca %struct.perf_sample*, align 8
  %11 = alloca %struct.addr_location*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.thread_runtime*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [64 x i8], align 16
  %20 = alloca [30 x i8], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8, align 1
  store %struct.perf_sched* %0, %struct.perf_sched** %8, align 8
  store %struct.evsel* %1, %struct.evsel** %9, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %10, align 8
  store %struct.addr_location* %3, %struct.addr_location** %11, align 8
  store %struct.thread* %4, %struct.thread** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %24 = load %struct.thread*, %struct.thread** %12, align 8
  %25 = call %struct.thread_runtime* @thread__priv(%struct.thread* %24)
  store %struct.thread_runtime* %25, %struct.thread_runtime** %15, align 8
  %26 = load %struct.evsel*, %struct.evsel** %9, align 8
  %27 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %28 = call i8* @perf_evsel__strval(%struct.evsel* %26, %struct.perf_sample* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %16, align 8
  %29 = load %struct.evsel*, %struct.evsel** %9, align 8
  %30 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %31 = call i64 @perf_evsel__intval(%struct.evsel* %29, %struct.perf_sample* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 %31, i64* %17, align 8
  %32 = load %struct.perf_sched*, %struct.perf_sched** %8, align 8
  %33 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %18, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %38 = call i32 @timestamp__scnprintf_usec(i64 %36, i8* %37, i32 64)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 0
  %40 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %41 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %42)
  %44 = load %struct.perf_sched*, %struct.perf_sched** %8, align 8
  %45 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %79

48:                                               ; preds = %7
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %22, align 8
  br label %50

50:                                               ; preds = %74, %48
  %51 = load i64, i64* %22, align 8
  %52 = load i64, i64* %18, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load i64, i64* %22, align 8
  %56 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %57 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp eq i64 %55, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.thread*, %struct.thread** %12, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 105, i32 115
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %23, align 1
  br label %70

69:                                               ; preds = %54
  store i8 32, i8* %23, align 1
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i8, i8* %23, align 1
  %72 = sext i8 %71 to i32
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %22, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %22, align 8
  br label %50

77:                                               ; preds = %50
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %7
  %80 = load i8*, i8** @comm_width, align 8
  %81 = load %struct.thread*, %struct.thread** %12, align 8
  %82 = call i32 @timehist_get_commstr(%struct.thread* %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %80, i32 %82)
  %84 = load %struct.thread_runtime*, %struct.thread_runtime** %15, align 8
  %85 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %84, i32 0, i32 4
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.thread_runtime*, %struct.thread_runtime** %15, align 8
  %88 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.thread_runtime*, %struct.thread_runtime** %15, align 8
  %92 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %90, %93
  store i64 %94, i64* %21, align 8
  %95 = load i64, i64* %21, align 8
  %96 = call i32 @print_sched_time(i64 %95, i32 6)
  %97 = load %struct.thread_runtime*, %struct.thread_runtime** %15, align 8
  %98 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @print_sched_time(i64 %99, i32 6)
  %101 = load %struct.thread_runtime*, %struct.thread_runtime** %15, align 8
  %102 = getelementptr inbounds %struct.thread_runtime, %struct.thread_runtime* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @print_sched_time(i64 %103, i32 6)
  %105 = load %struct.perf_sched*, %struct.perf_sched** %8, align 8
  %106 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %79
  %110 = load %struct.thread*, %struct.thread** %12, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @task_state_char(%struct.thread* %110, i32 %111)
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %109, %79
  %115 = load %struct.perf_sched*, %struct.perf_sched** %8, align 8
  %116 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 0, i64 0
  %121 = load i8*, i8** %16, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i32 @snprintf(i8* %120, i32 30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %121, i64 %122)
  %124 = load i8*, i8** @comm_width, align 8
  %125 = getelementptr inbounds [30 x i8], [30 x i8]* %20, i64 0, i64 0
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %124, i8* %125)
  br label %127

127:                                              ; preds = %119, %114
  %128 = load %struct.perf_sched*, %struct.perf_sched** %8, align 8
  %129 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = load %struct.perf_sched*, %struct.perf_sched** %8, align 8
  %134 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load i8*, i8** @comm_width, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* %138, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %132, %127
  %141 = load %struct.thread*, %struct.thread** %12, align 8
  %142 = getelementptr inbounds %struct.thread, %struct.thread* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %166

146:                                              ; preds = %140
  %147 = load %struct.perf_sched*, %struct.perf_sched** %8, align 8
  %148 = getelementptr inbounds %struct.perf_sched, %struct.perf_sched* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %146
  %154 = load %struct.perf_sample*, %struct.perf_sample** %10, align 8
  %155 = load %struct.addr_location*, %struct.addr_location** %11, align 8
  %156 = load i32, i32* @EVSEL__PRINT_SYM, align 4
  %157 = load i32, i32* @EVSEL__PRINT_ONELINE, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @EVSEL__PRINT_CALLCHAIN_ARROW, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @EVSEL__PRINT_SKIP_IGNORED, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @symbol_conf, i32 0, i32 0), align 4
  %164 = load i32, i32* @stdout, align 4
  %165 = call i32 @sample__fprintf_sym(%struct.perf_sample* %154, %struct.addr_location* %155, i32 0, i32 %162, i32* @callchain_cursor, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %153, %145
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local %struct.thread_runtime* @thread__priv(%struct.thread*) #1

declare dso_local i8* @perf_evsel__strval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i64 @perf_evsel__intval(%struct.evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @timestamp__scnprintf_usec(i64, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @timehist_get_commstr(%struct.thread*) #1

declare dso_local i32 @print_sched_time(i64, i32) #1

declare dso_local i32 @task_state_char(%struct.thread*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i64) #1

declare dso_local i32 @sample__fprintf_sym(%struct.perf_sample*, %struct.addr_location*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
