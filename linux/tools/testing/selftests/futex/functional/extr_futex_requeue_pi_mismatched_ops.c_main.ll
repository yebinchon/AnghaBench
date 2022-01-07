; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi_mismatched_ops.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/futex/functional/extr_futex_requeue_pi_mismatched_ops.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_PASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"chv:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Detect mismatched requeue_pi operations\0A\00", align 1
@blocking_child = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"pthread_create\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@RET_ERROR = common dso_local global i32 0, align 4
@f1 = common dso_local global i32 0, align 4
@f2 = common dso_local global i32 0, align 4
@FUTEX_PRIVATE_FLAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"futex_wake\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"futex_wake did not wake the child\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"futex_cmp_requeue_pi\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"futex_cmp_requeue_pi failed to detect the mismatch\0A\00", align 1
@RET_FAIL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"futex_cmp_requeue_pi found no waiters\0A\00", align 1
@child_ret = common dso_local global i32 0, align 4
@TEST_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @RET_PASS, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %37, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %30 [
    i32 99, label %17
    i32 104, label %19
    i32 118, label %26
  ]

17:                                               ; preds = %15
  %18 = call i32 @log_color(i32 1)
  br label %37

19:                                               ; preds = %15
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @basename(i8* %22)
  %24 = call i32 @usage(i32 %23)
  %25 = call i32 @exit(i32 0) #3
  unreachable

26:                                               ; preds = %15
  %27 = load i32, i32* @optarg, align 4
  %28 = call i32 @atoi(i32 %27)
  %29 = call i32 @log_verbosity(i32 %28)
  br label %37

30:                                               ; preds = %15
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @basename(i8* %33)
  %35 = call i32 @usage(i32 %34)
  %36 = call i32 @exit(i32 1) #3
  unreachable

37:                                               ; preds = %26, %17
  br label %10

38:                                               ; preds = %10
  %39 = call i32 (...) @ksft_print_header()
  %40 = call i32 @ksft_set_plan(i32 1)
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @basename(i8* %43)
  %45 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @blocking_child, align 4
  %47 = call i64 @pthread_create(i32* %7, i32* null, i32 %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i64, i64* @errno, align 8
  %51 = call i32 @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @RET_ERROR, align 4
  store i32 %52, i32* %6, align 4
  br label %106

53:                                               ; preds = %38
  %54 = call i32 @sleep(i32 1)
  %55 = load i32, i32* @f1, align 4
  %56 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %57 = call i32 @futex_cmp_requeue_pi(i32* @f1, i32 %55, i32* @f2, i32 1, i32 0, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %53
  %61 = load i64, i64* @errno, align 8
  %62 = load i64, i64* @EINVAL, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %60
  %65 = load i32, i32* @FUTEX_PRIVATE_FLAG, align 4
  %66 = call i32 @futex_wake(i32* @f1, i32 1, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* @RET_PASS, align 4
  store i32 %70, i32* %6, align 4
  br label %82

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %75)
  %77 = load i32, i32* @RET_ERROR, align 4
  store i32 %77, i32* %6, align 4
  br label %81

78:                                               ; preds = %71
  %79 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 0)
  %80 = load i32, i32* @RET_ERROR, align 4
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %78, %74
  br label %82

82:                                               ; preds = %81, %69
  br label %87

83:                                               ; preds = %60
  %84 = load i64, i64* @errno, align 8
  %85 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = load i32, i32* @RET_ERROR, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %82
  br label %98

88:                                               ; preds = %53
  %89 = load i32, i32* %6, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = call i32 @fail(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @RET_FAIL, align 4
  store i32 %93, i32* %6, align 4
  br label %97

94:                                               ; preds = %88
  %95 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i64 0)
  %96 = load i32, i32* @RET_ERROR, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %91
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @pthread_join(i32 %99, i32* null)
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @child_ret, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %98
  br label %106

106:                                              ; preds = %105, %49
  %107 = load i32, i32* @TEST_NAME, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @print_result(i32 %107, i32 %108)
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @log_color(i32) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @basename(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @log_verbosity(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @ksft_print_msg(i8*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @futex_cmp_requeue_pi(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @futex_wake(i32*, i32, i32) #1

declare dso_local i32 @fail(i8*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @print_result(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
