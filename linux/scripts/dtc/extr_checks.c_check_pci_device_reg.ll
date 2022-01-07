; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_pci_device_reg.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_pci_device_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.property = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@pci_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"missing PCI reg property\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"PCI reg config space address cells 2 and 3 must be 0\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"PCI reg address is not configuration space\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"PCI reg config space address register number must be 0\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%x,%x\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"PCI unit address format error, expected \22%s\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_pci_device_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pci_device_reg(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [5 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %14 = load %struct.node*, %struct.node** %6, align 8
  %15 = call i8* @get_unitname(%struct.node* %14)
  store i8* %15, i8** %8, align 8
  %16 = load %struct.node*, %struct.node** %6, align 8
  %17 = getelementptr inbounds %struct.node, %struct.node* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.node*, %struct.node** %6, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, @pci_bus
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %3
  br label %118

28:                                               ; preds = %20
  %29 = load %struct.node*, %struct.node** %6, align 8
  %30 = call %struct.property* @get_property(%struct.node* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %30, %struct.property** %7, align 8
  %31 = load %struct.property*, %struct.property** %7, align 8
  %32 = icmp ne %struct.property* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.check*, %struct.check** %4, align 8
  %35 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %34, %struct.dt_info* %35, %struct.node* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %118

38:                                               ; preds = %28
  %39 = load %struct.property*, %struct.property** %7, align 8
  %40 = getelementptr inbounds %struct.property, %struct.property* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64* %43, i64** %13, align 8
  %44 = load i64*, i64** %13, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %38
  %49 = load i64*, i64** %13, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %38
  %54 = load %struct.check*, %struct.check** %4, align 8
  %55 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %56 = load %struct.node*, %struct.node** %6, align 8
  %57 = load %struct.property*, %struct.property** %7, align 8
  %58 = call i32 @FAIL_PROP(%struct.check* %54, %struct.dt_info* %55, %struct.node* %56, %struct.property* %57, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i64*, i64** %13, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @fdt32_to_cpu(i64 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 63488
  %66 = lshr i32 %65, 11
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, 1792
  %69 = lshr i32 %68, 8
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, -16777216
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %59
  %74 = load %struct.check*, %struct.check** %4, align 8
  %75 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %76 = load %struct.node*, %struct.node** %6, align 8
  %77 = load %struct.property*, %struct.property** %7, align 8
  %78 = call i32 @FAIL_PROP(%struct.check* %74, %struct.dt_info* %75, %struct.node* %76, %struct.property* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %59
  %80 = load i32, i32* %12, align 4
  %81 = and i32 %80, 255
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load %struct.check*, %struct.check** %4, align 8
  %85 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %86 = load %struct.node*, %struct.node** %6, align 8
  %87 = load %struct.property*, %struct.property** %7, align 8
  %88 = call i32 @FAIL_PROP(%struct.check* %84, %struct.dt_info* %85, %struct.node* %86, %struct.property* %87, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %79
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %93, i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %98 = call i64 @streq(i8* %96, i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %118

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %89
  %103 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %103, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %109 = call i64 @streq(i8* %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %118

112:                                              ; preds = %102
  %113 = load %struct.check*, %struct.check** %4, align 8
  %114 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %115 = load %struct.node*, %struct.node** %6, align 8
  %116 = getelementptr inbounds [5 x i8], [5 x i8]* %9, i64 0, i64 0
  %117 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %113, %struct.dt_info* %114, %struct.node* %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %112, %111, %100, %33, %27
  ret void
}

declare dso_local i8* @get_unitname(%struct.node*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*) #1

declare dso_local i32 @fdt32_to_cpu(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @streq(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
