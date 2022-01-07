; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_pci_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_pci_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32, i32, i32* }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@pci_bus = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"node name is not \22pci\22 or \22pcie\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"missing ranges for PCI bridge (or not a bridge)\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"incorrect #address-cells for PCI bridge\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"incorrect #size-cells for PCI bridge\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"value must be 2 cells\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"1st cell must be less than or equal to 2nd cell\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"maximum bus number must be less than 256\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_pci_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pci_bridge(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = call %struct.property* @get_property(%struct.node* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %10, %struct.property** %7, align 8
  %11 = load %struct.property*, %struct.property** %7, align 8
  %12 = icmp ne %struct.property* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load %struct.property*, %struct.property** %7, align 8
  %15 = getelementptr inbounds %struct.property, %struct.property* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @streq(i64 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13, %3
  br label %126

21:                                               ; preds = %13
  %22 = load %struct.node*, %struct.node** %6, align 8
  %23 = getelementptr inbounds %struct.node, %struct.node* %22, i32 0, i32 2
  store i32* @pci_bus, i32** %23, align 8
  %24 = load %struct.node*, %struct.node** %6, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.node*, %struct.node** %6, align 8
  %28 = getelementptr inbounds %struct.node, %struct.node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strprefixeq(i32 %26, i32 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %21
  %33 = load %struct.node*, %struct.node** %6, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = getelementptr inbounds %struct.node, %struct.node* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @strprefixeq(i32 %35, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = load %struct.check*, %struct.check** %4, align 8
  %43 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %44 = load %struct.node*, %struct.node** %6, align 8
  %45 = call i32 @FAIL(%struct.check* %42, %struct.dt_info* %43, %struct.node* %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %32, %21
  %47 = load %struct.node*, %struct.node** %6, align 8
  %48 = call %struct.property* @get_property(%struct.node* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store %struct.property* %48, %struct.property** %7, align 8
  %49 = load %struct.property*, %struct.property** %7, align 8
  %50 = icmp ne %struct.property* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.check*, %struct.check** %4, align 8
  %53 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %54 = load %struct.node*, %struct.node** %6, align 8
  %55 = call i32 @FAIL(%struct.check* %52, %struct.dt_info* %53, %struct.node* %54, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.node*, %struct.node** %6, align 8
  %58 = call i32 @node_addr_cells(%struct.node* %57)
  %59 = icmp ne i32 %58, 3
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load %struct.check*, %struct.check** %4, align 8
  %62 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %63 = load %struct.node*, %struct.node** %6, align 8
  %64 = call i32 @FAIL(%struct.check* %61, %struct.dt_info* %62, %struct.node* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.node*, %struct.node** %6, align 8
  %67 = call i32 @node_size_cells(%struct.node* %66)
  %68 = icmp ne i32 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.check*, %struct.check** %4, align 8
  %71 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %72 = load %struct.node*, %struct.node** %6, align 8
  %73 = call i32 @FAIL(%struct.check* %70, %struct.dt_info* %71, %struct.node* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %65
  %75 = load %struct.node*, %struct.node** %6, align 8
  %76 = call %struct.property* @get_property(%struct.node* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store %struct.property* %76, %struct.property** %7, align 8
  %77 = load %struct.property*, %struct.property** %7, align 8
  %78 = icmp ne %struct.property* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %126

80:                                               ; preds = %74
  %81 = load %struct.property*, %struct.property** %7, align 8
  %82 = getelementptr inbounds %struct.property, %struct.property* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %85, 8
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.check*, %struct.check** %4, align 8
  %89 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %90 = load %struct.node*, %struct.node** %6, align 8
  %91 = load %struct.property*, %struct.property** %7, align 8
  %92 = call i32 @FAIL_PROP(%struct.check* %88, %struct.dt_info* %89, %struct.node* %90, %struct.property* %91, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %126

93:                                               ; preds = %80
  %94 = load %struct.property*, %struct.property** %7, align 8
  %95 = getelementptr inbounds %struct.property, %struct.property* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i32*
  store i32* %98, i32** %8, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @fdt32_to_cpu(i32 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @fdt32_to_cpu(i32 %105)
  %107 = icmp sgt i32 %102, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %93
  %109 = load %struct.check*, %struct.check** %4, align 8
  %110 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %111 = load %struct.node*, %struct.node** %6, align 8
  %112 = load %struct.property*, %struct.property** %7, align 8
  %113 = call i32 @FAIL_PROP(%struct.check* %109, %struct.dt_info* %110, %struct.node* %111, %struct.property* %112, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  br label %114

114:                                              ; preds = %108, %93
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @fdt32_to_cpu(i32 %117)
  %119 = icmp sgt i32 %118, 255
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = load %struct.check*, %struct.check** %4, align 8
  %122 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %123 = load %struct.node*, %struct.node** %6, align 8
  %124 = load %struct.property*, %struct.property** %7, align 8
  %125 = call i32 @FAIL_PROP(%struct.check* %121, %struct.dt_info* %122, %struct.node* %123, %struct.property* %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  br label %126

126:                                              ; preds = %20, %79, %87, %120, %114
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @streq(i64, i8*) #1

declare dso_local i32 @strprefixeq(i32, i32, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*) #1

declare dso_local i32 @node_addr_cells(%struct.node*) #1

declare dso_local i32 @node_size_cells(%struct.node*) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
