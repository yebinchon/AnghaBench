; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_card_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_oxygen_lib.c_oxygen_card_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { %struct.oxygen* }
%struct.oxygen = type { i64, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.oxygen*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_card*)* @oxygen_card_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oxygen_card_free(%struct.snd_card* %0) #0 {
  %2 = alloca %struct.snd_card*, align 8
  %3 = alloca %struct.oxygen*, align 8
  store %struct.snd_card* %0, %struct.snd_card** %2, align 8
  %4 = load %struct.snd_card*, %struct.snd_card** %2, align 8
  %5 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %4, i32 0, i32 0
  %6 = load %struct.oxygen*, %struct.oxygen** %5, align 8
  store %struct.oxygen* %6, %struct.oxygen** %3, align 8
  %7 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %8 = call i32 @oxygen_shutdown(%struct.oxygen* %7)
  %9 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %10 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %15 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.oxygen* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %21 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %20, i32 0, i32 6
  %22 = call i32 @flush_work(i32* %21)
  %23 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %24 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %23, i32 0, i32 5
  %25 = call i32 @flush_work(i32* %24)
  %26 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %27 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.oxygen*)*, i32 (%struct.oxygen*)** %28, align 8
  %30 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %31 = call i32 %29(%struct.oxygen* %30)
  %32 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %33 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %37 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %36, i32 0, i32 2
  %38 = call i32 @mutex_destroy(i32* %37)
  %39 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %40 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pci_release_regions(i32 %41)
  %43 = load %struct.oxygen*, %struct.oxygen** %3, align 8
  %44 = getelementptr inbounds %struct.oxygen, %struct.oxygen* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pci_disable_device(i32 %45)
  ret void
}

declare dso_local i32 @oxygen_shutdown(%struct.oxygen*) #1

declare dso_local i32 @free_irq(i64, %struct.oxygen*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @pci_release_regions(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
