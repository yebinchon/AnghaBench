; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_opt_simple_greedy_fillup_hints.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_opt_simple_greedy_fillup_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_hints = type { i32 }
%struct.objagg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.objagg_hints_node = type { i32 }
%struct.objagg_tmp_graph = type { i32, %struct.objagg_tmp_node* }
%struct.objagg_tmp_node = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg_hints*, %struct.objagg*)* @objagg_opt_simple_greedy_fillup_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_opt_simple_greedy_fillup_hints(%struct.objagg_hints* %0, %struct.objagg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.objagg_hints*, align 8
  %5 = alloca %struct.objagg*, align 8
  %6 = alloca %struct.objagg_hints_node*, align 8
  %7 = alloca %struct.objagg_hints_node*, align 8
  %8 = alloca %struct.objagg_tmp_graph*, align 8
  %9 = alloca %struct.objagg_tmp_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.objagg_hints* %0, %struct.objagg_hints** %4, align 8
  store %struct.objagg* %1, %struct.objagg** %5, align 8
  %13 = load %struct.objagg*, %struct.objagg** %5, align 8
  %14 = call %struct.objagg_tmp_graph* @objagg_tmp_graph_create(%struct.objagg* %13)
  store %struct.objagg_tmp_graph* %14, %struct.objagg_tmp_graph** %8, align 8
  %15 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %8, align 8
  %16 = icmp ne %struct.objagg_tmp_graph* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %107

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %101, %20
  %22 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %8, align 8
  %23 = call i32 @objagg_tmp_graph_node_max_weight(%struct.objagg_tmp_graph* %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %102

25:                                               ; preds = %21
  %26 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %8, align 8
  %27 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %26, i32 0, i32 1
  %28 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %28, i64 %30
  store %struct.objagg_tmp_node* %31, %struct.objagg_tmp_node** %9, align 8
  %32 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %9, align 8
  %33 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.objagg_hints*, %struct.objagg_hints** %4, align 8
  %35 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %9, align 8
  %36 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.objagg*, %struct.objagg** %5, align 8
  %39 = getelementptr inbounds %struct.objagg, %struct.objagg* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.objagg_hints_node* @objagg_hints_node_create(%struct.objagg_hints* %34, i32 %37, i32 %42, %struct.objagg_hints_node* null)
  store %struct.objagg_hints_node* %43, %struct.objagg_hints_node** %6, align 8
  %44 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %6, align 8
  %45 = call i64 @IS_ERR(%struct.objagg_hints_node* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %25
  %48 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %6, align 8
  %49 = call i32 @PTR_ERR(%struct.objagg_hints_node* %48)
  store i32 %49, i32* %12, align 4
  br label %103

50:                                               ; preds = %25
  %51 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %6, align 8
  store %struct.objagg_hints_node* %51, %struct.objagg_hints_node** %7, align 8
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %98, %50
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %8, align 8
  %55 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %52
  %59 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @objagg_tmp_graph_is_edge(%struct.objagg_tmp_graph* %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  br label %98

65:                                               ; preds = %58
  %66 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %8, align 8
  %67 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %66, i32 0, i32 1
  %68 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %68, i64 %70
  store %struct.objagg_tmp_node* %71, %struct.objagg_tmp_node** %9, align 8
  %72 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %9, align 8
  %73 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %98

77:                                               ; preds = %65
  %78 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %9, align 8
  %79 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.objagg_hints*, %struct.objagg_hints** %4, align 8
  %81 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %9, align 8
  %82 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.objagg*, %struct.objagg** %5, align 8
  %85 = getelementptr inbounds %struct.objagg, %struct.objagg* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %7, align 8
  %90 = call %struct.objagg_hints_node* @objagg_hints_node_create(%struct.objagg_hints* %80, i32 %83, i32 %88, %struct.objagg_hints_node* %89)
  store %struct.objagg_hints_node* %90, %struct.objagg_hints_node** %6, align 8
  %91 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %6, align 8
  %92 = call i64 @IS_ERR(%struct.objagg_hints_node* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %77
  %95 = load %struct.objagg_hints_node*, %struct.objagg_hints_node** %6, align 8
  %96 = call i32 @PTR_ERR(%struct.objagg_hints_node* %95)
  store i32 %96, i32* %12, align 4
  br label %103

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %76, %64
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %52

101:                                              ; preds = %52
  br label %21

102:                                              ; preds = %21
  store i32 0, i32* %12, align 4
  br label %103

103:                                              ; preds = %102, %94, %47
  %104 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %8, align 8
  %105 = call i32 @objagg_tmp_graph_destroy(%struct.objagg_tmp_graph* %104)
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %17
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.objagg_tmp_graph* @objagg_tmp_graph_create(%struct.objagg*) #1

declare dso_local i32 @objagg_tmp_graph_node_max_weight(%struct.objagg_tmp_graph*) #1

declare dso_local %struct.objagg_hints_node* @objagg_hints_node_create(%struct.objagg_hints*, i32, i32, %struct.objagg_hints_node*) #1

declare dso_local i64 @IS_ERR(%struct.objagg_hints_node*) #1

declare dso_local i32 @PTR_ERR(%struct.objagg_hints_node*) #1

declare dso_local i32 @objagg_tmp_graph_is_edge(%struct.objagg_tmp_graph*, i32, i32) #1

declare dso_local i32 @objagg_tmp_graph_destroy(%struct.objagg_tmp_graph*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
