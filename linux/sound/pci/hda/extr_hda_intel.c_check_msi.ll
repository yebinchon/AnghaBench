; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_check_msi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_intel.c_check_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_pci_quirk = type { i32, i32, i32 }

@enable_msi = common dso_local global i64 0, align 8
@msi_black_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"msi for device %04x:%04x set to %d\0A\00", align 1
@AZX_DCAPS_NO_MSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Disabling MSI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.azx*)* @check_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_msi(%struct.azx* %0) #0 {
  %2 = alloca %struct.azx*, align 8
  %3 = alloca %struct.snd_pci_quirk*, align 8
  store %struct.azx* %0, %struct.azx** %2, align 8
  %4 = load i64, i64* @enable_msi, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i64, i64* @enable_msi, align 8
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = load %struct.azx*, %struct.azx** %2, align 8
  %13 = getelementptr inbounds %struct.azx, %struct.azx* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  br label %61

14:                                               ; preds = %1
  %15 = load %struct.azx*, %struct.azx** %2, align 8
  %16 = getelementptr inbounds %struct.azx, %struct.azx* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.azx*, %struct.azx** %2, align 8
  %18 = getelementptr inbounds %struct.azx, %struct.azx* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @msi_black_list, align 4
  %21 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32 %19, i32 %20)
  store %struct.snd_pci_quirk* %21, %struct.snd_pci_quirk** %3, align 8
  %22 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %3, align 8
  %23 = icmp ne %struct.snd_pci_quirk* %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %14
  %25 = load %struct.azx*, %struct.azx** %2, align 8
  %26 = getelementptr inbounds %struct.azx, %struct.azx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %3, align 8
  %31 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %3, align 8
  %34 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_info(i32 %29, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %3, align 8
  %41 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.azx*, %struct.azx** %2, align 8
  %44 = getelementptr inbounds %struct.azx, %struct.azx* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %61

45:                                               ; preds = %14
  %46 = load %struct.azx*, %struct.azx** %2, align 8
  %47 = getelementptr inbounds %struct.azx, %struct.azx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AZX_DCAPS_NO_MSI, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.azx*, %struct.azx** %2, align 8
  %54 = getelementptr inbounds %struct.azx, %struct.azx* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, ...) @dev_info(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.azx*, %struct.azx** %2, align 8
  %60 = getelementptr inbounds %struct.azx, %struct.azx* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %6, %24, %52, %45
  ret void
}

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
