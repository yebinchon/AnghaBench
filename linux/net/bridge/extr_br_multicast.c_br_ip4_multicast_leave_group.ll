; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_leave_group.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_ip4_multicast_leave_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { i32, %struct.bridge_mcast_own_query }
%struct.bridge_mcast_own_query = type { i32 }
%struct.net_bridge_port = type { %struct.bridge_mcast_own_query }
%struct.br_ip = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_bridge*, %struct.net_bridge_port*, i32, i32, i8*)* @br_ip4_multicast_leave_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br_ip4_multicast_leave_group(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.br_ip, align 4
  %12 = alloca %struct.bridge_mcast_own_query*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ipv4_is_local_multicast(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %44

17:                                               ; preds = %5
  %18 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %19 = icmp ne %struct.net_bridge_port* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %22 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %21, i32 0, i32 0
  br label %26

23:                                               ; preds = %17
  %24 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %25 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %24, i32 0, i32 1
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi %struct.bridge_mcast_own_query* [ %22, %20 ], [ %25, %23 ]
  store %struct.bridge_mcast_own_query* %27, %struct.bridge_mcast_own_query** %12, align 8
  %28 = call i32 @memset(%struct.br_ip* %11, i32 0, i32 12)
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.br_ip, %struct.br_ip* %11, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @ETH_P_IP, align 4
  %33 = call i32 @htons(i32 %32)
  %34 = getelementptr inbounds %struct.br_ip, %struct.br_ip* %11, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds %struct.br_ip, %struct.br_ip* %11, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %38 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %39 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %40 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %39, i32 0, i32 0
  %41 = load %struct.bridge_mcast_own_query*, %struct.bridge_mcast_own_query** %12, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @br_multicast_leave_group(%struct.net_bridge* %37, %struct.net_bridge_port* %38, %struct.br_ip* %11, i32* %40, %struct.bridge_mcast_own_query* %41, i8* %42)
  br label %44

44:                                               ; preds = %26, %16
  ret void
}

declare dso_local i64 @ipv4_is_local_multicast(i32) #1

declare dso_local i32 @memset(%struct.br_ip*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @br_multicast_leave_group(%struct.net_bridge*, %struct.net_bridge_port*, %struct.br_ip*, i32*, %struct.bridge_mcast_own_query*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
