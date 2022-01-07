; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_mmio_warning_test.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/kvm/x86_64/extr_mmio_warning_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"Must be run on an Intel CPU, skipping test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Unrestricted guest must be disabled, skipping test\0A\00", align 1
@NPROCESS = common dso_local global i32 0, align 4
@__WALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Warnings found in kernel.  Run 'dmesg' to inspect them.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %7 = call i32 (...) @is_intel_cpu()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @KSFT_SKIP, align 4
  %12 = call i32 @exit(i32 %11) #3
  unreachable

13:                                               ; preds = %0
  %14 = call i64 @vm_is_unrestricted_guest(i32* null)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @KSFT_SKIP, align 4
  %19 = call i32 @exit(i32 %18) #3
  unreachable

20:                                               ; preds = %13
  %21 = call i32 (...) @get_warnings_count()
  store i32 %21, i32* %2, align 4
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %47, %20
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @NPROCESS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = call i32 (...) @fork()
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = call i32 (...) @test()
  %37 = call i32 @exit(i32 0) #3
  unreachable

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @__WALL, align 4
  %42 = call i32 @waitpid(i32 %40, i32* %5, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %39

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %22

50:                                               ; preds = %22
  %51 = call i32 (...) @get_warnings_count()
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @TEST_ASSERT(i32 %55, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @is_intel_cpu(...) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @vm_is_unrestricted_guest(i32*) #1

declare dso_local i32 @get_warnings_count(...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @test(...) #1

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @TEST_ASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
