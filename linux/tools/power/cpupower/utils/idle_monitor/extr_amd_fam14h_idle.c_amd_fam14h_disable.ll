; ModuleID = '/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_disable.c'
source_filename = "/home/carl/AnghaBench/linux/tools/power/cpupower/utils/idle_monitor/extr_amd_fam14h_idle.c_amd_fam14h_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@amd_fam14h_pci_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: offset: 0x%x %u\0A\00", align 1
@NBP1 = common dso_local global i64 0, align 8
@PCI_NBP1_ACTIVE_BIT = common dso_local global i32 0, align 4
@PCI_NBP1_ENTERED_BIT = common dso_local global i32 0, align 4
@nbp1_entered = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"NBP1 was %sentered - 0x%x - enable_bit: %d - pci_offset: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@current_count = common dso_local global i32** null, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: Current -  %llu (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"%s: Previous - %llu (%u)\0A\00", align 1
@previous_count = common dso_local global i32** null, align 8
@PCI_MONITOR_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @amd_fam14h_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_fam14h_disable(%struct.TYPE_4__* %0, i32 %1) #0 {
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
  br label %110

17:                                               ; preds = %2
  %18 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @pci_read_long(i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i8*, i8*, i32, i32, ...) @dprint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26, i32 %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @NBP1, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %17
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @PCI_NBP1_ACTIVE_BIT, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %35, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PCI_NBP1_ENTERED_BIT, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = or i32 %38, %42
  store i32 %43, i32* @nbp1_entered, align 4
  %44 = load i32, i32* @nbp1_entered, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i8*, i8*, i32, i32, ...) @dprint(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %110

53:                                               ; preds = %17
  %54 = load i32, i32* %9, align 4
  %55 = load i32**, i32*** @current_count, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %54, i32* %63, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load i32**, i32*** @current_count, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32*, i32** %69, i64 %72
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 (i8*, i8*, i32, i32, ...) @dprint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %68, i32 %78, i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32**, i32*** @previous_count, align 8
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i32*, i32** %86, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 (i8*, i8*, i32, i32, ...) @dprint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %85, i32 %95, i32 %96)
  %98 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %99 = load i32, i32* @PCI_MONITOR_ENABLE_REG, align 4
  %100 = call i32 @pci_read_long(i32 %98, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %6, align 4
  %102 = shl i32 1, %101
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @amd_fam14h_pci_dev, align 4
  %107 = load i32, i32* @PCI_MONITOR_ENABLE_REG, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @pci_write_long(i32 %106, i32 %107, i32 %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %53, %34, %15
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @amd_fam14h_get_pci_info(%struct.TYPE_4__*, i32*, i32*, i32) #1

declare dso_local i32 @pci_read_long(i32, i32) #1

declare dso_local i32 @dprint(i8*, i8*, i32, i32, ...) #1

declare dso_local i32 @pci_write_long(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
