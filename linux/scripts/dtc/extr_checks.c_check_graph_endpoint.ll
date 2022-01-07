; ModuleID = '/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_graph_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/dtc/extr_checks.c_check_graph_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.check = type { i32 }
%struct.dt_info = type { i32 }
%struct.node = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@graph_port_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"endpoint\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"graph endpoint node name should be 'endpoint'\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"graph connection to node '%s' is not bidirectional\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.check*, %struct.dt_info*, %struct.node*)* @check_graph_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_graph_endpoint(%struct.check* %0, %struct.dt_info* %1, %struct.node* %2) #0 {
  %4 = alloca %struct.check*, align 8
  %5 = alloca %struct.dt_info*, align 8
  %6 = alloca %struct.node*, align 8
  %7 = alloca %struct.node*, align 8
  store %struct.check* %0, %struct.check** %4, align 8
  store %struct.dt_info* %1, %struct.dt_info** %5, align 8
  store %struct.node* %2, %struct.node** %6, align 8
  %8 = load %struct.node*, %struct.node** %6, align 8
  %9 = getelementptr inbounds %struct.node, %struct.node* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.node*, %struct.node** %6, align 8
  %14 = getelementptr inbounds %struct.node, %struct.node* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @graph_port_bus
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %3
  br label %61

20:                                               ; preds = %12
  %21 = load %struct.node*, %struct.node** %6, align 8
  %22 = getelementptr inbounds %struct.node, %struct.node* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.node*, %struct.node** %6, align 8
  %25 = getelementptr inbounds %struct.node, %struct.node* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strprefixeq(i32 %23, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.check*, %struct.check** %4, align 8
  %31 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %32 = load %struct.node*, %struct.node** %6, align 8
  %33 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %30, %struct.dt_info* %31, %struct.node* %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %29, %20
  %35 = load %struct.check*, %struct.check** %4, align 8
  %36 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %37 = load %struct.node*, %struct.node** %6, align 8
  %38 = call i32 @check_graph_reg(%struct.check* %35, %struct.dt_info* %36, %struct.node* %37)
  %39 = load %struct.check*, %struct.check** %4, align 8
  %40 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %41 = load %struct.node*, %struct.node** %6, align 8
  %42 = call %struct.node* @get_remote_endpoint(%struct.check* %39, %struct.dt_info* %40, %struct.node* %41)
  store %struct.node* %42, %struct.node** %7, align 8
  %43 = load %struct.node*, %struct.node** %7, align 8
  %44 = icmp ne %struct.node* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %61

46:                                               ; preds = %34
  %47 = load %struct.check*, %struct.check** %4, align 8
  %48 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %49 = load %struct.node*, %struct.node** %7, align 8
  %50 = call %struct.node* @get_remote_endpoint(%struct.check* %47, %struct.dt_info* %48, %struct.node* %49)
  %51 = load %struct.node*, %struct.node** %6, align 8
  %52 = icmp ne %struct.node* %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load %struct.check*, %struct.check** %4, align 8
  %55 = load %struct.dt_info*, %struct.dt_info** %5, align 8
  %56 = load %struct.node*, %struct.node** %6, align 8
  %57 = load %struct.node*, %struct.node** %7, align 8
  %58 = getelementptr inbounds %struct.node, %struct.node* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) @FAIL(%struct.check* %54, %struct.dt_info* %55, %struct.node* %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %19, %45, %53, %46
  ret void
}

declare dso_local i32 @strprefixeq(i32, i32, i8*) #1

declare dso_local i32 @FAIL(%struct.check*, %struct.dt_info*, %struct.node*, i8*, ...) #1

declare dso_local i32 @check_graph_reg(%struct.check*, %struct.dt_info*, %struct.node*) #1

declare dso_local %struct.node* @get_remote_endpoint(%struct.check*, %struct.dt_info*, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
