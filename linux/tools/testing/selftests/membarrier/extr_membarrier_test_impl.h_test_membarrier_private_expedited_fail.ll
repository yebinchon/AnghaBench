; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_impl.h_test_membarrier_private_expedited_fail.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_impl.h_test_membarrier_private_expedited_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMBARRIER_CMD_PRIVATE_EXPEDITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"sys membarrier MEMBARRIER_CMD_PRIVATE_EXPEDITED not registered failure\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"%s test: flags = %d. Should fail, but passed\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [73 x i8] c"%s test: flags = %d. Should return (%d: \22%s\22), but returned (%d: \22%s\22).\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s test: flags = %d, errno = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_membarrier_private_expedited_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_membarrier_private_expedited_fail() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @MEMBARRIER_CMD_PRIVATE_EXPEDITED, align 4
  store i32 %4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @sys_membarrier(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 (i8*, i8*, i32, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i8* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %0
  %14 = load i64, i64* @errno, align 8
  %15 = load i64, i64* @EPERM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i64, i64* @EPERM, align 8
  %21 = load i64, i64* @EPERM, align 8
  %22 = call i32 @strerror(i64 %21)
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @errno, align 8
  %25 = call i32 @strerror(i64 %24)
  %26 = call i32 (i8*, i8*, i32, ...) @ksft_exit_fail_msg(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* %18, i32 %19, i64 %20, i32 %22, i64 %23, i32 %25)
  br label %27

27:                                               ; preds = %17, %13
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i64, i64* @errno, align 8
  %31 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %28, i32 %29, i64 %30)
  ret i32 0
}

declare dso_local i32 @sys_membarrier(i32, i32) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i8*, i32, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @ksft_test_result_pass(i8*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
