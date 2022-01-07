; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_bind_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_bind_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32, i32 }
%struct.ip_tunnel = type { i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, %struct.iphdr }
%struct.iphdr = type { i32, i32, i64, i32 }
%struct.flowi4 = type { i32 }
%struct.rtable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.net_device* }

@LL_MAX_HEADER = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IP_MAX_MTU = common dso_local global i32 0, align 4
@IPV4_MIN_MTU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ip_tunnel_bind_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_tunnel_bind_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ip_tunnel*, align 8
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi4, align 4
  %10 = alloca %struct.rtable*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.net_device* null, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %11)
  store %struct.ip_tunnel* %12, %struct.ip_tunnel** %4, align 8
  %13 = load i32, i32* @LL_MAX_HEADER, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ETH_DATA_LEN, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %16 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 24
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store %struct.iphdr* %23, %struct.iphdr** %5, align 8
  %24 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %25 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %84

28:                                               ; preds = %1
  %29 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %30 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %33 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %36 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %39 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %43 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @RT_TOS(i32 %44)
  %46 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %47 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %51 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ip_tunnel_init_flow(%struct.flowi4* %9, i32 %31, i64 %34, i32 %37, i32 %41, i32 %45, i64 %49, i32 %52, i32 0)
  %54 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.rtable* @ip_route_output_key(i32 %56, %struct.flowi4* %9)
  store %struct.rtable* %57, %struct.rtable** %10, align 8
  %58 = load %struct.rtable*, %struct.rtable** %10, align 8
  %59 = call i32 @IS_ERR(%struct.rtable* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %28
  %62 = load %struct.rtable*, %struct.rtable** %10, align 8
  %63 = getelementptr inbounds %struct.rtable, %struct.rtable* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load %struct.net_device*, %struct.net_device** %64, align 8
  store %struct.net_device* %65, %struct.net_device** %3, align 8
  %66 = load %struct.rtable*, %struct.rtable** %10, align 8
  %67 = call i32 @ip_rt_put(%struct.rtable* %66)
  br label %68

68:                                               ; preds = %61, %28
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ARPHRD_ETHER, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32, i32* @IFF_POINTOPOINT, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %68
  %81 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %82 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %81, i32 0, i32 3
  %83 = call i32 @dst_cache_reset(i32* %82)
  br label %84

84:                                               ; preds = %80, %1
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = icmp ne %struct.net_device* %85, null
  br i1 %86, label %102, label %87

87:                                               ; preds = %84
  %88 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %89 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %87
  %94 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %95 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ip_tunnel*, %struct.ip_tunnel** %4, align 8
  %98 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call %struct.net_device* @__dev_get_by_index(i32 %96, i64 %100)
  store %struct.net_device* %101, %struct.net_device** %3, align 8
  br label %102

102:                                              ; preds = %93, %87, %84
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = icmp ne %struct.net_device* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.net_device*, %struct.net_device** %3, align 8
  %110 = getelementptr inbounds %struct.net_device, %struct.net_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %108, %111
  store i32 %112, i32* %6, align 4
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IP_MAX_MTU, align 4
  %117 = call i32 @min(i32 %115, i32 %116)
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %105, %102
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %119, %120
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %7, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @IPV4_MIN_MTU, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %118
  %135 = load i32, i32* @IPV4_MIN_MTU, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %134, %118
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_init_flow(%struct.flowi4*, i32, i64, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local %struct.rtable* @ip_route_output_key(i32, %struct.flowi4*) #1

declare dso_local i32 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @dst_cache_reset(i32*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
