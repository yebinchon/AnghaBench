; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_interrupts_property.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_interrupts_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32, %struct.node* }
%struct.node = type { %struct.node* }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"size (%d) is invalid, expected multiple of %zu\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@DTSF_PLUGIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Invalid phandle\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Bad phandle\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Missing interrupt-controller or interrupt-map property\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Missing interrupt-parent\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Missing #interrupt-cells in interrupt-parent\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"size is (%d), expected multiple of %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_interrupts_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_interrupts_property(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.property*, align 8
  %11 = alloca %struct.property*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %14 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %15 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %14, i32 0, i32 1
  %16 = load %struct.node*, %struct.node** %15, align 8
  store %struct.node* %16, %struct.node** %7, align 8
  store %struct.node* null, %struct.node** %8, align 8
  %17 = load %struct.node*, %struct.node** %6, align 8
  store %struct.node* %17, %struct.node** %9, align 8
  store %struct.property* null, %struct.property** %11, align 8
  %18 = load %struct.node*, %struct.node** %6, align 8
  %19 = call %struct.property* @get_property(%struct.node* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %19, %struct.property** %10, align 8
  %20 = load %struct.property*, %struct.property** %10, align 8
  %21 = icmp ne %struct.property* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %159

23:                                               ; preds = %3
  %24 = load %struct.property*, %struct.property** %10, align 8
  %25 = getelementptr inbounds %struct.property, %struct.property* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = urem i64 %28, 4
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.check*, %struct.check** %4, align 8
  %33 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %34 = load %struct.node*, %struct.node** %6, align 8
  %35 = load %struct.property*, %struct.property** %10, align 8
  %36 = load %struct.property*, %struct.property** %10, align 8
  %37 = getelementptr inbounds %struct.property, %struct.property* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %32, %struct.dt_info* %33, %struct.node* %34, %struct.property* %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 4)
  br label %41

41:                                               ; preds = %31, %23
  br label %42

42:                                               ; preds = %110, %82, %41
  %43 = load %struct.node*, %struct.node** %9, align 8
  %44 = icmp ne %struct.node* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.property*, %struct.property** %11, align 8
  %47 = icmp ne %struct.property* %46, null
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br i1 %50, label %51, label %114

51:                                               ; preds = %49
  %52 = load %struct.node*, %struct.node** %9, align 8
  %53 = load %struct.node*, %struct.node** %6, align 8
  %54 = icmp ne %struct.node* %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load %struct.node*, %struct.node** %9, align 8
  %57 = call i64 @node_is_interrupt_provider(%struct.node* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %60, %struct.node** %8, align 8
  br label %114

61:                                               ; preds = %55, %51
  %62 = load %struct.node*, %struct.node** %9, align 8
  %63 = call %struct.property* @get_property(%struct.node* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store %struct.property* %63, %struct.property** %11, align 8
  %64 = load %struct.property*, %struct.property** %11, align 8
  %65 = icmp ne %struct.property* %64, null
  br i1 %65, label %66, label %110

66:                                               ; preds = %61
  %67 = load %struct.property*, %struct.property** %11, align 8
  %68 = call i32 @propval_cell(%struct.property* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %88

74:                                               ; preds = %71, %66
  %75 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %76 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @DTSF_PLUGIN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %159

82:                                               ; preds = %74
  %83 = load %struct.check*, %struct.check** %4, align 8
  %84 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %85 = load %struct.node*, %struct.node** %9, align 8
  %86 = load %struct.property*, %struct.property** %11, align 8
  %87 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %83, %struct.dt_info* %84, %struct.node* %85, %struct.property* %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %42

88:                                               ; preds = %71
  %89 = load %struct.node*, %struct.node** %7, align 8
  %90 = load i32, i32* %13, align 4
  %91 = call %struct.node* @get_node_by_phandle(%struct.node* %89, i32 %90)
  store %struct.node* %91, %struct.node** %8, align 8
  %92 = load %struct.node*, %struct.node** %8, align 8
  %93 = icmp ne %struct.node* %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.check*, %struct.check** %4, align 8
  %96 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %97 = load %struct.node*, %struct.node** %9, align 8
  %98 = load %struct.property*, %struct.property** %11, align 8
  %99 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %95, %struct.dt_info* %96, %struct.node* %97, %struct.property* %98, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %159

100:                                              ; preds = %88
  %101 = load %struct.node*, %struct.node** %8, align 8
  %102 = call i64 @node_is_interrupt_provider(%struct.node* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load %struct.check*, %struct.check** %4, align 8
  %106 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %107 = load %struct.node*, %struct.node** %8, align 8
  %108 = call i32 @FAIL(%struct.check* %105, %struct.dt_info* %106, %struct.node* %107, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %100
  br label %114

110:                                              ; preds = %61
  %111 = load %struct.node*, %struct.node** %9, align 8
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 0
  %113 = load %struct.node*, %struct.node** %112, align 8
  store %struct.node* %113, %struct.node** %9, align 8
  br label %42

114:                                              ; preds = %109, %59, %49
  %115 = load %struct.node*, %struct.node** %8, align 8
  %116 = icmp ne %struct.node* %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load %struct.check*, %struct.check** %4, align 8
  %119 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %120 = load %struct.node*, %struct.node** %6, align 8
  %121 = call i32 @FAIL(%struct.check* %118, %struct.dt_info* %119, %struct.node* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %159

122:                                              ; preds = %114
  %123 = load %struct.node*, %struct.node** %8, align 8
  %124 = call %struct.property* @get_property(%struct.node* %123, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  store %struct.property* %124, %struct.property** %11, align 8
  %125 = load %struct.property*, %struct.property** %11, align 8
  %126 = icmp ne %struct.property* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load %struct.check*, %struct.check** %4, align 8
  %129 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %130 = load %struct.node*, %struct.node** %8, align 8
  %131 = call i32 @FAIL(%struct.check* %128, %struct.dt_info* %129, %struct.node* %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %159

132:                                              ; preds = %122
  %133 = load %struct.property*, %struct.property** %11, align 8
  %134 = call i32 @propval_cell(%struct.property* %133)
  store i32 %134, i32* %12, align 4
  %135 = load %struct.property*, %struct.property** %10, align 8
  %136 = getelementptr inbounds %struct.property, %struct.property* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = load i32, i32* %12, align 4
  %141 = sext i32 %140 to i64
  %142 = mul i64 %141, 4
  %143 = urem i64 %139, %142
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %132
  %146 = load %struct.check*, %struct.check** %4, align 8
  %147 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %148 = load %struct.node*, %struct.node** %6, align 8
  %149 = load %struct.property*, %struct.property** %11, align 8
  %150 = load %struct.property*, %struct.property** %10, align 8
  %151 = getelementptr inbounds %struct.property, %struct.property* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 %155, 4
  %157 = trunc i64 %156 to i32
  %158 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %146, %struct.dt_info* %147, %struct.node* %148, %struct.property* %149, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %22, %81, %94, %117, %127, %145, %132
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) #1

declare dso_local i64 @node_is_interrupt_provider(%struct.node*) #1

declare dso_local i32 @propval_cell(%struct.property*) #1

declare dso_local %struct.node* @get_node_by_phandle(%struct.node*, i32) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
