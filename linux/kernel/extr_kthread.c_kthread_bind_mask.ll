; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_bind_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c_kthread_bind_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cpumask = type { i32 }

@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kthread_bind_mask(%struct.task_struct* %0, %struct.cpumask* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.cpumask*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.cpumask* %1, %struct.cpumask** %4, align 8
  %5 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %6 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %7 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %8 = call i32 @__kthread_bind_mask(%struct.task_struct* %5, %struct.cpumask* %6, i32 %7)
  ret void
}

declare dso_local i32 @__kthread_bind_mask(%struct.task_struct*, %struct.cpumask*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
