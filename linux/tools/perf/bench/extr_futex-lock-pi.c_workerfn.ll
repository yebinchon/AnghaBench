; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-lock-pi.c_workerfn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-lock-pi.c_workerfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i64, i32, i32 }

@thread_lock = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@thread_parent = common dso_local global i32 0, align 4
@thread_worker = common dso_local global i32 0, align 4
@futex_flag = common dso_local global i32 0, align 4
@silent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"thread %d: Could not lock pi-lock for %p (%d)\00", align 1
@done = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"thread %d: Could not unlock pi-lock for %p (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @workerfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @workerfn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worker*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.worker*
  store %struct.worker* %7, %struct.worker** %3, align 8
  %8 = load %struct.worker*, %struct.worker** %3, align 8
  %9 = getelementptr inbounds %struct.worker, %struct.worker* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %4, align 8
  %11 = call i32 @pthread_mutex_lock(i32* @thread_lock)
  %12 = load i32, i32* @threads_starting, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* @threads_starting, align 4
  %14 = load i32, i32* @threads_starting, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @pthread_cond_signal(i32* @thread_parent)
  br label %18

18:                                               ; preds = %16, %1
  %19 = call i32 @pthread_cond_wait(i32* @thread_worker, i32* @thread_lock)
  %20 = call i32 @pthread_mutex_unlock(i32* @thread_lock)
  br label %21

21:                                               ; preds = %71, %18
  br label %22

22:                                               ; preds = %46, %21
  %23 = load %struct.worker*, %struct.worker** %3, align 8
  %24 = getelementptr inbounds %struct.worker, %struct.worker* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @futex_flag, align 4
  %27 = call i32 @futex_lock_pi(i32 %25, i32* null, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %22
  %31 = load i32, i32* @silent, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.worker*, %struct.worker** %3, align 8
  %35 = getelementptr inbounds %struct.worker, %struct.worker* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.worker*, %struct.worker** %3, align 8
  %38 = getelementptr inbounds %struct.worker, %struct.worker* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %33, %30
  %43 = load i64, i64* @done, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %75

46:                                               ; preds = %42
  br label %22

47:                                               ; preds = %22
  %48 = call i32 @usleep(i32 1)
  %49 = load %struct.worker*, %struct.worker** %3, align 8
  %50 = getelementptr inbounds %struct.worker, %struct.worker* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @futex_flag, align 4
  %53 = call i32 @futex_unlock_pi(i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %47
  %57 = load i32, i32* @silent, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load %struct.worker*, %struct.worker** %3, align 8
  %61 = getelementptr inbounds %struct.worker, %struct.worker* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.worker*, %struct.worker** %3, align 8
  %64 = getelementptr inbounds %struct.worker, %struct.worker* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %56, %47
  %69 = load i64, i64* %4, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %4, align 8
  br label %71

71:                                               ; preds = %68
  %72 = load i64, i64* @done, align 8
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  br i1 %74, label %21, label %75

75:                                               ; preds = %71, %45
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.worker*, %struct.worker** %3, align 8
  %78 = getelementptr inbounds %struct.worker, %struct.worker* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @futex_lock_pi(i32, i32*, i32) #1

declare dso_local i32 @warn(i8*, i32, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @futex_unlock_pi(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
