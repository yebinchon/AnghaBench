; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"VERBOSE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"IN_TEST\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  invoked with:\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [%d]='%s'\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"[FAIL] (no IN_TEST=yes in env)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"VERBOSE=1\00", align 1
@envp = common dso_local global i8** null, align 8
@.str.8 = private unnamed_addr constant [17 x i8] c"%d tests failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %8, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 2
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  %14 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %31, %17
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load i32, i32* %6, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %24, i8* %29)
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %19

34:                                               ; preds = %19
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %13
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39, %36
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %72

45:                                               ; preds = %39
  %46 = load i8**, i8*** %5, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @atoi(i8* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @stdout, align 4
  %54 = call i32 @fflush(i32 %53)
  br label %70

55:                                               ; preds = %2
  %56 = call i32 (...) @prerequisites()
  %57 = load i8*, i8** %8, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i8**, i8*** @envp, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %61, align 8
  br label %62

62:                                               ; preds = %59, %55
  %63 = call i32 (...) @run_tests()
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %62
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %43
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @prerequisites(...) #1

declare dso_local i32 @run_tests(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
