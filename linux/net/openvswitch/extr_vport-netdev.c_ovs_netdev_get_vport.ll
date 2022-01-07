; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_ovs_netdev_get_vport.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_ovs_netdev_get_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.net_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vport* @ovs_netdev_get_vport(%struct.net_device* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %4 = load %struct.net_device*, %struct.net_device** %3, align 8
  %5 = call i32 @netif_is_ovs_port(%struct.net_device* %4)
  %6 = call i64 @likely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @rcu_dereference_rtnl(i32 %11)
  %13 = inttoptr i64 %12 to %struct.vport*
  store %struct.vport* %13, %struct.vport** %2, align 8
  br label %15

14:                                               ; preds = %1
  store %struct.vport* null, %struct.vport** %2, align 8
  br label %15

15:                                               ; preds = %14, %8
  %16 = load %struct.vport*, %struct.vport** %2, align 8
  ret %struct.vport* %16
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_is_ovs_port(%struct.net_device*) #1

declare dso_local i64 @rcu_dereference_rtnl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
