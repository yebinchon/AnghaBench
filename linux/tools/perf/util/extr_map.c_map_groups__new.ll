; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_groups = type { i32 }
%struct.machine = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.map_groups* @map_groups__new(%struct.machine* %0) #0 {
  %2 = alloca %struct.machine*, align 8
  %3 = alloca %struct.map_groups*, align 8
  store %struct.machine* %0, %struct.machine** %2, align 8
  %4 = call %struct.map_groups* @zalloc(i32 4)
  store %struct.map_groups* %4, %struct.map_groups** %3, align 8
  %5 = load %struct.map_groups*, %struct.map_groups** %3, align 8
  %6 = icmp ne %struct.map_groups* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.map_groups*, %struct.map_groups** %3, align 8
  %9 = load %struct.machine*, %struct.machine** %2, align 8
  %10 = call i32 @map_groups__init(%struct.map_groups* %8, %struct.machine* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.map_groups*, %struct.map_groups** %3, align 8
  ret %struct.map_groups* %12
}

declare dso_local %struct.map_groups* @zalloc(i32) #1

declare dso_local i32 @map_groups__init(%struct.map_groups*, %struct.machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
