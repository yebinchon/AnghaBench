; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-lock-pi.c_create_threads.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-lock-pi.c_create_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }
%struct.worker = type { i32 }
%struct.perf_cpu_map = type { i32, i32* }

@nthreads = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@worker = common dso_local global %struct.TYPE_3__* null, align 8
@multi = common dso_local global i64 0, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@global_futex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"pthread_attr_setaffinity_np\00", align 1
@workerfn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.worker*, i32, %struct.perf_cpu_map*)* @create_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_threads(%struct.worker* %0, i32 %1, %struct.perf_cpu_map* %2) #0 {
  %4 = alloca %struct.worker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.perf_cpu_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.worker* %0, %struct.worker** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.perf_cpu_map* %2, %struct.perf_cpu_map** %6, align 8
  %9 = load i32, i32* @nthreads, align 4
  store i32 %9, i32* @threads_starting, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %83, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @nthreads, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %86

14:                                               ; preds = %10
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @worker, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %15, i32* %20, align 8
  %21 = load i64, i64* @multi, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %14
  %24 = call i32* @calloc(i32 1, i32 4)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @worker, align 8
  %26 = load i32, i32* %8, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32* %24, i32** %29, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @worker, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i32, i32* @EXIT_FAILURE, align 4
  %39 = call i32 @err(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %23
  br label %47

41:                                               ; preds = %14
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @worker, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32* @global_futex, i32** %46, align 8
  br label %47

47:                                               ; preds = %41, %40
  %48 = call i32 @CPU_ZERO(i32* %7)
  %49 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %6, align 8
  %50 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.perf_cpu_map*, %struct.perf_cpu_map** %6, align 8
  %54 = getelementptr inbounds %struct.perf_cpu_map, %struct.perf_cpu_map* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = urem i32 %52, %55
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %51, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @CPU_SET(i32 %59, i32* %7)
  %61 = call i64 @pthread_attr_setaffinity_np(i32* %5, i32 4, i32* %7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load i32, i32* @EXIT_FAILURE, align 4
  %65 = call i32 @err(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %63, %47
  %67 = load %struct.worker*, %struct.worker** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.worker, %struct.worker* %67, i64 %69
  %71 = getelementptr inbounds %struct.worker, %struct.worker* %70, i32 0, i32 0
  %72 = load i32, i32* @workerfn, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @worker, align 8
  %74 = load i32, i32* %8, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = call i64 @pthread_create(i32* %71, i32* %5, i32 %72, %struct.TYPE_3__* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @EXIT_FAILURE, align 4
  %81 = call i32 @err(i32 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %66
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %10

86:                                               ; preds = %10
  ret void
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i64 @pthread_attr_setaffinity_np(i32*, i32, i32*) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
