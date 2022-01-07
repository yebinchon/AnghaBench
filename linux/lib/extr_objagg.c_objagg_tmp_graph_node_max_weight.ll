; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_tmp_graph_node_max_weight.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_tmp_graph_node_max_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_tmp_graph = type { i32, %struct.objagg_tmp_node* }
%struct.objagg_tmp_node = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg_tmp_graph*)* @objagg_tmp_graph_node_max_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_tmp_graph_node_max_weight(%struct.objagg_tmp_graph* %0) #0 {
  %2 = alloca %struct.objagg_tmp_graph*, align 8
  %3 = alloca %struct.objagg_tmp_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.objagg_tmp_graph* %0, %struct.objagg_tmp_graph** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %37, %1
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %2, align 8
  %11 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %40

14:                                               ; preds = %8
  %15 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %2, align 8
  %16 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %15, i32 0, i32 1
  %17 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %17, i64 %19
  store %struct.objagg_tmp_node* %20, %struct.objagg_tmp_node** %3, align 8
  %21 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %3, align 8
  %22 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %37

26:                                               ; preds = %14
  %27 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %2, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @objagg_tmp_graph_node_weight(%struct.objagg_tmp_graph* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp uge i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36, %25
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %8

40:                                               ; preds = %8
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @objagg_tmp_graph_node_weight(%struct.objagg_tmp_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
