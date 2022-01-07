; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_third_party_blocker.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi.c_third_party_blocker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread_arg = type { i64 }

@f2 = common dso_local global i32 0, align 4
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@wake_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"third_party_blocker() futex error\00", align 1
@RET_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @third_party_blocker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.thread_arg*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.thread_arg*
  store %struct.thread_arg* %7, %struct.thread_arg** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %9 = call i64 @futex_lock_pi(i32* @f2, i32* null, i32 0, i32 %8)
  %10 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %11 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %13 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %25

17:                                               ; preds = %1
  %18 = load i32, i32* @wake_complete, align 4
  %19 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %20 = call i64 @futex_wait(i32* @wake_complete, i32 %18, i32* null, i32 %19)
  %21 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %22 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %24 = call i32 @futex_unlock_pi(i32* @f2, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %17, %16
  %26 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %27 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30, %25
  %34 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 0)
  %35 = load i64, i64* @RET_ERROR, align 8
  %36 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %37 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %40 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %39, i32 0, i32 0
  %41 = bitcast i64* %40 to i8*
  %42 = call i32 @pthread_exit(i8* %41)
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i64 @futex_lock_pi(i32*, i32*, i32, i32) #1

declare dso_local i64 @futex_wait(i32*, i32, i32*, i32) #1

declare dso_local i32 @futex_unlock_pi(i32*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @pthread_exit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
