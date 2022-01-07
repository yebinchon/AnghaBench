; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_get_pci_info.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_get_pci_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cstate = type { i32 }

@PCI_NON_PC0_ENABLE_BIT = common dso_local global i32 0, align 4
@PCI_NON_PC0_OFFSET = common dso_local global i32 0, align 4
@PCI_PC1_ENABLE_BIT = common dso_local global i32 0, align 4
@PCI_PC1_OFFSET = common dso_local global i32 0, align 4
@PCI_PC6_ENABLE_BIT = common dso_local global i32 0, align 4
@PCI_PC6_OFFSET = common dso_local global i32 0, align 4
@PCI_NBP1_ENTERED_BIT = common dso_local global i32 0, align 4
@PCI_NBP1_STAT_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cstate*, i32*, i32*, i32)* @amd_fam14h_get_pci_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_fam14h_get_pci_info(%struct.cstate* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cstate*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.cstate* %0, %struct.cstate** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.cstate*, %struct.cstate** %6, align 8
  %11 = getelementptr inbounds %struct.cstate, %struct.cstate* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %33 [
    i32 130, label %13
    i32 129, label %18
    i32 128, label %23
    i32 131, label %28
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* @PCI_NON_PC0_ENABLE_BIT, align 4
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @PCI_NON_PC0_OFFSET, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  br label %34

18:                                               ; preds = %4
  %19 = load i32, i32* @PCI_PC1_ENABLE_BIT, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @PCI_PC1_OFFSET, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %34

23:                                               ; preds = %4
  %24 = load i32, i32* @PCI_PC6_ENABLE_BIT, align 4
  %25 = load i32*, i32** %8, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @PCI_PC6_OFFSET, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %34

28:                                               ; preds = %4
  %29 = load i32, i32* @PCI_NBP1_ENTERED_BIT, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @PCI_NBP1_STAT_OFFSET, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %34

33:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

34:                                               ; preds = %28, %23, %18, %13
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
