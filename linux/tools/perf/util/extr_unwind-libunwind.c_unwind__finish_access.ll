; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__finish_access.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__finish_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_groups = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.map_groups*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unwind__finish_access(%struct.map_groups* %0) #0 {
  %2 = alloca %struct.map_groups*, align 8
  store %struct.map_groups* %0, %struct.map_groups** %2, align 8
  %3 = load %struct.map_groups*, %struct.map_groups** %2, align 8
  %4 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.map_groups*, %struct.map_groups** %2, align 8
  %9 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.map_groups*)*, i32 (%struct.map_groups*)** %11, align 8
  %13 = load %struct.map_groups*, %struct.map_groups** %2, align 8
  %14 = call i32 %12(%struct.map_groups* %13)
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
