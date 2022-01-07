; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_tnl_init_features.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_gre.c_ip6gre_tnl_init_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ip6_tnl = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@GRE6_FEATURES = common dso_local global i32 0, align 4
@TUNNEL_SEQ = common dso_local global i32 0, align 4
@TUNNEL_CSUM = common dso_local global i32 0, align 4
@TUNNEL_ENCAP_NONE = common dso_local global i64 0, align 8
@NETIF_F_GSO_SOFTWARE = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ip6gre_tnl_init_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6gre_tnl_init_features(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip6_tnl*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %4)
  store %struct.ip6_tnl* %5, %struct.ip6_tnl** %3, align 8
  %6 = load i32, i32* @GRE6_FEATURES, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GRE6_FEATURES, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %17 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TUNNEL_SEQ, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %1
  %24 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %25 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TUNNEL_CSUM, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.ip6_tnl*, %struct.ip6_tnl** %3, align 8
  %33 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TUNNEL_ENCAP_NONE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %31, %23
  %39 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %38, %31
  %50 = load i32, i32* @NETIF_F_LLTX, align 4
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
