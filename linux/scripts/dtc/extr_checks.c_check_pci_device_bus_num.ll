; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_pci_device_bus_num.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_pci_device_bus_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { %struct.node*, i32* }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@pci_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"PCI bus number %d out of range, expected (%d - %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_pci_device_bus_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pci_device_bus_num(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %12 = load %struct.node*, %struct.node** %6, align 8
  %13 = getelementptr inbounds %struct.node, %struct.node* %12, i32 0, i32 0
  %14 = load %struct.node*, %struct.node** %13, align 8
  %15 = icmp ne %struct.node* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.node*, %struct.node** %6, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %19 = load %struct.node*, %struct.node** %18, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, @pci_bus
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %3
  br label %80

24:                                               ; preds = %16
  %25 = load %struct.node*, %struct.node** %6, align 8
  %26 = call %struct.property* @get_property(%struct.node* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %26, %struct.property** %7, align 8
  %27 = load %struct.property*, %struct.property** %7, align 8
  %28 = icmp ne %struct.property* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %80

30:                                               ; preds = %24
  %31 = load %struct.property*, %struct.property** %7, align 8
  %32 = getelementptr inbounds %struct.property, %struct.property* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fdt32_to_cpu(i32 %38)
  %40 = and i32 %39, 16711680
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %8, align 4
  %42 = load %struct.node*, %struct.node** %6, align 8
  %43 = getelementptr inbounds %struct.node, %struct.node* %42, i32 0, i32 0
  %44 = load %struct.node*, %struct.node** %43, align 8
  %45 = call %struct.property* @get_property(%struct.node* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store %struct.property* %45, %struct.property** %7, align 8
  %46 = load %struct.property*, %struct.property** %7, align 8
  %47 = icmp ne %struct.property* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %63

49:                                               ; preds = %30
  %50 = load %struct.property*, %struct.property** %7, align 8
  %51 = getelementptr inbounds %struct.property, %struct.property* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %11, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @fdt32_to_cpu(i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fdt32_to_cpu(i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %49, %48
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ugt i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %63
  %72 = load %struct.check*, %struct.check** %4, align 8
  %73 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %74 = load %struct.node*, %struct.node** %6, align 8
  %75 = load %struct.property*, %struct.property** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @FAIL_PROP(%struct.check* %72, %struct.dt_info* %73, %struct.node* %74, %struct.property* %75, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %23, %29, %71, %67
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
