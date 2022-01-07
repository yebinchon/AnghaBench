; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_level_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_level_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32, i32 }

@IRQS_REPLAY = common dso_local global i32 0, align 4
@IRQS_WAITING = common dso_local global i32 0, align 4
@IRQS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_level_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %3, i32 0, i32 1
  %5 = call i32 @raw_spin_lock(i32* %4)
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call i32 @mask_ack_irq(%struct.irq_desc* %6)
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = call i32 @irq_may_run(%struct.irq_desc* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  %13 = load i32, i32* @IRQS_REPLAY, align 4
  %14 = load i32, i32* @IRQS_WAITING, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %12
  %26 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %27 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %26, i32 0, i32 2
  %28 = call i64 @irqd_irq_disabled(i32* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %25, %12
  %31 = phi i1 [ true, %12 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @IRQS_PENDING, align 4
  %37 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %38 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %48

41:                                               ; preds = %30
  %42 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %43 = call i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc* %42)
  %44 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %45 = call i32 @handle_irq_event(%struct.irq_desc* %44)
  %46 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %47 = call i32 @cond_unmask_irq(%struct.irq_desc* %46)
  br label %48

48:                                               ; preds = %41, %35, %11
  %49 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %50 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %49, i32 0, i32 1
  %51 = call i32 @raw_spin_unlock(i32* %50)
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @mask_ack_irq(%struct.irq_desc*) #1

declare dso_local i32 @irq_may_run(%struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @irqd_irq_disabled(i32*) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc*) #1

declare dso_local i32 @handle_irq_event(%struct.irq_desc*) #1

declare dso_local i32 @cond_unmask_irq(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
