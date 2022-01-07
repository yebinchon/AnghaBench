; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_untracked_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_untracked_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32, i32 }

@IRQS_REPLAY = common dso_local global i32 0, align 4
@IRQS_WAITING = common dso_local global i32 0, align 4
@IRQS_PENDING = common dso_local global i32 0, align 4
@IRQD_IRQ_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_untracked_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %5 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %4, i32 0, i32 1
  %6 = call i32 @raw_spin_lock(i32* %5)
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = call i32 @irq_may_run(%struct.irq_desc* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %63

11:                                               ; preds = %1
  %12 = load i32, i32* @IRQS_REPLAY, align 4
  %13 = load i32, i32* @IRQS_WAITING, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %17 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %21 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %11
  %25 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %25, i32 0, i32 2
  %27 = call i64 @irqd_irq_disabled(i32* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %11
  %30 = phi i1 [ true, %11 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @IRQS_PENDING, align 4
  %36 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %37 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %63

40:                                               ; preds = %29
  %41 = load i32, i32* @IRQS_PENDING, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %44 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %48 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %47, i32 0, i32 2
  %49 = load i32, i32* @IRQD_IRQ_INPROGRESS, align 4
  %50 = call i32 @irqd_set(i32* %48, i32 %49)
  %51 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %52 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %51, i32 0, i32 1
  %53 = call i32 @raw_spin_unlock(i32* %52)
  %54 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %55 = call i32 @__handle_irq_event_percpu(%struct.irq_desc* %54, i32* %3)
  %56 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %57 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %56, i32 0, i32 1
  %58 = call i32 @raw_spin_lock(i32* %57)
  %59 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %60 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %59, i32 0, i32 2
  %61 = load i32, i32* @IRQD_IRQ_INPROGRESS, align 4
  %62 = call i32 @irqd_clear(i32* %60, i32 %61)
  br label %63

63:                                               ; preds = %40, %34, %10
  %64 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %65 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %64, i32 0, i32 1
  %66 = call i32 @raw_spin_unlock(i32* %65)
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @irq_may_run(%struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @irqd_irq_disabled(i32*) #1

declare dso_local i32 @irqd_set(i32*, i32) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @__handle_irq_event_percpu(%struct.irq_desc*, i32*) #1

declare dso_local i32 @irqd_clear(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
