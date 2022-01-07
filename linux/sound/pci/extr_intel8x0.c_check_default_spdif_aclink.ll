; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_check_default_spdif_aclink.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_check_default_spdif_aclink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.snd_pci_quirk = type { i32 }

@spdif_aclink_defaults = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Using SPDIF over AC-Link for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Using integrated SPDIF DMA for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @check_default_spdif_aclink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_default_spdif_aclink(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.snd_pci_quirk*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = load i32, i32* @spdif_aclink_defaults, align 4
  %7 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(%struct.pci_dev* %5, i32 %6)
  store %struct.snd_pci_quirk* %7, %struct.snd_pci_quirk** %4, align 8
  %8 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %4, align 8
  %9 = icmp ne %struct.snd_pci_quirk* %8, null
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %4, align 8
  %12 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %4, align 8
  %19 = call i32 @snd_pci_quirk_name(%struct.snd_pci_quirk* %18)
  %20 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %27

21:                                               ; preds = %10
  %22 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 0
  %24 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %4, align 8
  %25 = call i32 @snd_pci_quirk_name(%struct.snd_pci_quirk* %24)
  %26 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %21, %15
  %28 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %4, align 8
  %29 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(%struct.pci_dev*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snd_pci_quirk_name(%struct.snd_pci_quirk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
