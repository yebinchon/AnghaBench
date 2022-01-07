; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i32, i32* }
%struct.ip_tunnel = type { i32 }

@ipip6_netdev_ops = common dso_local global i32 0, align 4
@ipip6_dev_free = common dso_local global i32 0, align 4
@ARPHRD_SIT = common dso_local global i32 0, align 4
@LL_MAX_HEADER = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@IP6_MAX_MTU = common dso_local global i64 0, align 8
@IFF_NOARP = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@SIT_FEATURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipip6_tunnel_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip6_tunnel_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip_tunnel*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %5)
  store %struct.ip_tunnel* %6, %struct.ip_tunnel** %3, align 8
  %7 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %8 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 %10, 4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 11
  store i32* @ipip6_netdev_ops, i32** %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @ipip6_dev_free, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 10
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ARPHRD_SIT, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load i64, i64* @LL_MAX_HEADER, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 8
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* @ETH_DATA_LEN, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 %29, %31
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 7
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @IPV6_MIN_MTU, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* @IP6_MAX_MTU, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @IFF_NOARP, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @netif_keep_dst(%struct.net_device* %47)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  store i32 4, i32* %50, align 4
  %51 = load i32, i32* @NETIF_F_LLTX, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @SIT_FEATURES, align 4
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @SIT_FEATURES, align 4
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_keep_dst(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
