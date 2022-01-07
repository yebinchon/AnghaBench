; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_amd.c_amd_pci_get_num_boost_states.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/helpers/extr_amd.c_amd_pci_get_num_boost_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_access = type { i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amd_pci_get_num_boost_states(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pci_access*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = call %struct.pci_dev* @pci_slot_func_init(%struct.pci_access** %6, i32 24, i32 4)
  store %struct.pci_dev* %11, %struct.pci_dev** %7, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %13 = icmp eq %struct.pci_dev* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %19 = call i32 @pci_read_byte(%struct.pci_dev* %18, i32 348)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 3
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  store i32 1, i32* %24, align 4
  br label %27

25:                                               ; preds = %17
  %26 = load i32*, i32** %4, align 8
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32, i32* %8, align 4
  %29 = ashr i32 %28, 2
  %30 = and i32 %29, 7
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.pci_access*, %struct.pci_access** %6, align 8
  %33 = call i32 @pci_cleanup(%struct.pci_access* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %27, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.pci_dev* @pci_slot_func_init(%struct.pci_access**, i32, i32) #1

declare dso_local i32 @pci_read_byte(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_cleanup(%struct.pci_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
