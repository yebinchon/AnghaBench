; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_irq_work.c_irq_work_needs_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_irq_work.c_irq_work_needs_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_head = type { i32 }

@raised_list = common dso_local global i32 0, align 4
@lazy_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_work_needs_cpu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.llist_head*, align 8
  %3 = alloca %struct.llist_head*, align 8
  %4 = call %struct.llist_head* @this_cpu_ptr(i32* @raised_list)
  store %struct.llist_head* %4, %struct.llist_head** %2, align 8
  %5 = call %struct.llist_head* @this_cpu_ptr(i32* @lazy_list)
  store %struct.llist_head* %5, %struct.llist_head** %3, align 8
  %6 = load %struct.llist_head*, %struct.llist_head** %2, align 8
  %7 = call i64 @llist_empty(%struct.llist_head* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %0
  %10 = call i64 (...) @arch_irq_work_has_interrupt()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9, %0
  %13 = load %struct.llist_head*, %struct.llist_head** %3, align 8
  %14 = call i64 @llist_empty(%struct.llist_head* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %22

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %9
  %19 = call i32 (...) @smp_processor_id()
  %20 = call i32 @cpu_is_offline(i32 %19)
  %21 = call i32 @WARN_ON_ONCE(i32 %20)
  store i32 1, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %16
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local %struct.llist_head* @this_cpu_ptr(i32*) #1

declare dso_local i64 @llist_empty(%struct.llist_head*) #1

declare dso_local i64 @arch_irq_work_has_interrupt(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpu_is_offline(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
