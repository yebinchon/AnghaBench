; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_unit_address_vs_reg.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_unit_address_vs_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32 }
%struct.property = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"__overlay__\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"node has a reg or ranges property, but no unit name\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"node has a unit name, but no reg property\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_unit_address_vs_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_unit_address_vs_reg(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %9 = load %struct.node*, %struct.node** %6, align 8
  %10 = call i8* @get_unitname(%struct.node* %9)
  store i8* %10, i8** %7, align 8
  %11 = load %struct.node*, %struct.node** %6, align 8
  %12 = call %struct.property* @get_property(%struct.node* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %12, %struct.property** %8, align 8
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = call i64 @get_subnode(%struct.node* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %58

17:                                               ; preds = %3
  %18 = load %struct.property*, %struct.property** %8, align 8
  %19 = icmp ne %struct.property* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = load %struct.node*, %struct.node** %6, align 8
  %22 = call %struct.property* @get_property(%struct.node* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store %struct.property* %22, %struct.property** %8, align 8
  %23 = load %struct.property*, %struct.property** %8, align 8
  %24 = icmp ne %struct.property* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.property*, %struct.property** %8, align 8
  %27 = getelementptr inbounds %struct.property, %struct.property* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store %struct.property* null, %struct.property** %8, align 8
  br label %32

32:                                               ; preds = %31, %25, %20
  br label %33

33:                                               ; preds = %32, %17
  %34 = load %struct.property*, %struct.property** %8, align 8
  %35 = icmp ne %struct.property* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = icmp ne i8 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load %struct.check*, %struct.check** %4, align 8
  %43 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %44 = load %struct.node*, %struct.node** %6, align 8
  %45 = call i32 @FAIL(%struct.check* %42, %struct.dt_info* %43, %struct.node* %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36
  br label %58

47:                                               ; preds = %33
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.check*, %struct.check** %4, align 8
  %54 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %55 = load %struct.node*, %struct.node** %6, align 8
  %56 = call i32 @FAIL(%struct.check* %53, %struct.dt_info* %54, %struct.node* %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %52, %47
  br label %58

58:                                               ; preds = %16, %57, %46
  ret void
}

declare dso_local i8* @get_unitname(%struct.node*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i64 @get_subnode(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
