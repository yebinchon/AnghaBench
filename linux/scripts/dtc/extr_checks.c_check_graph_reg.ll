; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_graph_reg.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_graph_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.property = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"graph node malformed 'reg' property\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"graph node unit address error, expected \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"graph node '#address-cells' is %d, must be 1\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"graph node '#size-cells' is %d, must be 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_graph_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_graph_reg(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca [9 x i8], align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %10 = load %struct.node*, %struct.node** %6, align 8
  %11 = call i8* @get_unitname(%struct.node* %10)
  store i8* %11, i8** %8, align 8
  %12 = load %struct.node*, %struct.node** %6, align 8
  %13 = call %struct.property* @get_property(%struct.node* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %13, %struct.property** %9, align 8
  %14 = load %struct.property*, %struct.property** %9, align 8
  %15 = icmp ne %struct.property* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %3
  br label %91

20:                                               ; preds = %16
  %21 = load %struct.property*, %struct.property** %9, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.property*, %struct.property** %9, align 8
  %28 = getelementptr inbounds %struct.property, %struct.property* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %38, label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.check*, %struct.check** %4, align 8
  %35 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %36 = load %struct.node*, %struct.node** %6, align 8
  %37 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %34, %struct.dt_info* %35, %struct.node* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %91

38:                                               ; preds = %26
  %39 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %40 = load %struct.property*, %struct.property** %9, align 8
  %41 = call i32 @propval_cell(%struct.property* %40)
  %42 = call i32 @snprintf(i8* %39, i32 9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %45 = call i32 @streq(i8* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %struct.check*, %struct.check** %4, align 8
  %49 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %50 = load %struct.node*, %struct.node** %6, align 8
  %51 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %52 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %48, %struct.dt_info* %49, %struct.node* %50, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %47, %38
  %54 = load %struct.node*, %struct.node** %6, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %72

60:                                               ; preds = %53
  %61 = load %struct.check*, %struct.check** %4, align 8
  %62 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %63 = load %struct.node*, %struct.node** %6, align 8
  %64 = load %struct.node*, %struct.node** %6, align 8
  %65 = call %struct.property* @get_property(%struct.node* %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.node*, %struct.node** %6, align 8
  %67 = getelementptr inbounds %struct.node, %struct.node* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @FAIL_PROP(%struct.check* %61, %struct.dt_info* %62, %struct.node* %63, %struct.property* %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %60, %53
  %73 = load %struct.node*, %struct.node** %6, align 8
  %74 = getelementptr inbounds %struct.node, %struct.node* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %72
  %80 = load %struct.check*, %struct.check** %4, align 8
  %81 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %82 = load %struct.node*, %struct.node** %6, align 8
  %83 = load %struct.node*, %struct.node** %6, align 8
  %84 = call %struct.property* @get_property(%struct.node* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %85 = load %struct.node*, %struct.node** %6, align 8
  %86 = getelementptr inbounds %struct.node, %struct.node* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @FAIL_PROP(%struct.check* %80, %struct.dt_info* %81, %struct.node* %82, %struct.property* %84, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %19, %33, %79, %72
  ret void
}

declare dso_local i8* @get_unitname(%struct.node*) #1

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @propval_cell(%struct.property*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
