; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_migration.c_irq_fixup_move_pending.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_migration.c_irq_fixup_move_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irq_data = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irq_fixup_move_pending(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_data*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %8 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %7)
  store %struct.irq_data* %8, %struct.irq_data** %6, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %10 = call i32 @irqd_is_setaffinity_pending(%struct.irq_data* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.irq_desc*, %struct.irq_desc** %4, align 8
  %15 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @cpu_online_mask, align 4
  %18 = call i64 @cpumask_any_and(i32 %16, i32 %17)
  %19 = load i64, i64* @nr_cpu_ids, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %23 = call i32 @irqd_clr_move_pending(%struct.irq_data* %22)
  store i32 0, i32* %3, align 4
  br label %31

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.irq_data*, %struct.irq_data** %6, align 8
  %29 = call i32 @irqd_clr_move_pending(%struct.irq_data* %28)
  br label %30

30:                                               ; preds = %27, %24
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %21, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @irqd_is_setaffinity_pending(%struct.irq_data*) #1

declare dso_local i64 @cpumask_any_and(i32, i32) #1

declare dso_local i32 @irqd_clr_move_pending(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
