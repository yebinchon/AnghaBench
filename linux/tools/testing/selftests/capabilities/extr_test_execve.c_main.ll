; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"strdup - %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@mpid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"[RUN]\09+++ Tests with uid == 0 +++\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"==================================================\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"[RUN]\09+++ Tests with uid != 0 +++\0A\00", align 1
@nerrs = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i8*, i8** %6, align 8
  %21 = call i8* @dirname(i8* %20)
  store i8* %21, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strdup(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %19
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @free(i8* %31)
  %33 = call i32 (...) @getpid()
  store i32 %33, i32* @mpid, align 4
  %34 = call i64 (...) @fork_wait()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = call i32 (...) @ksft_print_header()
  %38 = call i32 @ksft_set_plan(i32 12)
  %39 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @do_tests(i32 0, i8* %40)
  store i32 %41, i32* %3, align 4
  br label %57

42:                                               ; preds = %30
  %43 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i64 (...) @fork_wait()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = call i32 (...) @ksft_print_header()
  %48 = call i32 @ksft_set_plan(i32 9)
  %49 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @do_tests(i32 1, i8* %50)
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %42
  %53 = load i64, i64* @nerrs, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %46, %36
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @dirname(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i64 @fork_wait(...) #1

declare dso_local i32 @ksft_print_header(...) #1

declare dso_local i32 @ksft_set_plan(i32) #1

declare dso_local i32 @ksft_print_msg(i8*) #1

declare dso_local i32 @do_tests(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
