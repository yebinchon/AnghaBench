; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_tmp_graph_node_weight.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_objagg.c_objagg_tmp_graph_node_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objagg_tmp_graph = type { i32, %struct.objagg_tmp_node* }
%struct.objagg_tmp_node = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.objagg_tmp_graph*, i32)* @objagg_tmp_graph_node_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @objagg_tmp_graph_node_weight(%struct.objagg_tmp_graph* %0, i32 %1) #0 {
  %3 = alloca %struct.objagg_tmp_graph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.objagg_tmp_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.objagg_tmp_graph* %0, %struct.objagg_tmp_graph** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %3, align 8
  %9 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %8, i32 0, i32 1
  %10 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %10, i64 %12
  store %struct.objagg_tmp_node* %13, %struct.objagg_tmp_node** %5, align 8
  %14 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %5, align 8
  %15 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %54, %2
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %3, align 8
  %23 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  %27 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @objagg_tmp_graph_is_edge(%struct.objagg_tmp_graph* %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %54

33:                                               ; preds = %26
  %34 = load %struct.objagg_tmp_graph*, %struct.objagg_tmp_graph** %3, align 8
  %35 = getelementptr inbounds %struct.objagg_tmp_graph, %struct.objagg_tmp_graph* %34, i32 0, i32 1
  %36 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %36, i64 %38
  store %struct.objagg_tmp_node* %39, %struct.objagg_tmp_node** %5, align 8
  %40 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %5, align 8
  %41 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %54

45:                                               ; preds = %33
  %46 = load %struct.objagg_tmp_node*, %struct.objagg_tmp_node** %5, align 8
  %47 = getelementptr inbounds %struct.objagg_tmp_node, %struct.objagg_tmp_node* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %45, %44, %32
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @objagg_tmp_graph_is_edge(%struct.objagg_tmp_graph*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
