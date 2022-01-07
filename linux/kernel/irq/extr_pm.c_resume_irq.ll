; ModuleID = '/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_resume_irq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/irq/extr_pm.c_resume_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32, i32, i32, i32 }

@IRQD_WAKEUP_ARMED = common dso_local global i32 0, align 4
@IRQS_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @resume_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %3 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %4 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %3, i32 0, i32 3
  %5 = load i32, i32* @IRQD_WAKEUP_ARMED, align 4
  %6 = call i32 @irqd_clear(i32* %4, i32 %5)
  %7 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %8 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IRQS_SUSPENDED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %38

20:                                               ; preds = %14
  %21 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %22 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %26 = call i32 @irq_state_set_disabled(%struct.irq_desc* %25)
  %27 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %28 = call i32 @irq_state_set_masked(%struct.irq_desc* %27)
  br label %29

29:                                               ; preds = %20, %13
  %30 = load i32, i32* @IRQS_SUSPENDED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %33 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %37 = call i32 @__enable_irq(%struct.irq_desc* %36)
  br label %38

38:                                               ; preds = %29, %19
  ret void
}

declare dso_local i32 @irqd_clear(i32*, i32) #1

declare dso_local i32 @irq_state_set_disabled(%struct.irq_desc*) #1

declare dso_local i32 @irq_state_set_masked(%struct.irq_desc*) #1

declare dso_local i32 @__enable_irq(%struct.irq_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
