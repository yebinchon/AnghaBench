; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_intel8x0_in_clock_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_intel8x0_in_clock_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.pci_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.snd_pci_quirk = type { i32 }

@intel8x0_clock_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"white list rate for %04x:%04x is %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel8x0*)* @intel8x0_in_clock_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel8x0_in_clock_list(%struct.intel8x0* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.snd_pci_quirk*, align 8
  store %struct.intel8x0* %0, %struct.intel8x0** %3, align 8
  %6 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %7 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %6, i32 0, i32 2
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = load i32, i32* @intel8x0_clock_list, align 4
  %11 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(%struct.pci_dev* %9, i32 %10)
  store %struct.snd_pci_quirk* %11, %struct.snd_pci_quirk** %5, align 8
  %12 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %13 = icmp ne %struct.snd_pci_quirk* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %17 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %28 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_info(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29)
  %31 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %35 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %15, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
