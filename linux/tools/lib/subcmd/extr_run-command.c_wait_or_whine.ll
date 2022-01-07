; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_run-command.c_wait_or_whine.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_run-command.c_wait_or_whine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRERR_BUFSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c" Error: waitpid failed (%s)\00", align 1
@ERR_RUN_COMMAND_WAITPID = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_WAITPID_WRONG_PID = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_WAITPID_SIGNAL = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_WAITPID_NOEXIT = common dso_local global i32 0, align 4
@ERR_RUN_COMMAND_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @wait_or_whine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_or_whine(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %10 = load i32, i32* @STRERR_BUFSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  br label %14

14:                                               ; preds = %23, %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @waitpid(i64 %15, i32* %6, i32 0)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %14

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* @errno, align 8
  %27 = trunc i64 %11 to i32
  %28 = call i8* @str_error_r(i64 %26, i8* %13, i32 %27)
  %29 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* @ERR_RUN_COMMAND_WAITPID, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %64

32:                                               ; preds = %14
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %3, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @ERR_RUN_COMMAND_WAITPID_WRONG_PID, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %64

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @WIFSIGNALED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @ERR_RUN_COMMAND_WAITPID_SIGNAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %64

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @WIFEXITED(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @ERR_RUN_COMMAND_WAITPID_NOEXIT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %64

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @WEXITSTATUS(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  switch i32 %56, label %61 [
    i32 127, label %57
    i32 0, label %60
  ]

57:                                               ; preds = %53
  %58 = load i32, i32* @ERR_RUN_COMMAND_EXEC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %64

60:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %60, %57, %50, %43, %36, %24
  %65 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @waitpid(i64, i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @str_error_r(i64, i8*, i32) #2

declare dso_local i64 @WIFSIGNALED(i32) #2

declare dso_local i32 @WIFEXITED(i32) #2

declare dso_local i32 @WEXITSTATUS(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
