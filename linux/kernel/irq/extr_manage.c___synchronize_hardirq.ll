; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___synchronize_hardirq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c___synchronize_hardirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32 }
%struct.irq_data = type { i32 }

@IRQCHIP_STATE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, i32)* @__synchronize_hardirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__synchronize_hardirq(%struct.irq_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %9 = call %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc* %8)
  store %struct.irq_data* %9, %struct.irq_data** %5, align 8
  br label %10

10:                                               ; preds = %40, %2
  br label %11

11:                                               ; preds = %16, %10
  %12 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %13 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %12, i32 0, i32 1
  %14 = call i32 @irqd_irq_inprogress(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @cpu_relax()
  br label %11

18:                                               ; preds = %11
  %19 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %20 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @raw_spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 1
  %25 = call i32 @irqd_irq_inprogress(i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.irq_data*, %struct.irq_data** %5, align 8
  %33 = load i32, i32* @IRQCHIP_STATE_ACTIVE, align 4
  %34 = call i32 @__irq_get_irqchip_state(%struct.irq_data* %32, i32 %33, i32* %6)
  br label %35

35:                                               ; preds = %31, %28, %18
  %36 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %37 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @raw_spin_unlock_irqrestore(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %10, label %43

43:                                               ; preds = %40
  ret void
}

declare dso_local %struct.irq_data* @irq_desc_get_irq_data(%struct.irq_desc*) #1

declare dso_local i32 @irqd_irq_inprogress(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__irq_get_irqchip_state(%struct.irq_data*, i32, i32*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
