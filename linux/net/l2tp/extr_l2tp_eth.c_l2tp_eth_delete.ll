; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_eth.c_l2tp_eth_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32 }
%struct.l2tp_eth_sess = type { i32 }
%struct.net_device = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2tp_session*)* @l2tp_eth_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2tp_eth_delete(%struct.l2tp_session* %0) #0 {
  %2 = alloca %struct.l2tp_session*, align 8
  %3 = alloca %struct.l2tp_eth_sess*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.l2tp_session* %0, %struct.l2tp_session** %2, align 8
  %5 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %6 = icmp ne %struct.l2tp_session* %5, null
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load %struct.l2tp_session*, %struct.l2tp_session** %2, align 8
  %9 = call %struct.l2tp_eth_sess* @l2tp_session_priv(%struct.l2tp_session* %8)
  store %struct.l2tp_eth_sess* %9, %struct.l2tp_eth_sess** %3, align 8
  %10 = call i32 (...) @rtnl_lock()
  %11 = load %struct.l2tp_eth_sess*, %struct.l2tp_eth_sess** %3, align 8
  %12 = getelementptr inbounds %struct.l2tp_eth_sess, %struct.l2tp_eth_sess* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net_device* @rtnl_dereference(i32 %13)
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %7
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @unregister_netdevice(%struct.net_device* %18)
  %20 = call i32 (...) @rtnl_unlock()
  %21 = load i32, i32* @THIS_MODULE, align 4
  %22 = call i32 @module_put(i32 %21)
  br label %25

23:                                               ; preds = %7
  %24 = call i32 (...) @rtnl_unlock()
  br label %25

25:                                               ; preds = %23, %17
  br label %26

26:                                               ; preds = %25, %1
  ret void
}

declare dso_local %struct.l2tp_eth_sess* @l2tp_session_priv(%struct.l2tp_session*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
