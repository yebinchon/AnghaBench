; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-lock-pi.c_bench_futex_lock_pi.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-lock-pi.c_bench_futex_lock_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.sigaction = type { i32 (i32, i32*, i32*)*, i32 }
%struct.perf_cpu_map = type { i32 }

@options = common dso_local global i32 0, align 4
@bench_futex_lock_pi_usage = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@worker = common dso_local global %struct.TYPE_6__* null, align 8
@fshared = common dso_local global i32 0, align 4
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@futex_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Run summary [PID %d]: %d threads doing pi lock/unlock pairing for %d secs.\0A\0A\00", align 1
@nsecs = common dso_local global i32 0, align 4
@throughput_stats = common dso_local global i32 0, align 4
@thread_lock = common dso_local global i32 0, align 4
@thread_parent = common dso_local global i32 0, align 4
@thread_worker = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@start = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@runtime = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@silent = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"[thread %3d] futex: %p [ %ld ops/sec ]\0A\00", align 1
@multi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bench_futex_lock_pi(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sigaction, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.perf_cpu_map*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i8**, i8*** %4, align 8
  %13 = load i32, i32* @options, align 4
  %14 = load i32, i32* @bench_futex_lock_pi_usage, align 4
  %15 = call i32 @parse_options(i32 %11, i8** %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %157

19:                                               ; preds = %2
  %20 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %20, %struct.perf_cpu_map** %9, align 8
  %21 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %22 = icmp ne %struct.perf_cpu_map* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @EXIT_FAILURE, align 4
  %25 = call i32 @err(i32 %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %23, %19
  %27 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 1
  %28 = call i32 @sigfillset(i32* %27)
  %29 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %7, i32 0, i32 0
  store i32 (i32, i32*, i32*)* @toggle_done, i32 (i32, i32*, i32*)** %29, align 8
  %30 = load i32, i32* @SIGINT, align 4
  %31 = call i32 @sigaction(i32 %30, %struct.sigaction* %7, i32* null)
  %32 = load i32, i32* @nthreads, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %36 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @nthreads, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* @nthreads, align 4
  %40 = call %struct.TYPE_6__* @calloc(i32 %39, i32 24)
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** @worker, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @EXIT_FAILURE, align 4
  %45 = call i32 @err(i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* @fshared, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  store i32 %50, i32* @futex_flag, align 4
  br label %51

51:                                               ; preds = %49, %46
  %52 = call i32 (...) @getpid()
  %53 = load i32, i32* @nthreads, align 4
  %54 = load i32, i32* @nsecs, align 4
  %55 = sext i32 %54 to i64
  %56 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i64 %55)
  %57 = call i32 @init_stats(i32* @throughput_stats)
  %58 = call i32 @pthread_mutex_init(i32* @thread_lock, i32* null)
  %59 = call i32 @pthread_cond_init(i32* @thread_parent, i32* null)
  %60 = call i32 @pthread_cond_init(i32* @thread_worker, i32* null)
  %61 = load i32, i32* @nthreads, align 4
  store i32 %61, i32* @threads_starting, align 4
  %62 = call i32 @pthread_attr_init(i32* %8)
  %63 = call i32 @gettimeofday(i32* @start, i32* null)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %9, align 8
  %67 = call i32 @create_threads(%struct.TYPE_6__* %64, i32 %65, %struct.perf_cpu_map* %66)
  %68 = call i32 @pthread_attr_destroy(i32* %8)
  %69 = call i32 @pthread_mutex_lock(i32* @thread_lock)
  br label %70

70:                                               ; preds = %73, %51
  %71 = load i32, i32* @threads_starting, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @pthread_cond_wait(i32* @thread_parent, i32* @thread_lock)
  br label %70

75:                                               ; preds = %70
  %76 = call i32 @pthread_cond_broadcast(i32* @thread_worker)
  %77 = call i32 @pthread_mutex_unlock(i32* @thread_lock)
  %78 = load i32, i32* @nsecs, align 4
  %79 = call i32 @sleep(i32 %78)
  %80 = call i32 @toggle_done(i32 0, i32* null, i32* null)
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %99, %75
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @nthreads, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %87 = load i32, i32* %6, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @pthread_join(i32 %91, i32* null)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load i32, i32* @EXIT_FAILURE, align 4
  %97 = call i32 @err(i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %85
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %81

102:                                              ; preds = %81
  %103 = call i32 @pthread_cond_destroy(i32* @thread_parent)
  %104 = call i32 @pthread_cond_destroy(i32* @thread_worker)
  %105 = call i32 @pthread_mutex_destroy(i32* @thread_lock)
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %149, %102
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @nthreads, align 4
  %109 = icmp ult i32 %107, %108
  br i1 %109, label %110, label %152

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %112 = load i32, i32* %6, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @runtime, i32 0, i32 0), align 8
  %118 = udiv i64 %116, %117
  store i64 %118, i64* %10, align 8
  %119 = load i64, i64* %10, align 8
  %120 = call i32 @update_stats(i32* @throughput_stats, i64 %119)
  %121 = load i32, i32* @silent, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %138, label %123

123:                                              ; preds = %110
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %131 = load i32, i32* %6, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i64, i64* %10, align 8
  %137 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %135, i64 %136)
  br label %138

138:                                              ; preds = %123, %110
  %139 = load i64, i64* @multi, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %143 = load i32, i32* %6, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = call i32 @zfree(i32* %146)
  br label %148

148:                                              ; preds = %141, %138
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %106

152:                                              ; preds = %106
  %153 = call i32 (...) @print_summary()
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @worker, align 8
  %155 = call i32 @free(%struct.TYPE_6__* %154)
  %156 = load i32, i32* %5, align 4
  ret i32 %156

157:                                              ; preds = %18
  %158 = load i32, i32* @bench_futex_lock_pi_usage, align 4
  %159 = load i32, i32* @options, align 4
  %160 = call i32 @usage_with_options(i32 %158, i32 %159)
  %161 = load i32, i32* @EXIT_FAILURE, align 4
  %162 = call i32 @exit(i32 %161) #3
  unreachable
}

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

declare dso_local %struct.perf_cpu_map* @perf_cpu_map__new(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @toggle_done(i32, i32*, i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i64) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @init_stats(i32*) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i32 @pthread_cond_init(i32*, i32*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @create_threads(%struct.TYPE_6__*, i32, %struct.perf_cpu_map*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @update_stats(i32*, i64) #1

declare dso_local i32 @zfree(i32*) #1

declare dso_local i32 @print_summary(...) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32 @usage_with_options(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
