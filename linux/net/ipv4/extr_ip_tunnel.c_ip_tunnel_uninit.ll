; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ip_tunnel = type { i32, i32, %struct.net* }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_tunnel_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip_tunnel*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ip_tunnel_net*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %6)
  store %struct.ip_tunnel* %7, %struct.ip_tunnel** %3, align 8
  %8 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %9 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %8, i32 0, i32 2
  %10 = load %struct.net*, %struct.net** %9, align 8
  store %struct.net* %10, %struct.net** %4, align 8
  %11 = load %struct.net*, %struct.net** %4, align 8
  %12 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %13 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %11, i32 %14)
  store %struct.ip_tunnel_net* %15, %struct.ip_tunnel_net** %5, align 8
  %16 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %5, align 8
  %17 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = icmp ne %struct.net_device* %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %23)
  %25 = call i32 @ip_tunnel_del(%struct.ip_tunnel_net* %22, %struct.ip_tunnel* %24)
  br label %26

26:                                               ; preds = %21, %1
  %27 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %27, i32 0, i32 0
  %29 = call i32 @dst_cache_reset(i32* %28)
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @ip_tunnel_del(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @dst_cache_reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
