; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-gre.c_gre_tnl_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-gre.c_gre_tnl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.vport_parms = type { i32, i32 }
%struct.net = type { i32 }
%struct.net_device = type { i32 }

@ovs_gre_vport_ops = common dso_local global i32 0, align 4
@NET_NAME_USER = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vport* (%struct.vport_parms*)* @gre_tnl_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vport* @gre_tnl_create(%struct.vport_parms* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.vport_parms*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.vport*, align 8
  %7 = alloca i32, align 4
  store %struct.vport_parms* %0, %struct.vport_parms** %3, align 8
  %8 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %9 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @ovs_dp_get_net(i32 %10)
  store %struct.net* %11, %struct.net** %4, align 8
  %12 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %13 = call %struct.vport* @ovs_vport_alloc(i32 0, i32* @ovs_gre_vport_ops, %struct.vport_parms* %12)
  store %struct.vport* %13, %struct.vport** %6, align 8
  %14 = load %struct.vport*, %struct.vport** %6, align 8
  %15 = call i64 @IS_ERR(%struct.vport* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load %struct.vport*, %struct.vport** %6, align 8
  store %struct.vport* %18, %struct.vport** %2, align 8
  br label %62

19:                                               ; preds = %1
  %20 = call i32 (...) @rtnl_lock()
  %21 = load %struct.net*, %struct.net** %4, align 8
  %22 = load %struct.vport_parms*, %struct.vport_parms** %3, align 8
  %23 = getelementptr inbounds %struct.vport_parms, %struct.vport_parms* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NET_NAME_USER, align 4
  %26 = call %struct.vport* @gretap_fb_dev_create(%struct.net* %21, i32 %24, i32 %25)
  %27 = bitcast %struct.vport* %26 to %struct.net_device*
  store %struct.net_device* %27, %struct.net_device** %5, align 8
  %28 = load %struct.net_device*, %struct.net_device** %5, align 8
  %29 = bitcast %struct.net_device* %28 to %struct.vport*
  %30 = call i64 @IS_ERR(%struct.vport* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %19
  %33 = call i32 (...) @rtnl_unlock()
  %34 = load %struct.vport*, %struct.vport** %6, align 8
  %35 = call i32 @ovs_vport_free(%struct.vport* %34)
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = bitcast %struct.net_device* %36 to %struct.vport*
  %38 = call %struct.vport* @ERR_CAST(%struct.vport* %37)
  store %struct.vport* %38, %struct.vport** %2, align 8
  br label %62

39:                                               ; preds = %19
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = bitcast %struct.net_device* %40 to %struct.vport*
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFF_UP, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @dev_change_flags(%struct.vport* %41, i32 %46, i32* null)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %39
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = bitcast %struct.net_device* %51 to %struct.vport*
  %53 = call i32 @rtnl_delete_link(%struct.vport* %52)
  %54 = call i32 (...) @rtnl_unlock()
  %55 = load %struct.vport*, %struct.vport** %6, align 8
  %56 = call i32 @ovs_vport_free(%struct.vport* %55)
  %57 = load i32, i32* %7, align 4
  %58 = call %struct.vport* @ERR_PTR(i32 %57)
  store %struct.vport* %58, %struct.vport** %2, align 8
  br label %62

59:                                               ; preds = %39
  %60 = call i32 (...) @rtnl_unlock()
  %61 = load %struct.vport*, %struct.vport** %6, align 8
  store %struct.vport* %61, %struct.vport** %2, align 8
  br label %62

62:                                               ; preds = %59, %50, %32, %17
  %63 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %63
}

declare dso_local %struct.net* @ovs_dp_get_net(i32) #1

declare dso_local %struct.vport* @ovs_vport_alloc(i32, i32*, %struct.vport_parms*) #1

declare dso_local i64 @IS_ERR(%struct.vport*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.vport* @gretap_fb_dev_create(%struct.net*, i32, i32) #1

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
