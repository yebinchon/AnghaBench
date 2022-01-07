; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_utilmachine.h_machine__kernel_maps.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_utilmachine.h_machine__kernel_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maps = type { i32 }
%struct.machine = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.maps }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.maps* (%struct.machine*)* @machine__kernel_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.maps* @machine__kernel_maps(%struct.machine* %0) #0 {
  %2 = alloca %struct.machine*, align 8
  store %struct.machine* %0, %struct.machine** %2, align 8
  %3 = load %struct.machine*, %struct.machine** %2, align 8
  %4 = getelementptr inbounds %struct.machine, %struct.machine* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  ret %struct.maps* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
