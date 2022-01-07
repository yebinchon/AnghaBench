; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_host_leave.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_host_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_mdb_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RTM_DELMDB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_multicast_host_leave(%struct.net_bridge_mdb_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.net_bridge_mdb_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.net_bridge_mdb_entry* %0, %struct.net_bridge_mdb_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %6 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  %11 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %12 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %17 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_bridge_mdb_entry*, %struct.net_bridge_mdb_entry** %3, align 8
  %22 = getelementptr inbounds %struct.net_bridge_mdb_entry, %struct.net_bridge_mdb_entry* %21, i32 0, i32 1
  %23 = load i32, i32* @RTM_DELMDB, align 4
  %24 = call i32 @br_mdb_notify(i32 %20, i32* null, i32* %22, i32 %23, i32 0)
  br label %25

25:                                               ; preds = %9, %15, %10
  ret void
}

declare dso_local i32 @br_mdb_notify(i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
