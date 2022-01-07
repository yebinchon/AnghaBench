; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c___del_port_router.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c___del_port_router.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RTM_DELMDB = common dso_local global i32 0, align 4
@MDB_RTR_TYPE_TEMP = common dso_local global i64 0, align 8
@MDB_RTR_TYPE_TEMP_QUERY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*)* @__del_port_router to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__del_port_router(%struct.net_bridge_port* %0) #0 {
  %2 = alloca %struct.net_bridge_port*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %2, align 8
  %3 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %4 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %3, i32 0, i32 2
  %5 = call i64 @hlist_unhashed(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %31

8:                                                ; preds = %1
  %9 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %10 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %9, i32 0, i32 2
  %11 = call i32 @hlist_del_init_rcu(i32* %10)
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %18 = load i32, i32* @RTM_DELMDB, align 4
  %19 = call i32 @br_rtr_notify(i32 %16, %struct.net_bridge_port* %17, i32 %18)
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %21 = call i32 @br_port_mc_router_state_change(%struct.net_bridge_port* %20, i32 0)
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %23 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MDB_RTR_TYPE_TEMP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %8
  %28 = load i64, i64* @MDB_RTR_TYPE_TEMP_QUERY, align 8
  %29 = load %struct.net_bridge_port*, %struct.net_bridge_port** %2, align 8
  %30 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %7, %27, %8
  ret void
}

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_del_init_rcu(i32*) #1

declare dso_local i32 @br_rtr_notify(i32, %struct.net_bridge_port*, i32) #1

declare dso_local i32 @br_port_mc_router_state_change(%struct.net_bridge_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
