; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-wake.c_bench_futex_wake.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-wake.c_bench_futex_wake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }
%struct.perf_cpu_map = type { i32 }
%struct.timeval = type { i32 }

@options = common dso_local global i32 0, align 4
@bench_futex_wake_usage = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@toggle_done = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@ncpus = common dso_local global i32 0, align 4
@worker = common dso_local global i32* null, align 8
@fshared = common dso_local global i64 0, align 8
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@futex_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Run summary [PID %d]: blocking on %d threads (at [%s] futex %p), waking up %d at a time.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@futex1 = common dso_local global i32 0, align 4
@nwakes = common dso_local global i32 0, align 4
@wakeup_stats = common dso_local global i32 0, align 4
@waketime_stats = common dso_local global i32 0, align 4
@thread_lock = common dso_local global i32 0, align 4
@thread_parent = common dso_local global i32 0, align 4
@thread_worker = common dso_local global i32 0, align 4
@bench_repeat = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i64 0, align 8
@silent = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"[Run %d]: Wokeup %d of %d threads in %.4f ms\0A\00", align 1
@USEC_PER_MSEC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bench_futex_wake(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigaction, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.perf_cpu_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.timeval, align 4
  %14 = alloca %struct.timeval, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i8**, i8*** %4, align 8
  %17 = load i32, i32* @options, align 4
  %18 = load i32, i32* @bench_futex_wake_usage, align 4
  %19 = call i32 @parse_options(i32 %15, i8** %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @bench_futex_wake_usage, align 4
  %24 = load i32, i32* @options, align 4
  %25 = call i32 @usage_with_options(i32 %23, i32 %24)
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  %27 = call i32 @exit(i32 %26) #3
  unreachable

28:                                               ; preds = %2
  %29 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %29, %struct.perf_cpu_map** %10, align 8
  %30 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %31 = icmp ne %struct.perf_cpu_map* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @EXIT_FAILURE, align 4
  %34 = call i32 @err(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  %37 = call i32 @sigfillset(i32* %36)
  %38 = load i32, i32* @toggle_done, align 4
  %39 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @SIGINT, align 4
  %41 = call i32 @sigaction(i32 %40, %struct.sigaction* %8, i32* null)
  %42 = load i32, i32* @nthreads, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ncpus, align 4
  store i32 %45, i32* @nthreads, align 4
  br label %46

46:                                               ; preds = %44, %35
  %47 = load i32, i32* @nthreads, align 4
  %48 = call i32* @calloc(i32 %47, i32 4)
  store i32* %48, i32** @worker, align 8
  %49 = load i32*, i32** @worker, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EXIT_FAILURE, align 4
  %53 = call i32 @err(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i64, i64* @fshared, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  store i32 %58, i32* @futex_flag, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = call i32 (...) @getpid()
  %61 = load i32, i32* @nthreads, align 4
  %62 = load i64, i64* @fshared, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %66 = load i32, i32* @nwakes, align 4
  %67 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i8* %65, i32* @futex1, i32 %66)
  %68 = call i32 @init_stats(i32* @wakeup_stats)
  %69 = call i32 @init_stats(i32* @waketime_stats)
  %70 = call i32 @pthread_attr_init(i32* %9)
  %71 = call i32 @pthread_mutex_init(i32* @thread_lock, i32* null)
  %72 = call i32 @pthread_cond_init(i32* @thread_parent, i32* null)
  %73 = call i32 @pthread_cond_init(i32* @thread_worker, i32* null)
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %156, %59
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @bench_repeat, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @done, align 4
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i1 [ false, %74 ], [ %81, %78 ]
  br i1 %83, label %84, label %159

84:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  %85 = load i32*, i32** @worker, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %88 = call i32 @block_threads(i32* %85, i32 %86, %struct.perf_cpu_map* %87)
  %89 = call i32 @pthread_mutex_lock(i32* @thread_lock)
  br label %90

90:                                               ; preds = %93, %84
  %91 = load i64, i64* @threads_starting, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = call i32 @pthread_cond_wait(i32* @thread_parent, i32* @thread_lock)
  br label %90

95:                                               ; preds = %90
  %96 = call i32 @pthread_cond_broadcast(i32* @thread_worker)
  %97 = call i32 @pthread_mutex_unlock(i32* @thread_lock)
  %98 = call i32 @usleep(i32 100000)
  %99 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  br label %100

100:                                              ; preds = %104, %95
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @nthreads, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* @nwakes, align 4
  %106 = load i32, i32* @futex_flag, align 4
  %107 = call i64 @futex_wake(i32* @futex1, i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %11, align 4
  br label %100

112:                                              ; preds = %100
  %113 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %114 = call i32 @timersub(%struct.timeval* %13, %struct.timeval* %12, %struct.timeval* %14)
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @update_stats(i32* @wakeup_stats, i32 %115)
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @update_stats(i32* @waketime_stats, i32 %118)
  %120 = load i32, i32* @silent, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %134, label %122

122:                                              ; preds = %112
  %123 = load i32, i32* %7, align 4
  %124 = add i32 %123, 1
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @nthreads, align 4
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = uitofp i32 %128 to double
  %130 = load i64, i64* @USEC_PER_MSEC, align 8
  %131 = sitofp i64 %130 to double
  %132 = fdiv double %129, %131
  %133 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %124, i32 %125, i32 %126, double %132)
  br label %134

134:                                              ; preds = %122, %112
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %152, %134
  %136 = load i32, i32* %6, align 4
  %137 = load i32, i32* @nthreads, align 4
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %135
  %140 = load i32*, i32** @worker, align 8
  %141 = load i32, i32* %6, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pthread_join(i32 %144, i32* null)
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = load i32, i32* @EXIT_FAILURE, align 4
  %150 = call i32 @err(i32 %149, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %148, %139
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %6, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %135

155:                                              ; preds = %135
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %7, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %74

159:                                              ; preds = %82
  %160 = call i32 @pthread_cond_destroy(i32* @thread_parent)
  %161 = call i32 @pthread_cond_destroy(i32* @thread_worker)
  %162 = call i32 @pthread_mutex_destroy(i32* @thread_lock)
  %163 = call i32 @pthread_attr_destroy(i32* %9)
  %164 = call i32 (...) @print_summary()
  %165 = load i32*, i32** @worker, align 8
  %166 = call i32 @free(i32* %165)
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @init_stats(i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @block_threads(i32*, i32, %struct.perf_cpu_map*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i64 @futex_wake(i32*, i32, i32) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @update_stats(i32*, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @print_summary(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
