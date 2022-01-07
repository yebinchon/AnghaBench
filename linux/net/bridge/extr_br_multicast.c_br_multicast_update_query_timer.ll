; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_update_query_timer.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_update_query_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i64 }
%struct.bridge_mcast_other_query = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.bridge_mcast_other_query*, i64)* @br_multicast_update_query_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_update_query_timer(%struct.net_bridge* %0, %struct.bridge_mcast_other_query* %1, i64 %2) #0 {
  %4 = alloca %struct.net_bridge*, align 8
  %5 = alloca %struct.bridge_mcast_other_query*, align 8
  %6 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %4, align 8
  store %struct.bridge_mcast_other_query* %1, %struct.bridge_mcast_other_query** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.bridge_mcast_other_query*, %struct.bridge_mcast_other_query** %5, align 8
  %8 = getelementptr inbounds %struct.bridge_mcast_other_query, %struct.bridge_mcast_other_query* %7, i32 0, i32 0
  %9 = call i32 @timer_pending(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %3
  %12 = load i64, i64* @jiffies, align 8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %12, %13
  %15 = load %struct.bridge_mcast_other_query*, %struct.bridge_mcast_other_query** %5, align 8
  %16 = getelementptr inbounds %struct.bridge_mcast_other_query, %struct.bridge_mcast_other_query* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %11, %3
  %18 = load %struct.bridge_mcast_other_query*, %struct.bridge_mcast_other_query** %5, align 8
  %19 = getelementptr inbounds %struct.bridge_mcast_other_query, %struct.bridge_mcast_other_query* %18, i32 0, i32 0
  %20 = load i64, i64* @jiffies, align 8
  %21 = load %struct.net_bridge*, %struct.net_bridge** %4, align 8
  %22 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i32 @mod_timer(i32* %19, i64 %24)
  ret void
}

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
