; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_avoid_default_addr_size.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_avoid_default_addr_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Relying on default #address-cells value\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Relying on default #size-cells value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_avoid_default_addr_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_avoid_default_addr_size(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.property*, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = getelementptr inbounds %struct.node, %struct.node* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %49

14:                                               ; preds = %3
  %15 = load %struct.node*, %struct.node** %6, align 8
  %16 = call %struct.property* @get_property(%struct.node* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %16, %struct.property** %7, align 8
  %17 = load %struct.node*, %struct.node** %6, align 8
  %18 = call %struct.property* @get_property(%struct.node* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.property* %18, %struct.property** %8, align 8
  %19 = load %struct.property*, %struct.property** %7, align 8
  %20 = icmp ne %struct.property* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load %struct.property*, %struct.property** %8, align 8
  %23 = icmp ne %struct.property* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %49

25:                                               ; preds = %21, %14
  %26 = load %struct.node*, %struct.node** %6, align 8
  %27 = getelementptr inbounds %struct.node, %struct.node* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.check*, %struct.check** %4, align 8
  %34 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %35 = load %struct.node*, %struct.node** %6, align 8
  %36 = call i32 @FAIL(%struct.check* %33, %struct.dt_info* %34, %struct.node* %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.node*, %struct.node** %6, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.check*, %struct.check** %4, align 8
  %46 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %47 = load %struct.node*, %struct.node** %6, align 8
  %48 = call i32 @FAIL(%struct.check* %45, %struct.dt_info* %46, %struct.node* %47, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %13, %24, %44, %37
  ret void
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
