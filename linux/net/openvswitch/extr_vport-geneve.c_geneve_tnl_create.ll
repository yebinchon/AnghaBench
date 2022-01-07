; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-geneve.c_geneve_tnl_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-geneve.c_geneve_tnl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.vport_parms = type { i32, %struct.nlattr*, i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.geneve_port = type { i32 }
%struct.net_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OVS_TUNNEL_ATTR_DST_PORT = common dso_local global i32 0, align 4
@ovs_geneve_vport_ops = common dso_local global i32 0, align 4
@NET_NAME_USER = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.vport_parms*)* @geneve_tnl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @geneve_tnl_create(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.geneve_port*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.vport*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  %12 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %13 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.net* @ovs_dp_get_net(i32 %14)
  store %struct.net* %15, %struct.net** %4, align 8
  %16 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %17 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %16, i32 0, i32 1
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  store %struct.nlattr* %18, %struct.nlattr** %5, align 8
  %19 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  br label %96

24:                                               ; preds = %1
  %25 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %26 = load i32, i32* @OVS_TUNNEL_ATTR_DST_PORT, align 4
  %27 = call %struct.nlattr* @nla_find_nested(%struct.nlattr* %25, i32 %26)
  store %struct.nlattr* %27, %struct.nlattr** %9, align 8
  %28 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %32 = call i32 @nla_len(%struct.nlattr* %31)
  %33 = sext i32 %32 to i64
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %37 = call i32 @nla_get_u16(%struct.nlattr* %36)
  store i32 %37, i32* %10, align 4
  br label %41

38:                                               ; preds = %30, %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %11, align 4
  br label %96

41:                                               ; preds = %35
  %42 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %43 = call %struct.vport* @ovs_vport_alloc(i32 4, i32* @ovs_geneve_vport_ops, %struct.vport_parms* %42)
  store %struct.vport* %43, %struct.vport** %8, align 8
  %44 = load %struct.vport*, %struct.vport** %8, align 8
  %45 = call i64 @IS_ERR(%struct.vport* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load %struct.vport*, %struct.vport** %8, align 8
  store %struct.vport* %48, %struct.vport** %2, align 8
  br label %99

49:                                               ; preds = %41
  %50 = load %struct.vport*, %struct.vport** %8, align 8
  %51 = call %struct.geneve_port* @geneve_vport(%struct.vport* %50)
  store %struct.geneve_port* %51, %struct.geneve_port** %6, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.geneve_port*, %struct.geneve_port** %6, align 8
  %54 = getelementptr inbounds %struct.geneve_port, %struct.geneve_port* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = call i32 (...) @rtnl_lock()
  %56 = load %struct.net*, %struct.net** %4, align 8
  %57 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %58 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NET_NAME_USER, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.vport* @geneve_dev_create_fb(%struct.net* %56, i32 %59, i32 %60, i32 %61)
  %63 = bitcast %struct.vport* %62 to %struct.net_device*
  store %struct.net_device* %63, %struct.net_device** %7, align 8
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = bitcast %struct.net_device* %64 to %struct.vport*
  %66 = call i64 @IS_ERR(%struct.vport* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %49
  %69 = call i32 (...) @rtnl_unlock()
  %70 = load %struct.vport*, %struct.vport** %8, align 8
  %71 = call i32 @ovs_vport_free(%struct.vport* %70)
  %72 = load %struct.net_device*, %struct.net_device** %7, align 8
  %73 = bitcast %struct.net_device* %72 to %struct.vport*
  %74 = call %struct.vport* @ERR_CAST(%struct.vport* %73)
  store %struct.vport* %74, %struct.vport** %2, align 8
  br label %99

75:                                               ; preds = %49
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = bitcast %struct.net_device* %76 to %struct.vport*
  %78 = load %struct.net_device*, %struct.net_device** %7, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IFF_UP, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @dev_change_flags(%struct.vport* %77, i32 %82, i32* null)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %75
  %87 = load %struct.net_device*, %struct.net_device** %7, align 8
  %88 = bitcast %struct.net_device* %87 to %struct.vport*
  %89 = call i32 @rtnl_delete_link(%struct.vport* %88)
  %90 = call i32 (...) @rtnl_unlock()
  %91 = load %struct.vport*, %struct.vport** %8, align 8
  %92 = call i32 @ovs_vport_free(%struct.vport* %91)
  br label %96

93:                                               ; preds = %75
  %94 = call i32 (...) @rtnl_unlock()
  %95 = load %struct.vport*, %struct.vport** %8, align 8
  store %struct.vport* %95, %struct.vport** %2, align 8
  br label %99

96:                                               ; preds = %86, %38, %21
  %97 = load i32, i32* %11, align 4
  %98 = call %struct.vport* @ERR_PTR(i32 %97)
  store %struct.vport* %98, %struct.vport** %2, align 8
  br label %99

99:                                               ; preds = %96, %93, %68, %47
  %100 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %100
}

declare dso_local %struct.net* @ovs_dp_get_net(i32) #1

declare dso_local %struct.nlattr* @nla_find_nested(%struct.nlattr*, i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local %struct.vport* @ovs_vport_alloc(i32, i32*, %struct.vport_parms*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local %struct.geneve_port* @geneve_vport(%struct.vport*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.vport* @geneve_dev_create_fb(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ovs_vport_free(%struct.vport*) #1

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
