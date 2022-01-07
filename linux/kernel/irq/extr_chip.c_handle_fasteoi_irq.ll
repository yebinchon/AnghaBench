; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_fasteoi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_chip.c_handle_fasteoi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.irq_chip* }
%struct.irq_chip = type { i32, i32 (%struct.TYPE_3__*)* }

@IRQS_REPLAY = common dso_local global i32 0, align 4
@IRQS_WAITING = common dso_local global i32 0, align 4
@IRQS_PENDING = common dso_local global i32 0, align 4
@IRQS_ONESHOT = common dso_local global i32 0, align 4
@IRQCHIP_EOI_IF_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_fasteoi_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.irq_chip*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %4 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %5 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.irq_chip*, %struct.irq_chip** %6, align 8
  store %struct.irq_chip* %7, %struct.irq_chip** %3, align 8
  %8 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %9 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %8, i32 0, i32 1
  %10 = call i32 @raw_spin_lock(i32* %9)
  %11 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %12 = call i32 @irq_may_run(%struct.irq_desc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %69

15:                                               ; preds = %1
  %16 = load i32, i32* @IRQS_REPLAY, align 4
  %17 = load i32, i32* @IRQS_WAITING, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %21 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %25 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %15
  %29 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %30 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %29, i32 0, i32 2
  %31 = call i64 @irqd_irq_disabled(%struct.TYPE_3__* %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %15
  %34 = phi i1 [ true, %15 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @IRQS_PENDING, align 4
  %40 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %41 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %45 = call i32 @mask_irq(%struct.irq_desc* %44)
  br label %69

46:                                               ; preds = %33
  %47 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %48 = call i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc* %47)
  %49 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %50 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @IRQS_ONESHOT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %57 = call i32 @mask_irq(%struct.irq_desc* %56)
  br label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %60 = call i32 @preflow_handler(%struct.irq_desc* %59)
  %61 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %62 = call i32 @handle_irq_event(%struct.irq_desc* %61)
  %63 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %64 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %65 = call i32 @cond_unmask_eoi_irq(%struct.irq_desc* %63, %struct.irq_chip* %64)
  %66 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %67 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %66, i32 0, i32 1
  %68 = call i32 @raw_spin_unlock(i32* %67)
  br label %87

69:                                               ; preds = %38, %14
  %70 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %71 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @IRQCHIP_EOI_IF_HANDLED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load %struct.irq_chip*, %struct.irq_chip** %3, align 8
  %78 = getelementptr inbounds %struct.irq_chip, %struct.irq_chip* %77, i32 0, i32 1
  %79 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %78, align 8
  %80 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %81 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %80, i32 0, i32 2
  %82 = call i32 %79(%struct.TYPE_3__* %81)
  br label %83

83:                                               ; preds = %76, %69
  %84 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %85 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %84, i32 0, i32 1
  %86 = call i32 @raw_spin_unlock(i32* %85)
  br label %87

87:                                               ; preds = %83, %58
  ret void
}

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @irq_may_run(%struct.irq_desc*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @irqd_irq_disabled(%struct.TYPE_3__*) #1

declare dso_local i32 @mask_irq(%struct.irq_desc*) #1

declare dso_local i32 @kstat_incr_irqs_this_cpu(%struct.irq_desc*) #1

declare dso_local i32 @preflow_handler(%struct.irq_desc*) #1

declare dso_local i32 @handle_irq_event(%struct.irq_desc*) #1

declare dso_local i32 @cond_unmask_eoi_irq(%struct.irq_desc*, %struct.irq_chip*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
