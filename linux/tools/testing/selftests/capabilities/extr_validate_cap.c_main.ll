; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_validate_cap.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_validate_cap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wrong argc\0A\00", align 1
@CAPNG_EFFECTIVE = common dso_local global i32 0, align 4
@CAP_NET_BIND_SERVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Wrong effective state%s\0A\00", align 1
@CAPNG_PERMITTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Wrong permitted state%s\0A\00", align 1
@CAPNG_INHERITABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Wrong inheritable state%s\0A\00", align 1
@PR_CAP_AMBIENT = common dso_local global i32 0, align 4
@PR_CAP_AMBIENT_IS_SET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Wrong ambient state%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"%s: Capabilities after execve were correct\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"validate_cap:\00", align 1
@AT_SECURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 5
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = call i32 (...) @capng_get_caps_process()
  %13 = load i32, i32* @CAPNG_EFFECTIVE, align 4
  %14 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %15 = call i64 @capng_have_capability(i32 %13, i32 %14)
  %16 = load i8**, i8*** %5, align 8
  %17 = call i64 @bool_arg(i8** %16, i32 1)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i32 1, i32* %3, align 4
  br label %55

22:                                               ; preds = %11
  %23 = load i32, i32* @CAPNG_PERMITTED, align 4
  %24 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %25 = call i64 @capng_have_capability(i32 %23, i32 %24)
  %26 = load i8**, i8*** %5, align 8
  %27 = call i64 @bool_arg(i8** %26, i32 2)
  %28 = icmp ne i64 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %30)
  store i32 1, i32* %3, align 4
  br label %55

32:                                               ; preds = %22
  %33 = load i32, i32* @CAPNG_INHERITABLE, align 4
  %34 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %35 = call i64 @capng_have_capability(i32 %33, i32 %34)
  %36 = load i8**, i8*** %5, align 8
  %37 = call i64 @bool_arg(i8** %36, i32 3)
  %38 = icmp ne i64 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %40)
  store i32 1, i32* %3, align 4
  br label %55

42:                                               ; preds = %32
  %43 = load i32, i32* @PR_CAP_AMBIENT, align 4
  %44 = load i32, i32* @PR_CAP_AMBIENT_IS_SET, align 4
  %45 = load i32, i32* @CAP_NET_BIND_SERVICE, align 4
  %46 = call i64 @prctl(i32 %43, i32 %44, i32 %45, i32 0, i32 0, i32 0)
  %47 = load i8**, i8*** %5, align 8
  %48 = call i64 @bool_arg(i8** %47, i32 4)
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  store i32 1, i32* %3, align 4
  br label %55

53:                                               ; preds = %42
  %54 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %50, %39, %29, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @ksft_exit_fail_msg(i8*) #1

declare dso_local i32 @capng_get_caps_process(...) #1

declare dso_local i64 @capng_have_capability(i32, i32) #1

declare dso_local i64 @bool_arg(i8**, i32) #1

declare dso_local i32 @ksft_print_msg(i8*, i8*) #1

declare dso_local i64 @prctl(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
