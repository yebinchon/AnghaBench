; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_waiterfn.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_waiterfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_arg = type { i64, i64, i64 }

@.str = private unnamed_addr constant [21 x i8] c"Waiter %ld: running\0A\00", align 1
@f1 = common dso_local global i32 0, align 4
@waiters_blocked = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Calling futex_wait_requeue_pi: %p (%u) -> %p\0A\00", align 1
@f2 = common dso_local global i32 0, align 4
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"waiter %ld woke with %d %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@waiters_woken = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i64 0, align 8
@RET_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"futex_wait_requeue_pi\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Waiter %ld: exiting with %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @waiterfn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.thread_arg*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.thread_arg*
  store %struct.thread_arg* %7, %struct.thread_arg** %4, align 8
  %8 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %9 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 (i8*, i64, ...) @info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %13 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = mul nsw i64 1000, %14
  %16 = trunc i64 %15 to i32
  %17 = call i32 @usleep(i32 %16)
  %18 = load i32, i32* @f1, align 4
  store i32 %18, i32* %5, align 4
  %19 = call i32 @atomic_inc(i32* @waiters_blocked)
  %20 = load i32, i32* @f1, align 4
  %21 = call i32 (i8*, i64, ...) @info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 ptrtoint (i32* @f1 to i64), i32 %20, i32* @f2)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %24 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %27 = call i64 @futex_wait_requeue_pi(i32* @f1, i32 %22, i32* @f2, i64 %25, i32 %26)
  %28 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %29 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %31 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %34 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %37 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %1
  %41 = load i64, i64* @errno, align 8
  %42 = call i8* @strerror(i64 %41)
  br label %44

43:                                               ; preds = %1
  br label %44

44:                                               ; preds = %43, %40
  %45 = phi i8* [ %42, %40 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %43 ]
  %46 = call i32 (i8*, i64, ...) @info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %32, i64 %35, i8* %45)
  %47 = call i32 @atomic_inc(i32* @waiters_woken)
  %48 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %49 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %44
  %53 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %54 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load i64, i64* @errno, align 8
  %59 = load i64, i64* @ETIMEDOUT, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %63 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  br label %70

64:                                               ; preds = %57, %52
  %65 = load i64, i64* @RET_ERROR, align 8
  %66 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %67 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i64, i64* @errno, align 8
  %69 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %64, %61
  %71 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %72 = call i32 @futex_lock_pi(i32* @f2, i32* null, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %70, %44
  %74 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %75 = call i32 @futex_unlock_pi(i32* @f2, i32 %74)
  %76 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %77 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %80 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, i64, ...) @info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i64 %78, i64 %81)
  %83 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %84 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %83, i32 0, i32 0
  %85 = bitcast i64* %84 to i8*
  %86 = call i32 @pthread_exit(i8* %85)
  %87 = load i8*, i8** %2, align 8
  ret i8* %87
}

declare dso_local i32 @info(i8*, i64, ...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @futex_wait_requeue_pi(i32*, i32, i32*, i64, i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @futex_lock_pi(i32*, i32*, i32, i32) #1

declare dso_local i32 @futex_unlock_pi(i32*, i32) #1

declare dso_local i32 @pthread_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
