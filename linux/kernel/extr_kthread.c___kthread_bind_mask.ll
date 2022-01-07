; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_bind_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_kthread.c___kthread_bind_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32 }
%struct.cpumask = type { i32 }

@PF_NO_SETAFFINITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_struct*, %struct.cpumask*, i64)* @__kthread_bind_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__kthread_bind_mask(%struct.task_struct* %0, %struct.cpumask* %1, i64 %2) #0 {
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.cpumask* %1, %struct.cpumask** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @wait_task_inactive(%struct.task_struct* %8, i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call i32 @WARN_ON(i32 1)
  br label %31

14:                                               ; preds = %3
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %20 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %21 = call i32 @do_set_cpus_allowed(%struct.task_struct* %19, %struct.cpumask* %20)
  %22 = load i32, i32* @PF_NO_SETAFFINITY, align 4
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @raw_spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %14, %12
  ret void
}

declare dso_local i32 @wait_task_inactive(%struct.task_struct*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @do_set_cpus_allowed(%struct.task_struct*, %struct.cpumask*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
