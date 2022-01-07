; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__register_ops.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_unwind-libunwind.c_unwind__register_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_groups = type { %struct.unwind_libunwind_ops* }
%struct.unwind_libunwind_ops = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_groups*, %struct.unwind_libunwind_ops*)* @unwind__register_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unwind__register_ops(%struct.map_groups* %0, %struct.unwind_libunwind_ops* %1) #0 {
  %3 = alloca %struct.map_groups*, align 8
  %4 = alloca %struct.unwind_libunwind_ops*, align 8
  store %struct.map_groups* %0, %struct.map_groups** %3, align 8
  store %struct.unwind_libunwind_ops* %1, %struct.unwind_libunwind_ops** %4, align 8
  %5 = load %struct.unwind_libunwind_ops*, %struct.unwind_libunwind_ops** %4, align 8
  %6 = load %struct.map_groups*, %struct.map_groups** %3, align 8
  %7 = getelementptr inbounds %struct.map_groups, %struct.map_groups* %6, i32 0, i32 0
  store %struct.unwind_libunwind_ops* %5, %struct.unwind_libunwind_ops** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
