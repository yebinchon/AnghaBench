; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_wake_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_manage.c_irq_wake_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.irqaction = type { %struct.irqaction* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*, %struct.irqaction*)* @irq_wake_secondary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_wake_secondary(%struct.irq_desc* %0, %struct.irqaction* %1) #0 {
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca %struct.irqaction*, align 8
  %5 = alloca %struct.irqaction*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %3, align 8
  store %struct.irqaction* %1, %struct.irqaction** %4, align 8
  %6 = load %struct.irqaction*, %struct.irqaction** %4, align 8
  %7 = getelementptr inbounds %struct.irqaction, %struct.irqaction* %6, i32 0, i32 0
  %8 = load %struct.irqaction*, %struct.irqaction** %7, align 8
  store %struct.irqaction* %8, %struct.irqaction** %5, align 8
  %9 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %10 = icmp ne %struct.irqaction* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON_ONCE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %18 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %17, i32 0, i32 0
  %19 = call i32 @raw_spin_lock_irq(i32* %18)
  %20 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %21 = load %struct.irqaction*, %struct.irqaction** %5, align 8
  %22 = call i32 @__irq_wake_thread(%struct.irq_desc* %20, %struct.irqaction* %21)
  %23 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %24 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %23, i32 0, i32 0
  %25 = call i32 @raw_spin_unlock_irq(i32* %24)
  br label %26

26:                                               ; preds = %16, %15
  ret void
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @raw_spin_lock_irq(i32*) #1

declare dso_local i32 @__irq_wake_thread(%struct.irq_desc*, %struct.irqaction*) #1

declare dso_local i32 @raw_spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
