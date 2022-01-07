; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_tunnel_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_tunnel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ip_tunnel = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipip_tunnel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_tunnel_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip_tunnel*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %4)
  store %struct.ip_tunnel* %5, %struct.ip_tunnel** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %10 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @memcpy(i32 %8, i32* %12, i32 4)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %18 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @memcpy(i32 %16, i32* %20, i32 4)
  %22 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %23 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %25 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %32 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @ip_tunnel_init(%struct.net_device* %33)
  ret i32 %34
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ip_tunnel_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
