; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_detach.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_ptrace.c_ptrace_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i64, i32 }

@EIO = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PTRACE_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i32)* @ptrace_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptrace_detach(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @valid_signal(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EIO, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = call i32 @ptrace_disable(%struct.task_struct* %13)
  %15 = call i32 @write_lock_irq(i32* @tasklist_lock)
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %12
  %26 = phi i1 [ true, %12 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @current, align 4
  %33 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %34 = call i32 @__ptrace_detach(i32 %32, %struct.task_struct* %33)
  %35 = call i32 @write_unlock_irq(i32* @tasklist_lock)
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = load i32, i32* @PTRACE_DETACH, align 4
  %38 = call i32 @proc_ptrace_connector(%struct.task_struct* %36, i32 %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %25, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @valid_signal(i32) #1

declare dso_local i32 @ptrace_disable(%struct.task_struct*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__ptrace_detach(i32, %struct.task_struct*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @proc_ptrace_connector(%struct.task_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
