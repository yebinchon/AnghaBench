; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_update_notify.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_neighbour.c_neigh_update_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neighbour = type { i32 }

@NETEVENT_NEIGH_UPDATE = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.neighbour*, i32)* @neigh_update_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_update_notify(%struct.neighbour* %0, i32 %1) #0 {
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca i32, align 4
  store %struct.neighbour* %0, %struct.neighbour** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @NETEVENT_NEIGH_UPDATE, align 4
  %6 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %7 = call i32 @call_netevent_notifiers(i32 %5, %struct.neighbour* %6)
  %8 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %9 = load i32, i32* @RTM_NEWNEIGH, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @__neigh_notify(%struct.neighbour* %8, i32 %9, i32 0, i32 %10)
  ret void
}

declare dso_local i32 @call_netevent_notifiers(i32, %struct.neighbour*) #1

declare dso_local i32 @__neigh_notify(%struct.neighbour*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
