; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_port_query_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_port_query_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge_port = type { i64, %struct.net_bridge* }
%struct.net_bridge = type { i64, i32 }
%struct.bridge_mcast_own_query = type { i64 }

@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@BR_STATE_BLOCKING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge_port*, %struct.bridge_mcast_own_query*)* @br_multicast_port_query_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_port_query_expired(%struct.net_bridge_port* %0, %struct.bridge_mcast_own_query* %1) #0 {
  %3 = alloca %struct.net_bridge_port*, align 8
  %4 = alloca %struct.bridge_mcast_own_query*, align 8
  %5 = alloca %struct.net_bridge*, align 8
  store %struct.net_bridge_port* %0, %struct.net_bridge_port** %3, align 8
  store %struct.bridge_mcast_own_query* %1, %struct.bridge_mcast_own_query** %4, align 8
  %6 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %7 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %6, i32 0, i32 1
  %8 = load %struct.net_bridge*, %struct.net_bridge** %7, align 8
  store %struct.net_bridge* %8, %struct.net_bridge** %5, align 8
  %9 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %10 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %9, i32 0, i32 1
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %13 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BR_STATE_DISABLED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %19 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BR_STATE_BLOCKING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %2
  br label %44

24:                                               ; preds = %17
  %25 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %4, align 8
  %26 = getelementptr inbounds %struct.bridge_mcast_own_query, %struct.bridge_mcast_own_query* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %29 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %4, align 8
  %34 = getelementptr inbounds %struct.bridge_mcast_own_query, %struct.bridge_mcast_own_query* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  br label %37

37:                                               ; preds = %32, %24
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %39 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %38, i32 0, i32 1
  %40 = load %struct.net_bridge*, %struct.net_bridge** %39, align 8
  %41 = load %struct.net_bridge_port*, %struct.net_bridge_port** %3, align 8
  %42 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %4, align 8
  %43 = call i32 @br_multicast_send_query(%struct.net_bridge* %40, %struct.net_bridge_port* %41, %struct.bridge_mcast_own_query* %42)
  br label %44

44:                                               ; preds = %37, %23
  %45 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %46 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br_multicast_send_query(%struct.net_bridge*, %struct.net_bridge_port*, %struct.bridge_mcast_own_query*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
