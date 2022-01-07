; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_handle.c___irq_wake_thread.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_handle.c___irq_wake_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32 }
%struct.irqaction = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PF_EXITING = common dso_local global i32 0, align 4
@IRQTF_RUNTHREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__irq_wake_thread(%struct.irq_desc* %0, %struct.irqaction* %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irqaction*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %5 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %6 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PF_EXITING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %36

14:                                               ; preds = %2
  %15 = load i32, i32* @IRQTF_RUNTHREAD, align 4
  %16 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %17 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %16, i32 0, i32 2
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %36

21:                                               ; preds = %14
  %22 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %23 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %26 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %33 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @wake_up_process(%struct.TYPE_2__* %34)
  br label %36

36:                                               ; preds = %21, %20, %13
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_process(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
