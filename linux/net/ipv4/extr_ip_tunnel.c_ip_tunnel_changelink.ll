; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.ip_tunnel_parm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ip_tunnel = type { %struct.net_device*, i32, %struct.net* }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { %struct.net_device* }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.ip_tunnel_parm* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.ip_tunnel_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.ip_tunnel*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.ip_tunnel_net*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %15)
  store %struct.ip_tunnel* %16, %struct.ip_tunnel** %11, align 8
  %17 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  %18 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %17, i32 0, i32 2
  %19 = load %struct.net*, %struct.net** %18, align 8
  store %struct.net* %19, %struct.net** %12, align 8
  %20 = load %struct.net*, %struct.net** %12, align 8
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %20, i32 %23)
  store %struct.ip_tunnel_net* %24, %struct.ip_tunnel_net** %13, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %13, align 8
  %27 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %26, i32 0, i32 0
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  %29 = icmp eq %struct.net_device* %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %107

33:                                               ; preds = %4
  %34 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %13, align 8
  %35 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %8, align 8
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ip_tunnel* @ip_tunnel_find(%struct.ip_tunnel_net* %34, %struct.ip_tunnel_parm* %35, i32 %38)
  store %struct.ip_tunnel* %39, %struct.ip_tunnel** %10, align 8
  %40 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %41 = icmp ne %struct.ip_tunnel* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %44 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %6, align 8
  %47 = icmp ne %struct.net_device* %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EEXIST, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %107

51:                                               ; preds = %42
  br label %93

52:                                               ; preds = %33
  %53 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  store %struct.ip_tunnel* %53, %struct.ip_tunnel** %10, align 8
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ARPHRD_ETHER, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %52
  store i32 0, i32* %14, align 4
  %60 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %8, align 8
  %61 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @ipv4_is_multicast(i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @IFF_BROADCAST, align 4
  store i32 %67, i32* %14, align 4
  br label %77

68:                                               ; preds = %59
  %69 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %8, align 8
  %70 = getelementptr inbounds %struct.ip_tunnel_parm, %struct.ip_tunnel_parm* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @IFF_POINTOPOINT, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %14, align 4
  %82 = xor i32 %80, %81
  %83 = load i32, i32* @IFF_POINTOPOINT, align 4
  %84 = load i32, i32* @IFF_BROADCAST, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %77
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %107

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %52
  br label %93

93:                                               ; preds = %92, %51
  %94 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %13, align 8
  %95 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %8, align 8
  %98 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %99 = load i64, i64* @IFLA_MTU, align 8
  %100 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %98, i64 %99
  %101 = load %struct.nlattr*, %struct.nlattr** %100, align 8
  %102 = icmp ne %struct.nlattr* %101, null
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @ip_tunnel_update(%struct.ip_tunnel_net* %94, %struct.ip_tunnel* %95, %struct.net_device* %96, %struct.ip_tunnel_parm* %97, i32 %104, i32 %105)
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %93, %88, %48, %30
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.ip_tunnel* @ip_tunnel_find(%struct.ip_tunnel_net*, %struct.ip_tunnel_parm*, i32) #1

declare dso_local i64 @ipv4_is_multicast(i64) #1

declare dso_local i32 @ip_tunnel_update(%struct.ip_tunnel_net*, %struct.ip_tunnel*, %struct.net_device*, %struct.ip_tunnel_parm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
