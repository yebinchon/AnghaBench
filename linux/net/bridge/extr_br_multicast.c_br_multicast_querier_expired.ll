; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_querier_expired.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_querier_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, i32 }
%struct.bridge_mcast_own_query = type { i32 }

@BROPT_MULTICAST_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.bridge_mcast_own_query*)* @br_multicast_querier_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_querier_expired(%struct.net_bridge* %0, %struct.bridge_mcast_own_query* %1) #0 {
  %3 = alloca %struct.net_bridge*, align 8
  %4 = alloca %struct.bridge_mcast_own_query*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %3, align 8
  store %struct.bridge_mcast_own_query* %1, %struct.bridge_mcast_own_query** %4, align 8
  %5 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %6 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %9 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @netif_running(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %15 = load i32, i32* @BROPT_MULTICAST_ENABLED, align 4
  %16 = call i32 @br_opt_get(%struct.net_bridge* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %2
  br label %23

19:                                               ; preds = %13
  %20 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %21 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %4, align 8
  %22 = call i32 @br_multicast_start_querier(%struct.net_bridge* %20, %struct.bridge_mcast_own_query* %21)
  br label %23

23:                                               ; preds = %19, %18
  %24 = load %struct.net_bridge*, %struct.net_bridge** %3, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock(i32* %25)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @br_opt_get(%struct.net_bridge*, i32) #1

declare dso_local i32 @br_multicast_start_querier(%struct.net_bridge*, %struct.bridge_mcast_own_query*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
