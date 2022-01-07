; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_bus.c_j1939_ecu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_ecu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @j1939_ecu_unmap(%struct.j1939_ecu* %0) #0 {
  %2 = alloca %struct.j1939_ecu*, align 8
  store %struct.j1939_ecu* %0, %struct.j1939_ecu** %2, align 8
  %3 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %4 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @write_lock_bh(i32* %6)
  %8 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %9 = call i32 @j1939_ecu_unmap_locked(%struct.j1939_ecu* %8)
  %10 = load %struct.j1939_ecu*, %struct.j1939_ecu** %2, align 8
  %11 = getelementptr inbounds %struct.j1939_ecu, %struct.j1939_ecu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @write_unlock_bh(i32* %13)
  ret void
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @j1939_ecu_unmap_locked(%struct.j1939_ecu*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
