; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipip.c_ipip_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel = type { i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ip_tunnel_encap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipip_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipip_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.ip_tunnel_parm, align 8
  %12 = alloca %struct.ip_tunnel_encap, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %16)
  store %struct.ip_tunnel* %17, %struct.ip_tunnel** %10, align 8
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %19 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %22 = call i64 @ipip_netlink_encap_parms(%struct.nlattr** %21, %struct.ip_tunnel_encap* %12)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %26 = call i32 @ip_tunnel_encap_setup(%struct.ip_tunnel* %25, %struct.ip_tunnel_encap* %12)
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %15, align 4
  store i32 %30, i32* %5, align 4
  br label %72

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %4
  %33 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %34 = call i32 @ipip_netlink_parms(%struct.nlattr** %33, %struct.ip_tunnel_parm* %11, i32* %13, i32* %14)
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %72

40:                                               ; preds = %32
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFF_POINTOPOINT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47, %40
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFF_POINTOPOINT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %11, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59, %47
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %72

67:                                               ; preds = %59, %52
  %68 = load %struct.net_device*, %struct.net_device** %6, align 8
  %69 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ip_tunnel_changelink(%struct.net_device* %68, %struct.nlattr** %69, %struct.ip_tunnel_parm* %11, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %67, %64, %37, %29
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ipip_netlink_encap_parms(%struct.nlattr**, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ip_tunnel_encap_setup(%struct.ip_tunnel*, %struct.ip_tunnel_encap*) #1

declare dso_local i32 @ipip_netlink_parms(%struct.nlattr**, %struct.ip_tunnel_parm*, i32*, i32*) #1

declare dso_local i32 @ip_tunnel_changelink(%struct.net_device*, %struct.nlattr**, %struct.ip_tunnel_parm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
