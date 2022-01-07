; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-vxlan.c_vxlan_tnl_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-vxlan.c_vxlan_tnl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.vport_parms = type { i32, %struct.nlattr*, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.vxlan_config = type { i32, i32, i32, i32 }

@VXLAN_F_COLLECT_METADATA = common dso_local global i32 0, align 4
@VXLAN_F_UDP_ZERO_CSUM6_RX = common dso_local global i32 0, align 4
@IP_MAX_MTU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OVS_TUNNEL_ATTR_DST_PORT = common dso_local global i32 0, align 4
@ovs_vxlan_netdev_vport_ops = common dso_local global i32 0, align 4
@OVS_TUNNEL_ATTR_EXTENSION = common dso_local global i32 0, align 4
@NET_NAME_USER = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.vport_parms*)* @vxlan_tnl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @vxlan_tnl_create(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.vport*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vxlan_config, align 4
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  %11 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %12 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.net* @ovs_dp_get_net(i32 %13)
  store %struct.net* %14, %struct.net** %4, align 8
  %15 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %16 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %15, i32 0, i32 1
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  store %struct.nlattr* %17, %struct.nlattr** %5, align 8
  %18 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %10, i32 0, i32 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %10, i32 0, i32 1
  %20 = load i32, i32* @VXLAN_F_COLLECT_METADATA, align 4
  %21 = load i32, i32* @VXLAN_F_UDP_ZERO_CSUM6_RX, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %10, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %10, i32 0, i32 3
  %25 = load i32, i32* @IP_MAX_MTU, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %115

31:                                               ; preds = %1
  %32 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %33 = load i32, i32* @OVS_TUNNEL_ATTR_DST_PORT, align 4
  %34 = call %struct.nlattr* @nla_find_nested(%struct.nlattr* %32, i32 %33)
  store %struct.nlattr* %34, %struct.nlattr** %8, align 8
  %35 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %39 = call i32 @nla_len(%struct.nlattr* %38)
  %40 = sext i32 %39 to i64
  %41 = icmp eq i64 %40, 4
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %44 = call i32 @nla_get_u16(%struct.nlattr* %43)
  %45 = call i32 @htons(i32 %44)
  %46 = getelementptr inbounds %struct.vxlan_config, %struct.vxlan_config* %10, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  br label %50

47:                                               ; preds = %37, %31
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %115

50:                                               ; preds = %42
  %51 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %52 = call %struct.vport* @ovs_vport_alloc(i32 0, i32* @ovs_vxlan_netdev_vport_ops, %struct.vport_parms* %51)
  store %struct.vport* %52, %struct.vport** %7, align 8
  %53 = load %struct.vport*, %struct.vport** %7, align 8
  %54 = call i64 @IS_ERR(%struct.vport* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load %struct.vport*, %struct.vport** %7, align 8
  store %struct.vport* %57, %struct.vport** %2, align 8
  br label %118

58:                                               ; preds = %50
  %59 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %60 = load i32, i32* @OVS_TUNNEL_ATTR_EXTENSION, align 4
  %61 = call %struct.nlattr* @nla_find_nested(%struct.nlattr* %59, i32 %60)
  store %struct.nlattr* %61, %struct.nlattr** %8, align 8
  %62 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load %struct.vport*, %struct.vport** %7, align 8
  %66 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %67 = call i32 @vxlan_configure_exts(%struct.vport* %65, %struct.nlattr* %66, %struct.vxlan_config* %10)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load %struct.vport*, %struct.vport** %7, align 8
  %72 = call i32 @ovs_vport_free(%struct.vport* %71)
  br label %115

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %58
  %75 = call i32 (...) @rtnl_lock()
  %76 = load %struct.net*, %struct.net** %4, align 8
  %77 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %78 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NET_NAME_USER, align 4
  %81 = call %struct.vport* @vxlan_dev_create(%struct.net* %76, i32 %79, i32 %80, %struct.vxlan_config* %10)
  %82 = bitcast %struct.vport* %81 to %struct.net_device*
  store %struct.net_device* %82, %struct.net_device** %6, align 8
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = bitcast %struct.net_device* %83 to %struct.vport*
  %85 = call i64 @IS_ERR(%struct.vport* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = call i32 (...) @rtnl_unlock()
  %89 = load %struct.vport*, %struct.vport** %7, align 8
  %90 = call i32 @ovs_vport_free(%struct.vport* %89)
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = bitcast %struct.net_device* %91 to %struct.vport*
  %93 = call %struct.vport* @ERR_CAST(%struct.vport* %92)
  store %struct.vport* %93, %struct.vport** %2, align 8
  br label %118

94:                                               ; preds = %74
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = bitcast %struct.net_device* %95 to %struct.vport*
  %97 = load %struct.net_device*, %struct.net_device** %6, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IFF_UP, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @dev_change_flags(%struct.vport* %96, i32 %101, i32* null)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %94
  %106 = load %struct.net_device*, %struct.net_device** %6, align 8
  %107 = bitcast %struct.net_device* %106 to %struct.vport*
  %108 = call i32 @rtnl_delete_link(%struct.vport* %107)
  %109 = call i32 (...) @rtnl_unlock()
  %110 = load %struct.vport*, %struct.vport** %7, align 8
  %111 = call i32 @ovs_vport_free(%struct.vport* %110)
  br label %115

112:                                              ; preds = %94
  %113 = call i32 (...) @rtnl_unlock()
  %114 = load %struct.vport*, %struct.vport** %7, align 8
  store %struct.vport* %114, %struct.vport** %2, align 8
  br label %118

115:                                              ; preds = %105, %70, %47, %28
  %116 = load i32, i32* %9, align 4
  %117 = call %struct.vport* @ERR_PTR(i32 %116)
  store %struct.vport* %117, %struct.vport** %2, align 8
  br label %118

118:                                              ; preds = %115, %112, %87, %56
  %119 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %119
}

declare dso_local %struct.net* @ovs_dp_get_net(i32) #1

declare dso_local %struct.nlattr* @nla_find_nested(%struct.nlattr*, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local %struct.vport* @ovs_vport_alloc(i32, i32*, %struct.vport_parms*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @vxlan_configure_exts(%struct.vport*, %struct.nlattr*, %struct.vxlan_config*) #1

declare dso_local i32 @ovs_vport_free(%struct.vport*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.vport* @vxlan_dev_create(%struct.net*, i32, i32, %struct.vxlan_config*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local %struct.vport* @ERR_CAST(%struct.vport*) #1

declare dso_local i32 @dev_change_flags(%struct.vport*, i32, i32*) #1

declare dso_local i32 @rtnl_delete_link(%struct.vport*) #1

declare dso_local %struct.vport* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
