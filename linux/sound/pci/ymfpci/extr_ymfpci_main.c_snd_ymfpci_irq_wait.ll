; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_irq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_irq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i32, i32 }

@YDSXGR_MODE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ymfpci*)* @snd_ymfpci_irq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_irq_wait(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca %struct.snd_ymfpci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %2, align 8
  store i32 4, i32* %4, align 4
  br label %5

5:                                                ; preds = %16, %15, %1
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %4, align 4
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %5
  %10 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %11 = load i32, i32* @YDSXGR_MODE, align 4
  %12 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %10, i32 %11)
  %13 = and i32 %12, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %5

16:                                               ; preds = %9
  %17 = load i32, i32* @current, align 4
  %18 = call i32 @init_waitqueue_entry(i32* %3, i32 %17)
  %19 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %20 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %19, i32 0, i32 0
  %21 = call i32 @add_wait_queue(i32* %20, i32* %3)
  %22 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %23 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %22, i32 0, i32 1
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = call i32 @msecs_to_jiffies(i32 50)
  %26 = call i32 @schedule_timeout_uninterruptible(i32 %25)
  %27 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %28 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %27, i32 0, i32 0
  %29 = call i32 @remove_wait_queue(i32* %28, i32* %3)
  br label %5

30:                                               ; preds = %5
  ret void
}

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
