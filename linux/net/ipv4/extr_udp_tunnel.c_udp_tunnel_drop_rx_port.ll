; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_tunnel_drop_rx_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_udp_tunnel.c_udp_tunnel_drop_rx_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.net_device*, %struct.udp_tunnel_info*)* }
%struct.udp_tunnel_info = type { i16, i32, i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NETIF_F_RX_UDP_TUNNEL_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udp_tunnel_drop_rx_port(%struct.net_device* %0, %struct.socket* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.udp_tunnel_info, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i16 %2, i16* %6, align 2
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = getelementptr inbounds %struct.socket, %struct.socket* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.net_device*, %struct.udp_tunnel_info*)*, i32 (%struct.net_device*, %struct.udp_tunnel_info*)** %15, align 8
  %17 = icmp ne i32 (%struct.net_device*, %struct.udp_tunnel_info*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NETIF_F_RX_UDP_TUNNEL_PORT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18, %3
  br label %45

26:                                               ; preds = %18
  %27 = load i16, i16* %6, align 2
  %28 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %8, i32 0, i32 0
  store i16 %27, i16* %28, align 4
  %29 = load %struct.sock*, %struct.sock** %7, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %8, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sock*, %struct.sock** %7, align 8
  %34 = call %struct.TYPE_4__* @inet_sk(%struct.sock* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.udp_tunnel_info, %struct.udp_tunnel_info* %8, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.net_device*, %struct.udp_tunnel_info*)*, i32 (%struct.net_device*, %struct.udp_tunnel_info*)** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = call i32 %42(%struct.net_device* %43, %struct.udp_tunnel_info* %8)
  br label %45

45:                                               ; preds = %26, %25
  ret void
}

declare dso_local %struct.TYPE_4__* @inet_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
