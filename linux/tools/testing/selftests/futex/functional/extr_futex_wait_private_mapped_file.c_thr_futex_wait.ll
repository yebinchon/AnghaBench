; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_private_mapped_file.c_thr_futex_wait.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_wait_private_mapped_file.c_thr_futex_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"futex wait\0A\00", align 1
@val = common dso_local global i32 0, align 4
@wait_timeout = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"futex error.\0A\00", align 1
@TEST_NAME = common dso_local global i32 0, align 4
@RET_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"waiter timedout\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"futex_wait: ret = %d, errno = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @thr_futex_wait(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @futex_wait(i32* @val, i32 1, i32* @wait_timeout, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @EWOULDBLOCK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @ETIMEDOUT, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i64, i64* @errno, align 8
  %18 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @TEST_NAME, align 4
  %20 = load i32, i32* @RET_ERROR, align 4
  %21 = call i32 @print_result(i32 %19, i32 %20)
  %22 = load i32, i32* @RET_ERROR, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %12, %8, %1
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ETIMEDOUT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27, %24
  %34 = load i32, i32* %3, align 4
  %35 = load i64, i64* @errno, align 8
  %36 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %34, i64 %35)
  ret i8* null
}

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @futex_wait(i32*, i32, i32*, i32) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @print_result(i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
