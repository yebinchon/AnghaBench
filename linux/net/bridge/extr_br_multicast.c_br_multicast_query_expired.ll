; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_query_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_query_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64, i32 }
%struct.bridge_mcast_own_query = type { i64 }
%struct.bridge_mcast_querier = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.bridge_mcast_own_query*, %struct.bridge_mcast_querier*)* @br_multicast_query_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_query_expired(%struct.net_bridge* %0, %struct.bridge_mcast_own_query* %1, %struct.bridge_mcast_querier* %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.bridge_mcast_own_query*, align 8
  %6 = alloca %struct.bridge_mcast_querier*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.bridge_mcast_own_query* %1, %struct.bridge_mcast_own_query** %5, align 8
  store %struct.bridge_mcast_querier* %2, %struct.bridge_mcast_querier** %6, align 8
  %7 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %8 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %5, align 8
  %11 = getelementptr inbounds %struct.bridge_mcast_own_query, %struct.bridge_mcast_own_query* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %14 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %5, align 8
  %19 = getelementptr inbounds %struct.bridge_mcast_own_query, %struct.bridge_mcast_own_query* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %17, %3
  %23 = load %struct.bridge_mcast_querier*, %struct.bridge_mcast_querier** %6, align 8
  %24 = getelementptr inbounds %struct.bridge_mcast_querier, %struct.bridge_mcast_querier* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RCU_INIT_POINTER(i32 %25, i32* null)
  %27 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %28 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %5, align 8
  %29 = call i32 @br_multicast_send_query(%struct.net_bridge* %27, i32* null, %struct.bridge_mcast_own_query* %28)
  %30 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %31 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %30, i32 0, i32 1
  %32 = call i32 @spin_unlock(i32* %31)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @br_multicast_send_query(%struct.net_bridge*, i32*, %struct.bridge_mcast_own_query*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
