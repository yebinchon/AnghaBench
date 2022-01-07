; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-hash.c_workerfn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/bench/extr_futex-hash.c_workerfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i64, i32* }

@thread_lock = common dso_local global i32 0, align 4
@threads_starting = common dso_local global i32 0, align 4
@thread_parent = common dso_local global i32 0, align 4
@thread_worker = common dso_local global i32 0, align 4
@nfutexes = common dso_local global i32 0, align 4
@futex_flag = common dso_local global i32 0, align 4
@silent = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Non-expected futex return call\00", align 1
@done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @workerfn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @workerfn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.worker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.worker*
  store %struct.worker* %8, %struct.worker** %4, align 8
  %9 = load %struct.worker*, %struct.worker** %4, align 8
  %10 = getelementptr inbounds %struct.worker, %struct.worker* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = call i32 @pthread_mutex_lock(i32* @thread_lock)
  %13 = load i32, i32* @threads_starting, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @threads_starting, align 4
  %15 = load i32, i32* @threads_starting, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = call i32 @pthread_cond_signal(i32* @thread_parent)
  br label %19

19:                                               ; preds = %17, %1
  %20 = call i32 @pthread_cond_wait(i32* @thread_worker, i32* @thread_lock)
  %21 = call i32 @pthread_mutex_unlock(i32* @thread_lock)
  br label %22

22:                                               ; preds = %58, %19
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %52, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @nfutexes, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load %struct.worker*, %struct.worker** %4, align 8
  %29 = getelementptr inbounds %struct.worker, %struct.worker* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* @futex_flag, align 4
  %35 = call i32 @futex_wait(i32* %33, i32 1234, i32* null, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @silent, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EAGAIN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @EWOULDBLOCK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41, %38
  %50 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45, %27
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %6, align 8
  br label %23

57:                                               ; preds = %23
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* @done, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br i1 %61, label %22, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.worker*, %struct.worker** %4, align 8
  %65 = getelementptr inbounds %struct.worker, %struct.worker* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  ret i8* null
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @futex_wait(i32*, i32, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
