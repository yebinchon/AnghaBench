; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_router_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_router_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, i32, %struct.net_bridge* }
%struct.net_bridge = type { i32 }
%struct.timer_list = type { i32 }

@multicast_router_timer = common dso_local global i32 0, align 4
@MDB_RTR_TYPE_DISABLED = common dso_local global i64 0, align 8
@MDB_RTR_TYPE_PERM = common dso_local global i64 0, align 8
@port = common dso_local global %struct.net_bridge_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @br_multicast_router_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_router_expired(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.net_bridge*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %6 = ptrtoint %struct.net_bridge_port* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @multicast_router_timer, align 4
  %9 = call %struct.net_bridge_port* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.net_bridge_port* %9, %struct.net_bridge_port** %3, align 8
  %10 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %11 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %10, i32 0, i32 2
  %12 = load %struct.net_bridge*, %struct.net_bridge** %11, align 8
  store %struct.net_bridge* %12, %struct.net_bridge** %4, align 8
  %13 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %17 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MDB_RTR_TYPE_DISABLED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %1
  %22 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %23 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MDB_RTR_TYPE_PERM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %29 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %28, i32 0, i32 1
  %30 = call i64 @timer_pending(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %21, %1
  br label %36

33:                                               ; preds = %27
  %34 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %35 = call i32 @__del_port_router(%struct.net_bridge_port* %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %38 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local %struct.net_bridge_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @__del_port_router(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
