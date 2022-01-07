; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_fork_wait.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/capabilities/extr_test_execve.c_fork_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nerrs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Child died\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Child failed\0A\00", align 1
@mpid = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Passed\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"fork - %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fork_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fork_wait() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i64 (...) @fork()
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store i64 0, i64* @nerrs, align 8
  store i32 1, i32* %1, align 4
  br label %45

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @waitpid(i64 %12, i32* %3, i32 0)
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @WIFEXITED(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16, %11
  %21 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @nerrs, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @nerrs, align 8
  br label %40

24:                                               ; preds = %16
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @WEXITSTATUS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = call i32 @ksft_print_msg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i64, i64* @nerrs, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* @nerrs, align 8
  br label %39

32:                                               ; preds = %24
  %33 = call i64 (...) @getpid()
  %34 = load i64, i64* @mpid, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = call i32 @ksft_test_result_pass(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %28
  br label %40

40:                                               ; preds = %39, %20
  store i32 0, i32* %1, align 4
  br label %45

41:                                               ; preds = %8
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = call i32 @ksft_exit_fail_msg(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  store i32 0, i32* %1, align 4
  br label %45

45:                                               ; preds = %41, %40, %7
  %46 = load i32, i32* %1, align 4
  ret i32 %46
}

declare dso_local i64 @fork(...) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @ksft_print_msg(i8*) #1

declare dso_local i64 @WEXITSTATUS(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @ksft_test_result_pass(i8*) #1

declare dso_local i32 @ksft_exit_fail_msg(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
