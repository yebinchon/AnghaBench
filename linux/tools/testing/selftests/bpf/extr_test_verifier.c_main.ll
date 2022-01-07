; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_verifier.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tests = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@verbose = common dso_local global i32 0, align 4
@unpriv_disabled = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"Cannot run as unprivileged user with sysctl %s.\0A\00", align 1
@UNPRIV_SYSCTL = common dso_local global i8* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @tests, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = call i32 (...) @is_admin()
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %9, align 4
  store i32 1, i32* @verbose, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %21, %2
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 3
  br i1 %34, label %35, label %61

35:                                               ; preds = %32
  %36 = load i8**, i8*** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @atoi(i8* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %42, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @atoi(i8* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %35
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %11, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %52, %35
  br label %80

61:                                               ; preds = %32
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load i8**, i8*** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @atoi(i8* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %64
  br label %79

79:                                               ; preds = %78, %61
  br label %80

80:                                               ; preds = %79, %60
  %81 = call i32 (...) @get_unpriv_disabled()
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %80
  %85 = load i64, i64* @unpriv_disabled, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i8*, i8** @UNPRIV_SYSCTL, align 8
  %89 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %90, i32* %3, align 4
  br label %97

91:                                               ; preds = %84, %80
  %92 = call i32 (...) @bpf_semi_rand_init()
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @do_test(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %87
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @is_admin(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @get_unpriv_disabled(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @bpf_semi_rand_init(...) #1

declare dso_local i32 @do_test(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
