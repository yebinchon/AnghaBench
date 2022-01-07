; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_check_execveat_invoked_rc.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/exec/extr_execveat.c_check_execveat_invoked_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"Check success of execveat(%d, '%.20s...%s', %d)... \00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Check success of execveat(%d, '%s', %d)... \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[FAIL] (fork() failed)\0A\00", align 1
@argv = common dso_local global i32 0, align 4
@envp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"[FAIL]: execveat() failed, rc=%d errno=%d (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"[FAIL] (waitpid(%d,...) returned %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"[FAIL] (child %d did not exit cleanly, status=%08x)\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"[FAIL] (child %d exited with %d not %d nor %d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"[OK]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, i32)* @check_execveat_invoked_rc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_execveat_invoked_rc(i32 %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @strlen(i8* %19)
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ %20, %18 ], [ 0, %21 ]
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp sgt i32 %24, 40
  br i1 %25, label %26, label %36

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = getelementptr inbounds i8, i8* %32, i64 -20
  %34 = load i32, i32* %9, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28, i8* %33, i32 %34)
  br label %46

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %42

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %40
  %43 = phi i8* [ %38, %40 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %41 ]
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %26
  %47 = call i32 (...) @fork()
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %105

52:                                               ; preds = %46
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @argv, align 4
  %59 = load i32, i32* @envp, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @execveat_(i32 %56, i8* %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = load i32, i32* @errno, align 4
  %65 = call i8* @strerror(i32 %64)
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %62, i32 %63, i8* %65)
  %67 = call i32 @exit(i32 1) #3
  unreachable

68:                                               ; preds = %52
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @waitpid(i32 %69, i32* %12, i32 0)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %13, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %76)
  store i32 1, i32* %6, align 4
  br label %105

78:                                               ; preds = %68
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @WIFEXITED(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i32, i32* %14, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32 %84)
  store i32 1, i32* %6, align 4
  br label %105

86:                                               ; preds = %78
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @WEXITSTATUS(i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @WEXITSTATUS(i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @WEXITSTATUS(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %97, i32 %99, i32 %100, i32 %101)
  store i32 1, i32* %6, align 4
  br label %105

103:                                              ; preds = %91, %86
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %96, %82, %74, %50
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @execveat_(i32, i8*, i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #1

declare dso_local i32 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
