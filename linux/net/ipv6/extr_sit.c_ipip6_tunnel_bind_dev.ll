; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_bind_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_sit.c_ipip6_tunnel_bind_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i64, i32 }
%struct.ip_tunnel = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.iphdr }
%struct.iphdr = type { i32, i32, i64 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }

@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ipip6_tunnel_bind_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipip6_tunnel_bind_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca %struct.flowi4, align 4
  %7 = alloca %struct.rtable*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %9)
  store %struct.ip_tunnel* %10, %struct.ip_tunnel** %4, align 8
  %11 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %12 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.iphdr* %13, %struct.iphdr** %5, align 8
  %14 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %15 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %1
  %19 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %20 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %23 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %26 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IPPROTO_IPV6, align 4
  %29 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @RT_TOS(i32 %31)
  %33 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %34 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.rtable* @ip_route_output_ports(i32 %21, %struct.flowi4* %6, i32* null, i64 %24, i32 %27, i32 0, i32 0, i32 %28, i32 %32, i64 %36)
  store %struct.rtable* %37, %struct.rtable** %7, align 8
  %38 = load %struct.rtable*, %struct.rtable** %7, align 8
  %39 = call i32 @IS_ERR(%struct.rtable* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %18
  %42 = load %struct.rtable*, %struct.rtable** %7, align 8
  %43 = getelementptr inbounds %struct.rtable, %struct.rtable* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  store %struct.net_device* %45, %struct.net_device** %3, align 8
  %46 = load %struct.rtable*, %struct.rtable** %7, align 8
  %47 = call i32 @ip_rt_put(%struct.rtable* %46)
  br label %48

48:                                               ; preds = %41, %18
  %49 = load i32, i32* @IFF_POINTOPOINT, align 4
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %1
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = icmp ne %struct.net_device* %55, null
  br i1 %56, label %72, label %57

57:                                               ; preds = %54
  %58 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %59 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %65 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %68 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call %struct.net_device* @__dev_get_by_index(i32 %66, i64 %70)
  store %struct.net_device* %71, %struct.net_device** %3, align 8
  br label %72

72:                                               ; preds = %63, %57, %54
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %75, label %110

75:                                               ; preds = %72
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @netif_is_l3_master(%struct.net_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %110, label %79

79:                                               ; preds = %75
  %80 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %81 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 16
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 16
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IPV6_MIN_MTU, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %79
  %106 = load i64, i64* @IPV6_MIN_MTU, align 8
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %79
  br label %110

110:                                              ; preds = %109, %75, %72
  ret void
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rtable* @ip_route_output_ports(i32, %struct.flowi4*, i32*, i64, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i64) #1

declare dso_local i32 @netif_is_l3_master(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
