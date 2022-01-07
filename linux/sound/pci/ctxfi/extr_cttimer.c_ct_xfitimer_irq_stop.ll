; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_xfitimer_irq_stop.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_cttimer.c_ct_xfitimer_irq_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hw* }
%struct.hw = type { i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ct_timer*)* @ct_xfitimer_irq_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ct_xfitimer_irq_stop(%struct.ct_timer* %0) #0 {
  %2 = alloca %struct.ct_timer*, align 8
  %3 = alloca %struct.hw*, align 8
  store %struct.ct_timer* %0, %struct.ct_timer** %2, align 8
  %4 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %5 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %10 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hw*, %struct.hw** %12, align 8
  store %struct.hw* %13, %struct.hw** %3, align 8
  %14 = load %struct.hw*, %struct.hw** %3, align 8
  %15 = getelementptr inbounds %struct.hw, %struct.hw* %14, i32 0, i32 1
  %16 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %15, align 8
  %17 = load %struct.hw*, %struct.hw** %3, align 8
  %18 = call i32 %16(%struct.hw* %17, i32 0)
  %19 = load %struct.hw*, %struct.hw** %3, align 8
  %20 = getelementptr inbounds %struct.hw, %struct.hw* %19, i32 0, i32 0
  %21 = load i32 (%struct.hw*, i32)*, i32 (%struct.hw*, i32)** %20, align 8
  %22 = load %struct.hw*, %struct.hw** %3, align 8
  %23 = call i32 %21(%struct.hw* %22, i32 0)
  %24 = load %struct.ct_timer*, %struct.ct_timer** %2, align 8
  %25 = getelementptr inbounds %struct.ct_timer, %struct.ct_timer* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %8, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
