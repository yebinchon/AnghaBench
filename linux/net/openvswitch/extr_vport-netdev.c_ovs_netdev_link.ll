; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_ovs_netdev_link.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_ovs_netdev_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@ARPHRD_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@netdev_frame_hook = common dso_local global i32 0, align 4
@IFF_OVS_DATAPATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vport* @ovs_netdev_link(%struct.vport* %0, i8* %1) #0 {
  %3 = alloca %struct.vport*, align 8
  %4 = alloca %struct.vport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.vport* %0, %struct.vport** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.vport*, %struct.vport** %4, align 8
  %8 = getelementptr inbounds %struct.vport, %struct.vport* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ovs_dp_get_net(i32 %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.TYPE_9__* @dev_get_by_name(i32 %10, i8* %11)
  %13 = load %struct.vport*, %struct.vport** %4, align 8
  %14 = getelementptr inbounds %struct.vport, %struct.vport* %13, i32 0, i32 0
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %14, align 8
  %15 = load %struct.vport*, %struct.vport** %4, align 8
  %16 = getelementptr inbounds %struct.vport, %struct.vport* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load %struct.vport*, %struct.vport** %4, align 8
  %24 = getelementptr inbounds %struct.vport, %struct.vport* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IFF_LOOPBACK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %53, label %31

31:                                               ; preds = %22
  %32 = load %struct.vport*, %struct.vport** %4, align 8
  %33 = getelementptr inbounds %struct.vport, %struct.vport* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ARPHRD_ETHER, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.vport*, %struct.vport** %4, align 8
  %41 = getelementptr inbounds %struct.vport, %struct.vport* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ARPHRD_NONE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.vport*, %struct.vport** %4, align 8
  %49 = getelementptr inbounds %struct.vport, %struct.vport* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = call i64 @ovs_is_internal_dev(%struct.TYPE_9__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %39, %22
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %108

56:                                               ; preds = %47
  %57 = call i32 (...) @rtnl_lock()
  %58 = load %struct.vport*, %struct.vport** %4, align 8
  %59 = getelementptr inbounds %struct.vport, %struct.vport* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = load %struct.vport*, %struct.vport** %4, align 8
  %62 = getelementptr inbounds %struct.vport, %struct.vport* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @get_dpdev(i32 %63)
  %65 = call i32 @netdev_master_upper_dev_link(%struct.TYPE_9__* %60, i32 %64, i32* null, i32* null, i32* null)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %106

69:                                               ; preds = %56
  %70 = load %struct.vport*, %struct.vport** %4, align 8
  %71 = getelementptr inbounds %struct.vport, %struct.vport* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = load i32, i32* @netdev_frame_hook, align 4
  %74 = load %struct.vport*, %struct.vport** %4, align 8
  %75 = call i32 @netdev_rx_handler_register(%struct.TYPE_9__* %72, i32 %73, %struct.vport* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  br label %97

79:                                               ; preds = %69
  %80 = load %struct.vport*, %struct.vport** %4, align 8
  %81 = getelementptr inbounds %struct.vport, %struct.vport* %80, i32 0, i32 0
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = call i32 @dev_disable_lro(%struct.TYPE_9__* %82)
  %84 = load %struct.vport*, %struct.vport** %4, align 8
  %85 = getelementptr inbounds %struct.vport, %struct.vport* %84, i32 0, i32 0
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = call i32 @dev_set_promiscuity(%struct.TYPE_9__* %86, i32 1)
  %88 = load i32, i32* @IFF_OVS_DATAPATH, align 4
  %89 = load %struct.vport*, %struct.vport** %4, align 8
  %90 = getelementptr inbounds %struct.vport, %struct.vport* %89, i32 0, i32 0
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 8
  %95 = call i32 (...) @rtnl_unlock()
  %96 = load %struct.vport*, %struct.vport** %4, align 8
  store %struct.vport* %96, %struct.vport** %3, align 8
  br label %118

97:                                               ; preds = %78
  %98 = load %struct.vport*, %struct.vport** %4, align 8
  %99 = getelementptr inbounds %struct.vport, %struct.vport* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load %struct.vport*, %struct.vport** %4, align 8
  %102 = getelementptr inbounds %struct.vport, %struct.vport* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @get_dpdev(i32 %103)
  %105 = call i32 @netdev_upper_dev_unlink(%struct.TYPE_9__* %100, i32 %104)
  br label %106

106:                                              ; preds = %97, %68
  %107 = call i32 (...) @rtnl_unlock()
  br label %108

108:                                              ; preds = %106, %53
  %109 = load %struct.vport*, %struct.vport** %4, align 8
  %110 = getelementptr inbounds %struct.vport, %struct.vport* %109, i32 0, i32 0
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = call i32 @dev_put(%struct.TYPE_9__* %111)
  br label %113

113:                                              ; preds = %108, %19
  %114 = load %struct.vport*, %struct.vport** %4, align 8
  %115 = call i32 @ovs_vport_free(%struct.vport* %114)
  %116 = load i32, i32* %6, align 4
  %117 = call %struct.vport* @ERR_PTR(i32 %116)
  store %struct.vport* %117, %struct.vport** %3, align 8
  br label %118

118:                                              ; preds = %113, %79
  %119 = load %struct.vport*, %struct.vport** %3, align 8
  ret %struct.vport* %119
}

declare dso_local %struct.TYPE_9__* @dev_get_by_name(i32, i8*) #1

declare dso_local i32 @ovs_dp_get_net(i32) #1

declare dso_local i64 @ovs_is_internal_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @netdev_master_upper_dev_link(%struct.TYPE_9__*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @get_dpdev(i32) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.TYPE_9__*, i32, %struct.vport*) #1

declare dso_local i32 @dev_disable_lro(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_set_promiscuity(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netdev_upper_dev_unlink(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dev_put(%struct.TYPE_9__*) #1

declare dso_local i32 @ovs_vport_free(%struct.vport*) #1

declare dso_local %struct.vport* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
