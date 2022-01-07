; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_tunnel = type { i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { i32 }
%struct.ip_tunnel_parm = type { i32 }
%struct.net_device = type { i64, i64, i32 }

@ETH_MIN_MTU = common dso_local global i32 0, align 4
@IP_MAX_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ip_tunnel* (%struct.net*, %struct.ip_tunnel_net*, %struct.ip_tunnel_parm*)* @ip_tunnel_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ip_tunnel* @ip_tunnel_create(%struct.net* %0, %struct.ip_tunnel_net* %1, %struct.ip_tunnel_parm* %2) #0 {
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ip_tunnel_net*, align 8
  %7 = alloca %struct.ip_tunnel_parm*, align 8
  %8 = alloca %struct.ip_tunnel*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ip_tunnel_net* %1, %struct.ip_tunnel_net** %6, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %7, align 8
  %13 = load %struct.net*, %struct.net** %5, align 8
  %14 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %7, align 8
  %18 = call %struct.net_device* @__ip_tunnel_create(%struct.net* %13, i32 %16, %struct.ip_tunnel_parm* %17)
  store %struct.net_device* %18, %struct.net_device** %9, align 8
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = call i64 @IS_ERR(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = call %struct.ip_tunnel* @ERR_CAST(%struct.net_device* %23)
  store %struct.ip_tunnel* %24, %struct.ip_tunnel** %4, align 8
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = call i32 @ip_tunnel_bind_dev(%struct.net_device* %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.net_device*, %struct.net_device** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @dev_set_mtu(%struct.net_device* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %60

34:                                               ; preds = %25
  %35 = load %struct.net_device*, %struct.net_device** %9, align 8
  %36 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %35)
  store %struct.ip_tunnel* %36, %struct.ip_tunnel** %8, align 8
  %37 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %38 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @ETH_MIN_MTU, align 4
  %44 = load %struct.net_device*, %struct.net_device** %9, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* @IP_MAX_MTU, align 8
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %50, %52
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  %56 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %6, align 8
  %57 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  %58 = call i32 @ip_tunnel_add(%struct.ip_tunnel_net* %56, %struct.ip_tunnel* %57)
  %59 = load %struct.ip_tunnel*, %struct.ip_tunnel** %8, align 8
  store %struct.ip_tunnel* %59, %struct.ip_tunnel** %4, align 8
  br label %65

60:                                               ; preds = %33
  %61 = load %struct.net_device*, %struct.net_device** %9, align 8
  %62 = call i32 @unregister_netdevice(%struct.net_device* %61)
  %63 = load i32, i32* %12, align 4
  %64 = call %struct.ip_tunnel* @ERR_PTR(i32 %63)
  store %struct.ip_tunnel* %64, %struct.ip_tunnel** %4, align 8
  br label %65

65:                                               ; preds = %60, %34, %22
  %66 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  ret %struct.ip_tunnel* %66
}

declare dso_local %struct.net_device* @__ip_tunnel_create(%struct.net*, i32, %struct.ip_tunnel_parm*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel* @ERR_CAST(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_bind_dev(%struct.net_device*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_add(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
