; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.l2tp_tunnel = type { i32 }
%struct.l2tp_session_cfg = type { i32 }
%struct.net_device = type { i32, i32, i64 }
%struct.l2tp_session = type { i8*, i32, i32, i32 }
%struct.l2tp_eth = type { %struct.l2tp_session* }
%struct.l2tp_eth_sess = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@NET_NAME_USER = common dso_local global i8 0, align 1
@L2TP_ETH_DEV_NAME = common dso_local global i32 0, align 4
@NET_NAME_ENUM = common dso_local global i8 0, align 1
@l2tp_eth_dev_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_MAX_MTU = common dso_local global i32 0, align 4
@l2tp_eth_dev_recv = common dso_local global i32 0, align 4
@l2tp_eth_delete = common dso_local global i32 0, align 4
@CONFIG_L2TP_DEBUGFS = common dso_local global i32 0, align 4
@l2tp_eth_show = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.l2tp_tunnel*, i32, i32, %struct.l2tp_session_cfg*)* @l2tp_eth_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_eth_create(%struct.net* %0, %struct.l2tp_tunnel* %1, i32 %2, i32 %3, %struct.l2tp_session_cfg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.l2tp_tunnel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.l2tp_session_cfg*, align 8
  %12 = alloca i8, align 1
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.l2tp_session*, align 8
  %17 = alloca %struct.l2tp_eth*, align 8
  %18 = alloca %struct.l2tp_eth_sess*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.l2tp_tunnel* %1, %struct.l2tp_tunnel** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.l2tp_session_cfg* %4, %struct.l2tp_session_cfg** %11, align 8
  %21 = load i32, i32* @IFNAMSIZ, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  %25 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %26 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %5
  %30 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %31 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFNAMSIZ, align 4
  %34 = call i32 @strlcpy(i8* %24, i32 %32, i32 %33)
  %35 = load i8, i8* @NET_NAME_USER, align 1
  store i8 %35, i8* %12, align 1
  br label %40

36:                                               ; preds = %5
  %37 = load i32, i32* @L2TP_ETH_DEV_NAME, align 4
  %38 = call i32 @strcpy(i8* %24, i32 %37)
  %39 = load i8, i8* @NET_NAME_ENUM, align 1
  store i8 %39, i8* %12, align 1
  br label %40

40:                                               ; preds = %36, %29
  %41 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %45 = call %struct.l2tp_session* @l2tp_session_create(i32 4, %struct.l2tp_tunnel* %41, i32 %42, i32 %43, %struct.l2tp_session_cfg* %44)
  store %struct.l2tp_session* %45, %struct.l2tp_session** %16, align 8
  %46 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %47 = call i64 @IS_ERR(%struct.l2tp_session* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %51 = call i32 @PTR_ERR(%struct.l2tp_session* %50)
  store i32 %51, i32* %19, align 4
  br label %146

52:                                               ; preds = %40
  %53 = load i8, i8* %12, align 1
  %54 = load i32, i32* @l2tp_eth_dev_setup, align 4
  %55 = call %struct.net_device* @alloc_netdev(i32 8, i8* %24, i8 zeroext %53, i32 %54)
  store %struct.net_device* %55, %struct.net_device** %13, align 8
  %56 = load %struct.net_device*, %struct.net_device** %13, align 8
  %57 = icmp ne %struct.net_device* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %19, align 4
  br label %143

61:                                               ; preds = %52
  %62 = load %struct.net_device*, %struct.net_device** %13, align 8
  %63 = load %struct.net*, %struct.net** %7, align 8
  %64 = call i32 @dev_net_set(%struct.net_device* %62, %struct.net* %63)
  %65 = load %struct.net_device*, %struct.net_device** %13, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* @ETH_MAX_MTU, align 4
  %68 = load %struct.net_device*, %struct.net_device** %13, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %71 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %72 = load %struct.net_device*, %struct.net_device** %13, align 8
  %73 = call i32 @l2tp_eth_adjust_mtu(%struct.l2tp_tunnel* %70, %struct.l2tp_session* %71, %struct.net_device* %72)
  %74 = load %struct.net_device*, %struct.net_device** %13, align 8
  %75 = call %struct.l2tp_eth* @netdev_priv(%struct.net_device* %74)
  store %struct.l2tp_eth* %75, %struct.l2tp_eth** %17, align 8
  %76 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %77 = load %struct.l2tp_eth*, %struct.l2tp_eth** %17, align 8
  %78 = getelementptr inbounds %struct.l2tp_eth, %struct.l2tp_eth* %77, i32 0, i32 0
  store %struct.l2tp_session* %76, %struct.l2tp_session** %78, align 8
  %79 = load i32, i32* @l2tp_eth_dev_recv, align 4
  %80 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %81 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @l2tp_eth_delete, align 4
  %83 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %84 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @CONFIG_L2TP_DEBUGFS, align 4
  %86 = call i64 @IS_ENABLED(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %61
  %89 = load i32, i32* @l2tp_eth_show, align 4
  %90 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %91 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %61
  %93 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %94 = call %struct.l2tp_eth_sess* @l2tp_session_priv(%struct.l2tp_session* %93)
  store %struct.l2tp_eth_sess* %94, %struct.l2tp_eth_sess** %18, align 8
  %95 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %96 = call i32 @l2tp_session_inc_refcount(%struct.l2tp_session* %95)
  %97 = call i32 (...) @rtnl_lock()
  %98 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %99 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %100 = call i32 @l2tp_session_register(%struct.l2tp_session* %98, %struct.l2tp_tunnel* %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32, i32* %19, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %92
  %104 = call i32 (...) @rtnl_unlock()
  br label %138

105:                                              ; preds = %92
  %106 = load %struct.net_device*, %struct.net_device** %13, align 8
  %107 = call i32 @register_netdevice(%struct.net_device* %106)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = call i32 (...) @rtnl_unlock()
  %112 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %113 = call i32 @l2tp_session_delete(%struct.l2tp_session* %112)
  %114 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %115 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %114)
  %116 = load %struct.net_device*, %struct.net_device** %13, align 8
  %117 = call i32 @free_netdev(%struct.net_device* %116)
  %118 = load i32, i32* %19, align 4
  store i32 %118, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %148

119:                                              ; preds = %105
  %120 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %121 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.net_device*, %struct.net_device** %13, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IFNAMSIZ, align 4
  %127 = call i32 @strlcpy(i8* %122, i32 %125, i32 %126)
  %128 = load %struct.l2tp_eth_sess*, %struct.l2tp_eth_sess** %18, align 8
  %129 = getelementptr inbounds %struct.l2tp_eth_sess, %struct.l2tp_eth_sess* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.net_device*, %struct.net_device** %13, align 8
  %132 = call i32 @rcu_assign_pointer(i32 %130, %struct.net_device* %131)
  %133 = call i32 (...) @rtnl_unlock()
  %134 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %135 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %134)
  %136 = load i32, i32* @THIS_MODULE, align 4
  %137 = call i32 @__module_get(i32 %136)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %148

138:                                              ; preds = %103
  %139 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %140 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %139)
  %141 = load %struct.net_device*, %struct.net_device** %13, align 8
  %142 = call i32 @free_netdev(%struct.net_device* %141)
  br label %143

143:                                              ; preds = %138, %58
  %144 = load %struct.l2tp_session*, %struct.l2tp_session** %16, align 8
  %145 = call i32 @kfree(%struct.l2tp_session* %144)
  br label %146

146:                                              ; preds = %143, %49
  %147 = load i32, i32* %19, align 4
  store i32 %147, i32* %6, align 4
  store i32 1, i32* %20, align 4
  br label %148

148:                                              ; preds = %146, %119, %110
  %149 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %6, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local %struct.l2tp_session* @l2tp_session_create(i32, %struct.l2tp_tunnel*, i32, i32, %struct.l2tp_session_cfg*) #2

declare dso_local i64 @IS_ERR(%struct.l2tp_session*) #2

declare dso_local i32 @PTR_ERR(%struct.l2tp_session*) #2

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i8 zeroext, i32) #2

declare dso_local i32 @dev_net_set(%struct.net_device*, %struct.net*) #2

declare dso_local i32 @l2tp_eth_adjust_mtu(%struct.l2tp_tunnel*, %struct.l2tp_session*, %struct.net_device*) #2

declare dso_local %struct.l2tp_eth* @netdev_priv(%struct.net_device*) #2

declare dso_local i64 @IS_ENABLED(i32) #2

declare dso_local %struct.l2tp_eth_sess* @l2tp_session_priv(%struct.l2tp_session*) #2

declare dso_local i32 @l2tp_session_inc_refcount(%struct.l2tp_session*) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local i32 @l2tp_session_register(%struct.l2tp_session*, %struct.l2tp_tunnel*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @register_netdevice(%struct.net_device*) #2

declare dso_local i32 @l2tp_session_delete(%struct.l2tp_session*) #2

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #2

declare dso_local i32 @free_netdev(%struct.net_device*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_device*) #2

declare dso_local i32 @__module_get(i32) #2

declare dso_local i32 @kfree(%struct.l2tp_session*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
