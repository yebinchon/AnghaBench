; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-requeue.c_bench_futex_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-requeue.c_bench_futex_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32 }
%struct.perf_cpu_map = type { i32 }
%struct.timeval = type { i32 }

@options = common dso_local global i32 0, align 4
@bench_futex_requeue_usage = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cpu_map__new\00", align 1
@toggle_done = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@worker = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@fshared = common dso_local global i64 0, align 8
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@futex_flag = common dso_local global i32 0, align 4
@nrequeue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"Run summary [PID %d]: Requeuing %d threads (from [%s] %p to %p), %d at a time.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@futex1 = common dso_local global i32 0, align 4
@futex2 = common dso_local global i32 0, align 4
@requeued_stats = common dso_local global i32 0, align 4
@requeuetime_stats = common dso_local global i32 0, align 4
@thread_lock = common dso_local global i32 0, align 4
@thread_parent = common dso_local global i32 0, align 4
@thread_worker = common dso_local global i32 0, align 4
@bench_repeat = common dso_local global i32 0, align 4
@done = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i64 0, align 8
@silent = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"[Run %d]: Requeued %d of %d threads in %.4f ms\0A\00", align 1
@USEC_PER_MSEC = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [34 x i8] c"couldn't wakeup all tasks (%d/%d)\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bench_futex_requeue(i32 %0, i8** %1) #0 {
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
  %18 = load i32, i32* @bench_futex_requeue_usage, align 4
  %19 = call i32 @parse_options(i32 %15, i8** %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %182

23:                                               ; preds = %2
  %24 = call %struct.perf_cpu_map* @perf_cpu_map__new(i32* null)
  store %struct.perf_cpu_map* %24, %struct.perf_cpu_map** %10, align 8
  %25 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %26 = icmp ne %struct.perf_cpu_map* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i32 @err(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %23
  %31 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 1
  %32 = call i32 @sigfillset(i32* %31)
  %33 = load i32, i32* @toggle_done, align 4
  %34 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %8, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @SIGINT, align 4
  %36 = call i32 @sigaction(i32 %35, %struct.sigaction* %8, i32* null)
  %37 = load i32, i32* @nthreads, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %41 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @nthreads, align 4
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* @nthreads, align 4
  %45 = call i32* @calloc(i32 %44, i32 4)
  store i32* %45, i32** @worker, align 8
  %46 = load i32*, i32** @worker, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @err(i32 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load i64, i64* @fshared, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  store i32 %55, i32* @futex_flag, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, i32* @nrequeue, align 4
  %58 = load i32, i32* @nthreads, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @nthreads, align 4
  store i32 %61, i32* @nrequeue, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = call i32 (...) @getpid()
  %64 = load i32, i32* @nthreads, align 4
  %65 = load i64, i64* @fshared, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)
  %69 = load i32, i32* @nrequeue, align 4
  %70 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %64, i8* %68, i32* @futex1, i32* @futex2, i32 %69)
  %71 = call i32 @init_stats(i32* @requeued_stats)
  %72 = call i32 @init_stats(i32* @requeuetime_stats)
  %73 = call i32 @pthread_attr_init(i32* %9)
  %74 = call i32 @pthread_mutex_init(i32* @thread_lock, i32* null)
  %75 = call i32 @pthread_cond_init(i32* @thread_parent, i32* null)
  %76 = call i32 @pthread_cond_init(i32* @thread_worker, i32* null)
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %170, %62
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @bench_repeat, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @done, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ false, %77 ], [ %84, %81 ]
  br i1 %86, label %87, label %173

87:                                               ; preds = %85
  store i32 0, i32* %11, align 4
  %88 = load i32*, i32** @worker, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %10, align 8
  %91 = call i32 @block_threads(i32* %88, i32 %89, %struct.perf_cpu_map* %90)
  %92 = call i32 @pthread_mutex_lock(i32* @thread_lock)
  br label %93

93:                                               ; preds = %96, %87
  %94 = load i64, i64* @threads_starting, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 @pthread_cond_wait(i32* @thread_parent, i32* @thread_lock)
  br label %93

98:                                               ; preds = %93
  %99 = call i32 @pthread_cond_broadcast(i32* @thread_worker)
  %100 = call i32 @pthread_mutex_unlock(i32* @thread_lock)
  %101 = call i32 @usleep(i32 100000)
  %102 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  br label %103

103:                                              ; preds = %107, %98
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @nthreads, align 4
  %106 = icmp ult i32 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load i32, i32* @nrequeue, align 4
  %109 = load i32, i32* @futex_flag, align 4
  %110 = call i64 @futex_cmp_requeue(i32* @futex1, i32 0, i32* @futex2, i32 0, i32 %108, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = zext i32 %111 to i64
  %113 = add nsw i64 %112, %110
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %11, align 4
  br label %103

115:                                              ; preds = %103
  %116 = call i32 @gettimeofday(%struct.timeval* %13, i32* null)
  %117 = call i32 @timersub(%struct.timeval* %13, %struct.timeval* %12, %struct.timeval* %14)
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @update_stats(i32* @requeued_stats, i32 %118)
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @update_stats(i32* @requeuetime_stats, i32 %121)
  %123 = load i32, i32* @silent, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %7, align 4
  %127 = add i32 %126, 1
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @nthreads, align 4
  %130 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = uitofp i32 %131 to double
  %133 = load i64, i64* @USEC_PER_MSEC, align 8
  %134 = sitofp i64 %133 to double
  %135 = fdiv double %132, %134
  %136 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %128, i32 %129, double %135)
  br label %137

137:                                              ; preds = %125, %115
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @futex_flag, align 4
  %140 = call i32 @futex_wake(i32* @futex2, i32 %138, i32 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* @nthreads, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @nthreads, align 4
  %147 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %137
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %166, %148
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @nthreads, align 4
  %152 = icmp ult i32 %150, %151
  br i1 %152, label %153, label %169

153:                                              ; preds = %149
  %154 = load i32*, i32** @worker, align 8
  %155 = load i32, i32* %6, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @pthread_join(i32 %158, i32* null)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load i32, i32* @EXIT_FAILURE, align 4
  %164 = call i32 @err(i32 %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %153
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %149

169:                                              ; preds = %149
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %7, align 4
  %172 = add i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %77

173:                                              ; preds = %85
  %174 = call i32 @pthread_cond_destroy(i32* @thread_parent)
  %175 = call i32 @pthread_cond_destroy(i32* @thread_worker)
  %176 = call i32 @pthread_mutex_destroy(i32* @thread_lock)
  %177 = call i32 @pthread_attr_destroy(i32* %9)
  %178 = call i32 (...) @print_summary()
  %179 = load i32*, i32** @worker, align 8
  %180 = call i32 @free(i32* %179)
  %181 = load i32, i32* %5, align 4
  ret i32 %181

182:                                              ; preds = %22
  %183 = load i32, i32* @bench_futex_requeue_usage, align 4
  %184 = load i32, i32* @options, align 4
  %185 = call i32 @usage_with_options(i32 %183, i32 %184)
  %186 = load i32, i32* @EXIT_FAILURE, align 4
  %187 = call i32 @exit(i32 %186) #3
  unreachable
}

declare dso_local i32 @parse_options(i32, i8**, i32, i32, i32) #1

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

declare dso_local i64 @futex_cmp_requeue(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @update_stats(i32*, i32) #1

declare dso_local i32 @futex_wake(i32*, i32, i32) #1

declare dso_local i32 @warnx(i8*, i32, i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @pthread_cond_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_destroy(i32*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @print_summary(...) #1

declare dso_local i32 @free(i32*) #1

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
