; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_simple_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_simple_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32, i32 }

@IRQS_REPLAY = common dso_local global i32 0, align 4
@IRQS_WAITING = common dso_local global i32 0, align 4
@IRQS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_simple_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %3, i32 0, i32 1
  %5 = call i32 @raw_spin_lock(i32* %4)
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call i32 @irq_may_run(%struct.irq_desc* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %44

10:                                               ; preds = %1
  %11 = load i32, i32* @IRQS_REPLAY, align 4
  %12 = load i32, i32* @IRQS_WAITING, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 2
  %26 = call i64 @irqd_irq_disabled(i32* %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %10
  %29 = phi i1 [ true, %10 ], [ %27, %23 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load i32, i32* @IRQS_PENDING, align 4
  %35 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %36 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %41 = call i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc* %40)
  %42 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %43 = call i32 @handle_irq_event(%struct.irq_desc* %42)
  br label %44

44:                                               ; preds = %39, %33, %9
  %45 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %46 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %45, i32 0, i32 1
  %47 = call i32 @raw_spin_unlock(i32* %46)
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @irq_may_run(%struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @irqd_irq_disabled(i32*) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc*) #1

declare dso_local i32 @handle_irq_event(%struct.irq_desc*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
