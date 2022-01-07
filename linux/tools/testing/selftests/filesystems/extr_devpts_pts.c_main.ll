; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/extr_devpts_pts.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/filesystems/extr_devpts_pts.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Standard input file descriptor is not attached to a terminal. Skipping test\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@CLONE_NEWNS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to unshare mount namespace\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MS_PRIVATE = common dso_local global i32 0, align 4
@MS_REC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"Failed to make \22/\22 MS_PRIVATE in new mount namespace\0A\00", align 1
@EXIT_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @STDIN_FILENO, align 4
  %8 = call i32 @isatty(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @KSFT_SKIP, align 4
  %14 = call i32 @exit(i32 %13) #3
  unreachable

15:                                               ; preds = %2
  %16 = load i32, i32* @CLONE_NEWNS, align 4
  %17 = call i32 @unshare(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EXIT_FAILURE, align 4
  %24 = call i32 @exit(i32 %23) #3
  unreachable

25:                                               ; preds = %15
  %26 = load i32, i32* @MS_PRIVATE, align 4
  %27 = load i32, i32* @MS_REC, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @mount(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %28, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i32, i32* @EXIT_FAILURE, align 4
  %36 = call i32 @exit(i32 %35) #3
  unreachable

37:                                               ; preds = %25
  %38 = call i32 (...) @verify_ptmx_bind_mount()
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = call i32 @exit(i32 %42) #3
  unreachable

44:                                               ; preds = %37
  %45 = call i32 (...) @verify_invalid_ptmx_bind_mount()
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EXIT_FAILURE, align 4
  %50 = call i32 @exit(i32 %49) #3
  unreachable

51:                                               ; preds = %44
  %52 = call i32 (...) @verify_non_standard_devpts_mount()
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EXIT_FAILURE, align 4
  %57 = call i32 @exit(i32 %56) #3
  unreachable

58:                                               ; preds = %51
  %59 = load i32, i32* @EXIT_SUCCESS, align 4
  %60 = call i32 @exit(i32 %59) #3
  unreachable
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @unshare(i32) #1

declare dso_local i32 @mount(i8*, i8*, i32*, i32, i32) #1

declare dso_local i32 @verify_ptmx_bind_mount(...) #1

declare dso_local i32 @verify_invalid_ptmx_bind_mount(...) #1

declare dso_local i32 @verify_non_standard_devpts_mount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
