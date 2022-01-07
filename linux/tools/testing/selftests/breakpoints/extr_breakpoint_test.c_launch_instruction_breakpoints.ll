; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_launch_instruction_breakpoints.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/breakpoints/extr_breakpoint_test.c_launch_instruction_breakpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COUNT_ISN_BPS = common dso_local global i32 0, align 4
@dummy_funcs = common dso_local global i32* null, align 8
@BP_X = common dso_local global i32 0, align 4
@PTRACE_CONT = common dso_local global i32 0, align 4
@child_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Test breakpoint %d with local: %d global: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @launch_instruction_breakpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @launch_instruction_breakpoints(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %40, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @COUNT_ISN_BPS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load i32*, i32** @dummy_funcs, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @set_breakpoint_addr(i32 %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @BP_X, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @toggle_breakpoint(i32 %20, i32 %21, i32 1, i32 %22, i32 %23, i32 1)
  %25 = load i32, i32* @PTRACE_CONT, align 4
  %26 = load i32, i32* @child_pid, align 4
  %27 = call i32 @ptrace(i32 %25, i32 %26, i32* null, i32 0)
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @check_success(i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @BP_X, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @toggle_breakpoint(i32 %35, i32 %36, i32 1, i32 %37, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %12
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %8

43:                                               ; preds = %8
  ret void
}

declare dso_local i32 @set_breakpoint_addr(i32, i32) #1

declare dso_local i32 @toggle_breakpoint(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ptrace(i32, i32, i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @check_success(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
