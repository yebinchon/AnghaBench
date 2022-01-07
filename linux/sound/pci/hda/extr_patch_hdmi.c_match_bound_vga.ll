; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_match_bound_vga.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_hdmi.c_match_bound_vga.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hdac_bus = type { %struct.device* }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i8*)* @match_bound_vga to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_bound_vga(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hdac_bus*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.hdac_bus*
  store %struct.hdac_bus* %12, %struct.hdac_bus** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @dev_is_pci(%struct.device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %18 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  %20 = call i32 @dev_is_pci(%struct.device* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %3
  store i32 0, i32* %4, align 4
  br label %38

23:                                               ; preds = %16
  %24 = load %struct.hdac_bus*, %struct.hdac_bus** %8, align 8
  %25 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %24, i32 0, i32 0
  %26 = load %struct.device*, %struct.device** %25, align 8
  %27 = call %struct.pci_dev* @to_pci_dev(%struct.device* %26)
  store %struct.pci_dev* %27, %struct.pci_dev** %10, align 8
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call %struct.pci_dev* @to_pci_dev(%struct.device* %28)
  store %struct.pci_dev* %29, %struct.pci_dev** %9, align 8
  %30 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %23, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
