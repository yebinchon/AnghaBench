; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_impl.h_test_membarrier_success.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/membarrier/extr_membarrier_test_impl.h_test_membarrier_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEMBARRIER_CMD_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"sys_membarrier() failed\0A\00", align 1
@MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_membarrier_success to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_membarrier_success() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @test_membarrier_global_success()
  store i32 %3, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* %1, align 4
  br label %65

8:                                                ; preds = %0
  %9 = call i32 (...) @test_membarrier_register_private_expedited_success()
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %1, align 4
  br label %65

14:                                               ; preds = %8
  %15 = call i32 (...) @test_membarrier_private_expedited_success()
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %65

20:                                               ; preds = %14
  %21 = load i32, i32* @MEMBARRIER_CMD_QUERY, align 4
  %22 = call i32 @sys_membarrier(i32 %21, i32 0)
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 @ksft_test_result_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %2, align 4
  store i32 %27, i32* %1, align 4
  br label %65

28:                                               ; preds = %20
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @MEMBARRIER_CMD_PRIVATE_EXPEDITED_SYNC_CORE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = call i32 (...) @test_membarrier_register_private_expedited_sync_core_success()
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %1, align 4
  br label %65

39:                                               ; preds = %33
  %40 = call i32 (...) @test_membarrier_private_expedited_sync_core_success()
  store i32 %40, i32* %2, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* %1, align 4
  br label %65

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %28
  %47 = call i32 (...) @test_membarrier_global_expedited_success()
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %2, align 4
  store i32 %51, i32* %1, align 4
  br label %65

52:                                               ; preds = %46
  %53 = call i32 (...) @test_membarrier_register_global_expedited_success()
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %2, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  store i32 %57, i32* %1, align 4
  br label %65

58:                                               ; preds = %52
  %59 = call i32 (...) @test_membarrier_global_expedited_success()
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %2, align 4
  store i32 %63, i32* %1, align 4
  br label %65

64:                                               ; preds = %58
  store i32 0, i32* %1, align 4
  br label %65

65:                                               ; preds = %64, %62, %56, %50, %43, %37, %25, %18, %12, %6
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i32 @test_membarrier_global_success(...) #1

declare dso_local i32 @test_membarrier_register_private_expedited_success(...) #1

declare dso_local i32 @test_membarrier_private_expedited_success(...) #1

declare dso_local i32 @sys_membarrier(i32, i32) #1

declare dso_local i32 @ksft_test_result_fail(i8*) #1

declare dso_local i32 @test_membarrier_register_private_expedited_sync_core_success(...) #1

declare dso_local i32 @test_membarrier_private_expedited_sync_core_success(...) #1

declare dso_local i32 @test_membarrier_global_expedited_success(...) #1

declare dso_local i32 @test_membarrier_register_global_expedited_success(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
