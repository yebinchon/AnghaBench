; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__find_symbol_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_map.c_map_groups__find_symbol_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map_groups = type { i32 }
%struct.map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symbol* @map_groups__find_symbol_by_name(%struct.map_groups* %0, i8* %1, %struct.map** %2) #0 {
  %4 = alloca %struct.map_groups*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.map**, align 8
  store %struct.map_groups* %0, %struct.map_groups** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.map** %2, %struct.map*** %6, align 8
  %7 = load %struct.map_groups*, %struct.map_groups** %4, align 8
  %8 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %7, i32 0, i32 0
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.map**, %struct.map*** %6, align 8
  %11 = call %struct.symbol* @maps__find_symbol_by_name(i32* %8, i8* %9, %struct.map** %10)
  ret %struct.symbol* %11
}

declare dso_local %struct.symbol* @maps__find_symbol_by_name(i32*, i8*, %struct.map**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
