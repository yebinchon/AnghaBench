; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_do_test.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_do_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_test = type { i8* }

@tests = common dso_local global %struct.bpf_test* null, align 8
@unpriv_disabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"#%d/u %s SKIP\0A\00", align 1
@skips = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"#%d/u %s \00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#%d/p %s SKIP\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"#%d/p %s \00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Summary: %d PASSED, %d SKIPPED, %d FAILED\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @do_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_test(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_test*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %78, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  %17 = load %struct.bpf_test*, %struct.bpf_test** @tests, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %17, i64 %19
  store %struct.bpf_test* %20, %struct.bpf_test** %10, align 8
  %21 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %22 = call i64 @test_as_unpriv(%struct.bpf_test* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %16
  %25 = load i64, i64* @unpriv_disabled, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %30 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28, i8* %31)
  %33 = load i32, i32* @skips, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @skips, align 4
  br label %58

35:                                               ; preds = %24, %16
  %36 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %37 = call i64 @test_as_unpriv(%struct.bpf_test* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 @set_admin(i32 0)
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %47 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45, i8* %48)
  %50 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %51 = call i32 @do_test_single(%struct.bpf_test* %50, i32 1, i32* %8, i32* %9)
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %44
  %55 = call i32 @set_admin(i32 1)
  br label %56

56:                                               ; preds = %54, %44
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %27
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %64 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %62, i8* %65)
  %67 = load i32, i32* @skips, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @skips, align 4
  br label %77

69:                                               ; preds = %58
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %72 = getelementptr inbounds %struct.bpf_test, %struct.bpf_test* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %70, i8* %73)
  %75 = load %struct.bpf_test*, %struct.bpf_test** %10, align 8
  %76 = call i32 @do_test_single(%struct.bpf_test* %75, i32 0, i32* %8, i32* %9)
  br label %77

77:                                               ; preds = %69, %61
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %12

81:                                               ; preds = %12
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @skips, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @EXIT_FAILURE, align 4
  br label %92

90:                                               ; preds = %81
  %91 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  ret i32 %93
}

declare dso_local i64 @test_as_unpriv(%struct.bpf_test*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @set_admin(i32) #1

declare dso_local i32 @do_test_single(%struct.bpf_test*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
