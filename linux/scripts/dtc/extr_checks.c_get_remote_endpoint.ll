; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_get_remote_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_get_remote_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"remote-endpoint\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"graph phandle is not valid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.check*, %struct.dt_info*, %struct.node*)* @get_remote_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @get_remote_endpoint(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.node*, align 8
  %5 = alloca %struct.check*, align 8
  %6 = alloca %struct.dt_info*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.node*, align 8
  %10 = alloca %struct.property*, align 8
  store %struct.check* %0, %struct.check** %5, align 8
  store %struct.dt_info* %1, %struct.dt_info** %6, align 8
  store %struct.node* %2, %struct.node** %7, align 8
  %11 = load %struct.node*, %struct.node** %7, align 8
  %12 = call %struct.property* @get_property(%struct.node* %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.property* %12, %struct.property** %10, align 8
  %13 = load %struct.property*, %struct.property** %10, align 8
  %14 = icmp ne %struct.property* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.node* null, %struct.node** %4, align 8
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.property*, %struct.property** %10, align 8
  %18 = call i32 @propval_cell(%struct.property* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %16
  store %struct.node* null, %struct.node** %4, align 8
  br label %41

25:                                               ; preds = %21
  %26 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %27 = getelementptr inbounds %struct.dt_info, %struct.dt_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call %struct.node* @get_node_by_phandle(i32 %28, i32 %29)
  store %struct.node* %30, %struct.node** %9, align 8
  %31 = load %struct.node*, %struct.node** %9, align 8
  %32 = icmp ne %struct.node* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = load %struct.check*, %struct.check** %5, align 8
  %35 = load %struct.dt_info*, %struct.dt_info** %6, align 8
  %36 = load %struct.node*, %struct.node** %7, align 8
  %37 = load %struct.property*, %struct.property** %10, align 8
  %38 = call i32 @FAIL_PROP(%struct.check* %34, %struct.dt_info* %35, %struct.node* %36, %struct.property* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %33, %25
  %40 = load %struct.node*, %struct.node** %9, align 8
  store %struct.node* %40, %struct.node** %4, align 8
  br label %41

41:                                               ; preds = %39, %24, %15
  %42 = load %struct.node*, %struct.node** %4, align 8
  ret %struct.node* %42
}

declare dso_local %struct.property* @get_property(%struct.node*, i8*) #1

declare dso_local i32 @propval_cell(%struct.property*) #1

declare dso_local %struct.node* @get_node_by_phandle(i32, i32) #1

declare dso_local i32 @FAIL_PROP(%struct.check*, %struct.dt_info*, %struct.node*, %struct.property*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
