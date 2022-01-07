; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_ice1712.c_snd_ice1712_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.snd_card = type { %struct.snd_ice1712* }
%struct.snd_ice1712 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.snd_ice1712*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @snd_ice1712_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ice1712_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.snd_card*, align 8
  %4 = alloca %struct.snd_ice1712*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.snd_card* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.snd_card* %6, %struct.snd_card** %3, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %7, i32 0, i32 0
  %9 = load %struct.snd_ice1712*, %struct.snd_ice1712** %8, align 8
  store %struct.snd_ice1712* %9, %struct.snd_ice1712** %4, align 8
  %10 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %16 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %18, align 8
  %20 = icmp ne i32 (%struct.snd_ice1712*)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %23 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.snd_ice1712*)*, i32 (%struct.snd_ice1712*)** %25, align 8
  %27 = load %struct.snd_ice1712*, %struct.snd_ice1712** %4, align 8
  %28 = call i32 %26(%struct.snd_ice1712* %27)
  br label %29

29:                                               ; preds = %21, %14, %1
  %30 = load %struct.snd_card*, %struct.snd_card** %3, align 8
  %31 = call i32 @snd_card_free(%struct.snd_card* %30)
  ret void
}

declare dso_local %struct.snd_card* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
