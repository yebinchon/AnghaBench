; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_set_node_width.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-c2c.c_set_node_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.c2c_dimension = type { i32 }
%struct.c2c_hist_entry = type { i32* }

@c2c = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@dim_dcacheline_node = common dso_local global %struct.c2c_dimension zeroinitializer, align 4
@dim_offset_node = common dso_local global %struct.c2c_dimension zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c2c_hist_entry*, i32)* @set_node_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_node_width(%struct.c2c_hist_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.c2c_hist_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c2c_dimension*, align 8
  store %struct.c2c_hist_entry* %0, %struct.c2c_hist_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c2c_hist_entry*, %struct.c2c_hist_entry** %3, align 8
  %7 = getelementptr inbounds %struct.c2c_hist_entry, %struct.c2c_hist_entry* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @c2c, i32 0, i32 0), %8
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, %struct.c2c_dimension* @dim_dcacheline_node, %struct.c2c_dimension* @dim_offset_node
  store %struct.c2c_dimension* %11, %struct.c2c_dimension** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.c2c_dimension*, %struct.c2c_dimension** %5, align 8
  %14 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sgt i32 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.c2c_dimension*, %struct.c2c_dimension** %5, align 8
  %20 = getelementptr inbounds %struct.c2c_dimension, %struct.c2c_dimension* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
