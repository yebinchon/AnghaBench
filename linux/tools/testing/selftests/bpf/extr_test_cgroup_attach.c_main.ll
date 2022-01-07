; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_cgroup_attach.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_foo_bar = common dso_local global i32 0, align 4
@test_multiprog = common dso_local global i32 0, align 4
@test_autodetach = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"test_cgroup_attach:FAIL\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"test_cgroup_attach:PASS\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [3 x i32 ()*], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = getelementptr inbounds [3 x i32 ()*], [3 x i32 ()*]* %2, i64 0, i64 0
  %6 = load i32, i32* @test_foo_bar, align 4
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i32 ()*
  store i32 ()* %8, i32 ()** %5, align 8
  %9 = getelementptr inbounds i32 ()*, i32 ()** %5, i64 1
  %10 = load i32, i32* @test_multiprog, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i32 ()*
  store i32 ()* %12, i32 ()** %9, align 8
  %13 = getelementptr inbounds i32 ()*, i32 ()** %9, i64 1
  %14 = load i32, i32* @test_autodetach, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i32 ()*
  store i32 ()* %16, i32 ()** %13, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %34, %0
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [3 x i32 ()*], [3 x i32 ()*]* %2, i64 0, i64 0
  %20 = bitcast i32 ()** %19 to i32 (...)*
  %21 = call i32 @ARRAY_SIZE(i32 (...)* %20)
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x i32 ()*], [3 x i32 ()*]* %2, i64 0, i64 %25
  %27 = load i32 ()*, i32 ()** %26, align 8
  %28 = call i32 %27()
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

42:                                               ; preds = %37
  %43 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32, i32* %3, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  ret i32 %52
}

declare dso_local i32 @ARRAY_SIZE(i32 (...)*) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
