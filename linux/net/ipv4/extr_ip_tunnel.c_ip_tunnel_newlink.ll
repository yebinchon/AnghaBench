; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_tunnel.c_ip_tunnel_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32 }
%struct.nlattr = type { i32 }
%struct.ip_tunnel_parm = type { i32 }
%struct.ip_tunnel = type { i32, i32, %struct.ip_tunnel_parm, %struct.net*, i64, i32 }
%struct.net = type { i32 }
%struct.ip_tunnel_net = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFLA_ADDRESS = common dso_local global i64 0, align 8
@IFLA_MTU = common dso_local global i64 0, align 8
@IP_MAX_MTU = common dso_local global i32 0, align 4
@ETH_MIN_MTU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_tunnel_newlink(%struct.net_device* %0, %struct.nlattr** %1, %struct.ip_tunnel_parm* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.ip_tunnel_parm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ip_tunnel*, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.ip_tunnel_net*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.ip_tunnel_parm* %2, %struct.ip_tunnel_parm** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.net* @dev_net(%struct.net_device* %16)
  store %struct.net* %17, %struct.net** %11, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %18)
  store %struct.ip_tunnel* %19, %struct.ip_tunnel** %10, align 8
  %20 = load %struct.net*, %struct.net** %11, align 8
  %21 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %22 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.ip_tunnel_net* @net_generic(%struct.net* %20, i32 %23)
  store %struct.ip_tunnel_net* %24, %struct.ip_tunnel_net** %12, align 8
  %25 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %26 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %4
  %30 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %12, align 8
  %31 = getelementptr inbounds %struct.ip_tunnel_net, %struct.ip_tunnel_net* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @rtnl_dereference(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EEXIST, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %127

38:                                               ; preds = %29
  br label %51

39:                                               ; preds = %4
  %40 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %12, align 8
  %41 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %8, align 8
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @ip_tunnel_find(%struct.ip_tunnel_net* %40, %struct.ip_tunnel_parm* %41, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @EEXIST, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %127

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50, %38
  %52 = load %struct.net*, %struct.net** %11, align 8
  %53 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %54 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %53, i32 0, i32 3
  store %struct.net* %52, %struct.net** %54, align 8
  %55 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %56 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %55, i32 0, i32 2
  %57 = load %struct.ip_tunnel_parm*, %struct.ip_tunnel_parm** %8, align 8
  %58 = bitcast %struct.ip_tunnel_parm* %56 to i8*
  %59 = bitcast %struct.ip_tunnel_parm* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %62 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = call i32 @register_netdevice(%struct.net_device* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %125

68:                                               ; preds = %51
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ARPHRD_ETHER, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68
  %75 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %76 = load i64, i64* @IFLA_ADDRESS, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %74
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = call i32 @eth_hw_addr_random(%struct.net_device* %81)
  br label %83

83:                                               ; preds = %80, %74, %68
  %84 = load %struct.net_device*, %struct.net_device** %6, align 8
  %85 = call i32 @ip_tunnel_bind_dev(%struct.net_device* %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %87 = load i64, i64* @IFLA_MTU, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load i32, i32* @IP_MAX_MTU, align 4
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sub i32 %92, %95
  %97 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %98 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sub i32 %96, %99
  store i32 %100, i32* %15, align 4
  %101 = load %struct.net_device*, %struct.net_device** %6, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* @ETH_MIN_MTU, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32, i32* %15, align 4
  %107 = zext i32 %106 to i64
  %108 = sub i64 %107, 4
  %109 = trunc i64 %108 to i32
  %110 = call i32 @clamp(i32 %103, i32 %105, i32 %109)
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %91, %83
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @dev_set_mtu(%struct.net_device* %112, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %122

118:                                              ; preds = %111
  %119 = load %struct.ip_tunnel_net*, %struct.ip_tunnel_net** %12, align 8
  %120 = load %struct.ip_tunnel*, %struct.ip_tunnel** %10, align 8
  %121 = call i32 @ip_tunnel_add(%struct.ip_tunnel_net* %119, %struct.ip_tunnel* %120)
  store i32 0, i32* %5, align 4
  br label %127

122:                                              ; preds = %117
  %123 = load %struct.net_device*, %struct.net_device** %6, align 8
  %124 = call i32 @unregister_netdevice(%struct.net_device* %123)
  br label %125

125:                                              ; preds = %122, %67
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %118, %47, %35
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ip_tunnel_net* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @rtnl_dereference(i32) #1

declare dso_local i64 @ip_tunnel_find(%struct.ip_tunnel_net*, %struct.ip_tunnel_parm*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_bind_dev(%struct.net_device*) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @ip_tunnel_add(%struct.ip_tunnel_net*, %struct.ip_tunnel*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
