; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32, i32, i32 }

@YDSXGR_MODE = common dso_local global i32 0, align 4
@YDSXGR_CTRLSELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ymfpci*)* @snd_ymfpci_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_hw_start(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca %struct.snd_ymfpci*, align 8
  %3 = alloca i64, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %2, align 8
  %4 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %5 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %9 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %16 = load i32, i32* @YDSXGR_MODE, align 4
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %18 = load i32, i32* @YDSXGR_MODE, align 4
  %19 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %17, i32 %18)
  %20 = or i32 %19, 3
  %21 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %15, i32 %16, i32 %20)
  %22 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %23 = load i32, i32* @YDSXGR_CTRLSELECT, align 4
  %24 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %22, i32 %23)
  %25 = and i32 %24, 1
  %26 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %27 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %14, %13
  %29 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %30 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %29, i32 0, i32 1
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
