; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_ranges_format.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_ranges_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32, %struct.node* }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Root node has a \22ranges\22 property\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"empty \22ranges\22 property but its #address-cells (%d) differs from %s (%d)\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"empty \22ranges\22 property but its #size-cells (%d) differs from %s (%d)\00", align 1
@.str.4 = private unnamed_addr constant [125 x i8] c"\22ranges\22 property has invalid length (%d bytes) (parent #address-cells == %d, child #address-cells == %d, #size-cells == %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_ranges_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_ranges_format(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = call %struct.property* @get_property(%struct.node* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %14, %struct.property** %7, align 8
  %15 = load %struct.property*, %struct.property** %7, align 8
  %16 = icmp ne %struct.property* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %112

18:                                               ; preds = %3
  %19 = load %struct.node*, %struct.node** %6, align 8
  %20 = getelementptr inbounds %struct.node, %struct.node* %19, i32 0, i32 1
  %21 = load %struct.node*, %struct.node** %20, align 8
  %22 = icmp ne %struct.node* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.check*, %struct.check** %4, align 8
  %25 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %26 = load %struct.node*, %struct.node** %6, align 8
  %27 = load %struct.property*, %struct.property** %7, align 8
  %28 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %24, %struct.dt_info* %25, %struct.node* %26, %struct.property* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %112

29:                                               ; preds = %18
  %30 = load %struct.node*, %struct.node** %6, align 8
  %31 = getelementptr inbounds %struct.node, %struct.node* %30, i32 0, i32 1
  %32 = load %struct.node*, %struct.node** %31, align 8
  %33 = call i32 @node_addr_cells(%struct.node* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.node*, %struct.node** %6, align 8
  %35 = getelementptr inbounds %struct.node, %struct.node* %34, i32 0, i32 1
  %36 = load %struct.node*, %struct.node** %35, align 8
  %37 = call i32 @node_size_cells(%struct.node* %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.node*, %struct.node** %6, align 8
  %39 = call i32 @node_addr_cells(%struct.node* %38)
  store i32 %39, i32* %8, align 4
  %40 = load %struct.node*, %struct.node** %6, align 8
  %41 = call i32 @node_size_cells(%struct.node* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load %struct.property*, %struct.property** %7, align 8
  %51 = getelementptr inbounds %struct.property, %struct.property* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %90

55:                                               ; preds = %29
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load %struct.check*, %struct.check** %4, align 8
  %61 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %62 = load %struct.node*, %struct.node** %6, align 8
  %63 = load %struct.property*, %struct.property** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.node*, %struct.node** %6, align 8
  %66 = getelementptr inbounds %struct.node, %struct.node* %65, i32 0, i32 1
  %67 = load %struct.node*, %struct.node** %66, align 8
  %68 = getelementptr inbounds %struct.node, %struct.node* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %60, %struct.dt_info* %61, %struct.node* %62, %struct.property* %63, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32 %64, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %59, %55
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %89

76:                                               ; preds = %72
  %77 = load %struct.check*, %struct.check** %4, align 8
  %78 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %79 = load %struct.node*, %struct.node** %6, align 8
  %80 = load %struct.property*, %struct.property** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.node*, %struct.node** %6, align 8
  %83 = getelementptr inbounds %struct.node, %struct.node* %82, i32 0, i32 1
  %84 = load %struct.node*, %struct.node** %83, align 8
  %85 = getelementptr inbounds %struct.node, %struct.node* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %77, %struct.dt_info* %78, %struct.node* %79, %struct.property* %80, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %76, %72
  br label %112

90:                                               ; preds = %29
  %91 = load %struct.property*, %struct.property** %7, align 8
  %92 = getelementptr inbounds %struct.property, %struct.property* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %12, align 4
  %96 = srem i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load %struct.check*, %struct.check** %4, align 8
  %100 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %101 = load %struct.node*, %struct.node** %6, align 8
  %102 = load %struct.property*, %struct.property** %7, align 8
  %103 = load %struct.property*, %struct.property** %7, align 8
  %104 = getelementptr inbounds %struct.property, %struct.property* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %99, %struct.dt_info* %100, %struct.node* %101, %struct.property* %102, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %98, %90
  br label %112

112:                                              ; preds = %17, %23, %111, %89
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) #1

declare dso_local i32 @node_addr_cells(%struct.node*) #1

declare dso_local i32 @node_size_cells(%struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
