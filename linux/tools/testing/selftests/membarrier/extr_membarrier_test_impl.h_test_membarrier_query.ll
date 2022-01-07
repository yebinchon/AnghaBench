; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_impl.h_test_membarrier_query.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_impl.h_test_membarrier_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMBARRIER_CMD_QUERY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"sys membarrier (CONFIG_MEMBARRIER) is disabled.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"sys_membarrier() failed\0A\00", align 1
@MEMBARRIER_CMD_GLOBAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"sys_membarrier unsupported: CMD_GLOBAL not found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"sys_membarrier available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_membarrier_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_membarrier_query() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = load i32, i32* @MEMBARRIER_CMD_QUERY, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @sys_membarrier(i32 %3, i32 %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i64, i64* @errno, align 8
  %10 = load i64, i64* @ENOSYS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %8
  %15 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @MEMBARRIER_CMD_GLOBAL, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = call i32 @ksft_exit_skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @sys_membarrier(i32, i32) #1

declare dso_local i32 @ksft_exit_skip(i8*) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*) #1

declare dso_local i32 @ksft_test_result_pass(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
