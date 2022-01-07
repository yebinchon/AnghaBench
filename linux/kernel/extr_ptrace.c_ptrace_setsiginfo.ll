; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_setsiginfo.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_setsiginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32* }

@ESRCH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32*)* @ptrace_setsiginfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_setsiginfo(%struct.task_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @ESRCH, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %10 = call i64 @lock_task_sighand(%struct.task_struct* %9, i64* %5)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @copy_siginfo(i32* %25, i32* %26)
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %12
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = call i32 @unlock_task_sighand(%struct.task_struct* %29, i64* %5)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i64 @lock_task_sighand(%struct.task_struct*, i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @copy_siginfo(i32*, i32*) #1

declare dso_local i32 @unlock_task_sighand(%struct.task_struct*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
