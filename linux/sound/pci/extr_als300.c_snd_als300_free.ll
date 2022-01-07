; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_als300.c_snd_als300_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_als300 = type { i64, i32 }

@IRQ_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_als300*)* @snd_als300_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_als300_free(%struct.snd_als300* %0) #0 {
  %2 = alloca %struct.snd_als300*, align 8
  store %struct.snd_als300* %0, %struct.snd_als300** %2, align 8
  %3 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %4 = load i32, i32* @IRQ_DISABLE, align 4
  %5 = call i32 @snd_als300_set_irq_flag(%struct.snd_als300* %3, i32 %4)
  %6 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %7 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %12 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %15 = call i32 @free_irq(i64 %13, %struct.snd_als300* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %18 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @pci_release_regions(i32 %19)
  %21 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %22 = getelementptr inbounds %struct.snd_als300, %struct.snd_als300* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_disable_device(i32 %23)
  %25 = load %struct.snd_als300*, %struct.snd_als300** %2, align 8
  %26 = call i32 @kfree(%struct.snd_als300* %25)
  ret i32 0
}

declare dso_local i32 @snd_als300_set_irq_flag(%struct.snd_als300*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.snd_als300*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @kfree(%struct.snd_als300*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
