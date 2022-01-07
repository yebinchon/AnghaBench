; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_xfitimer_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_xfitimer_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_timer*)* @ct_xfitimer_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_xfitimer_update(%struct.ct_timer* %0) #0 {
  %2 = alloca %struct.ct_timer*, align 8
  %3 = alloca i64, align 8
  store %struct.ct_timer* %0, %struct.ct_timer** %2, align 8
  %4 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %5 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %9 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %14 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %16 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %15, i32 0, i32 1
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  br label %28

19:                                               ; preds = %1
  %20 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %21 = call i32 @ct_xfitimer_irq_stop(%struct.ct_timer* %20)
  %22 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %23 = call i32 @ct_xfitimer_reprogram(%struct.ct_timer* %22, i32 0)
  %24 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %25 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %24, i32 0, i32 1
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  br label %28

28:                                               ; preds = %19, %12
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ct_xfitimer_irq_stop(%struct.ct_timer*) #1

declare dso_local i32 @ct_xfitimer_reprogram(%struct.ct_timer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
