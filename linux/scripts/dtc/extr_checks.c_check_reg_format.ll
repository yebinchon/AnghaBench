; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_reg_format.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_reg_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32 }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Root node has a \22reg\22 property\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"property is empty\00", align 1
@.str.3 = private unnamed_addr constant [81 x i8] c"property has invalid length (%d bytes) (#address-cells == %d, #size-cells == %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_reg_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_reg_format(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %11 = load %struct.node*, %struct.node** %6, align 8
  %12 = call %struct.property* @get_property(%struct.node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %12, %struct.property** %7, align 8
  %13 = load %struct.property*, %struct.property** %7, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %75

16:                                               ; preds = %3
  %17 = load %struct.node*, %struct.node** %6, align 8
  %18 = getelementptr inbounds %struct.node, %struct.node* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.check*, %struct.check** %4, align 8
  %23 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %24 = load %struct.node*, %struct.node** %6, align 8
  %25 = call i32 @FAIL(%struct.check* %22, %struct.dt_info* %23, %struct.node* %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %75

26:                                               ; preds = %16
  %27 = load %struct.property*, %struct.property** %7, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.check*, %struct.check** %4, align 8
  %34 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %35 = load %struct.node*, %struct.node** %6, align 8
  %36 = load %struct.property*, %struct.property** %7, align 8
  %37 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %33, %struct.dt_info* %34, %struct.node* %35, %struct.property* %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.node*, %struct.node** %6, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @node_addr_cells(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.node*, %struct.node** %6, align 8
  %44 = getelementptr inbounds %struct.node, %struct.node* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @node_size_cells(i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %38
  %56 = load %struct.property*, %struct.property** %7, align 8
  %57 = getelementptr inbounds %struct.property, %struct.property* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = srem i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %55, %38
  %64 = load %struct.check*, %struct.check** %4, align 8
  %65 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %66 = load %struct.node*, %struct.node** %6, align 8
  %67 = load %struct.property*, %struct.property** %7, align 8
  %68 = load %struct.property*, %struct.property** %7, align 8
  %69 = getelementptr inbounds %struct.property, %struct.property* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) @FAIL_PROP(%struct.check* %64, %struct.dt_info* %65, %struct.node* %66, %struct.property* %67, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %15, %21, %63, %55
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, ...) #1

declare dso_local i32 @node_addr_cells(i32) #1

declare dso_local i32 @node_size_cells(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
