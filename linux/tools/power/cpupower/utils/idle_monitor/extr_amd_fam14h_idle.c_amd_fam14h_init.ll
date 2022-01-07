; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@NBP1 = common dso_local global i64 0, align 8
@amd_fam14h_pci_dev = common dso_local global i32 0, align 4
@PCI_MONITOR_ENABLE_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Init %s: read at offset: 0x%x val: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Init %s: offset: 0x%x enable_bit: %d - val: %u (%u)\0A\00", align 1
@previous_count = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @amd_fam14h_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_fam14h_init(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @amd_fam14h_get_pci_info(%struct.TYPE_4__* %10, i32* %7, i32* %6, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NBP1, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %17
  %24 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pci_read_long(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @pci_write_long(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %74

36:                                               ; preds = %17
  %37 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %38 = load i32, i32* @PCI_MONITOR_ENABLE_REG, align 4
  %39 = call i32 @pci_read_long(i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PCI_MONITOR_ENABLE_REG, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i8*, i32, i32, i32, ...) @dprint(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 1, %46
  %48 = load i32, i32* %9, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %51 = load i32, i32* @PCI_MONITOR_ENABLE_REG, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @pci_write_long(i32 %50, i32 %51, i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @PCI_MONITOR_ENABLE_REG, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 (i8*, i32, i32, i32, ...) @dprint(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @pci_write_long(i32 %62, i32 %63, i32 0)
  %65 = load i64**, i64*** @previous_count, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64*, i64** %65, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 0, i64* %73, align 8
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %36, %23, %15
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @amd_fam14h_get_pci_info(%struct.TYPE_4__*, i32*, i32*, i32) #1

declare dso_local i32 @pci_read_long(i32, i32) #1

declare dso_local i32 @pci_write_long(i32, i32, i32) #1

declare dso_local i32 @dprint(i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
