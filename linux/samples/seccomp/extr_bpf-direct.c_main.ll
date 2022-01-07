; ModuleID = '/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-direct.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/samples/seccomp/extr_bpf-direct.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__NR_write = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"OHAI! WHAT IS YOUR NAME? \00", align 1
@__NR_read = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"HELLO, \00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Error message going to STDERR\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [4096 x i8], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = call i64 (...) @install_emulator()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = call i64 (...) @install_filter()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %43

15:                                               ; preds = %11
  %16 = load i32, i32* @__NR_write, align 4
  %17 = load i32, i32* @STDOUT_FILENO, align 4
  %18 = call i32 @payload(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 (i32, i32, i8*, ...) @syscall(i32 %16, i32 %17, i8* %20)
  %22 = load i32, i32* @__NR_read, align 4
  %23 = load i32, i32* @STDIN_FILENO, align 4
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %25 = call i32 (i32, i32, i8*, ...) @syscall(i32 %22, i32 %23, i8* %24, i64 4096)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @__NR_write, align 4
  %27 = load i32, i32* @STDOUT_FILENO, align 4
  %28 = call i32 @payload(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 (i32, i32, i8*, ...) @syscall(i32 %26, i32 %27, i8* %30)
  %32 = load i32, i32* @__NR_write, align 4
  %33 = load i32, i32* @STDOUT_FILENO, align 4
  %34 = getelementptr inbounds [4096 x i8], [4096 x i8]* %6, i64 0, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i32, i8*, ...) @syscall(i32 %32, i32 %33, i8* %34, i32 %35)
  %37 = load i32, i32* @__NR_write, align 4
  %38 = load i32, i32* @STDERR_FILENO, align 4
  %39 = call i32 @payload(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 (i32, i32, i8*, ...) @syscall(i32 %37, i32 %38, i8* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %15, %14, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @install_emulator(...) #1

declare dso_local i64 @install_filter(...) #1

declare dso_local i32 @syscall(i32, i32, i8*, ...) #1

declare dso_local i32 @payload(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
