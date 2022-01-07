; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_query_received.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_query_received.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { i32 }
%struct.bridge_mcast_other_query = type { i32 }
%struct.br_ip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*, %struct.bridge_mcast_other_query*, %struct.br_ip*, i64)* @br_multicast_query_received to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_multicast_query_received(%struct.net_bridge* %0, %struct.net_bridge_port* %1, %struct.bridge_mcast_other_query* %2, %struct.br_ip* %3, i64 %4) #0 {
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca %struct.bridge_mcast_other_query*, align 8
  %9 = alloca %struct.br_ip*, align 8
  %10 = alloca i64, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store %struct.bridge_mcast_other_query* %2, %struct.bridge_mcast_other_query** %8, align 8
  store %struct.br_ip* %3, %struct.br_ip** %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %12 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %13 = load %struct.br_ip*, %struct.br_ip** %9, align 8
  %14 = call i32 @br_multicast_select_querier(%struct.net_bridge* %11, %struct.net_bridge_port* %12, %struct.br_ip* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  br label %25

17:                                               ; preds = %5
  %18 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %19 = load %struct.bridge_mcast_other_query*, %struct.bridge_mcast_other_query** %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @br_multicast_update_query_timer(%struct.net_bridge* %18, %struct.bridge_mcast_other_query* %19, i64 %20)
  %22 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %23 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %24 = call i32 @br_multicast_mark_router(%struct.net_bridge* %22, %struct.net_bridge_port* %23)
  br label %25

25:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @br_multicast_select_querier(%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*) #1

declare dso_local i32 @br_multicast_update_query_timer(%struct.net_bridge*, %struct.bridge_mcast_other_query*, i64) #1

declare dso_local i32 @br_multicast_mark_router(%struct.net_bridge*, %struct.net_bridge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
