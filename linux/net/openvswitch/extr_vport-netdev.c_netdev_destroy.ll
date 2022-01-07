; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_netdev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-netdev.c_netdev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32, i32 }

@vport_netdev_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*)* @netdev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netdev_destroy(%struct.vport* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  store %struct.vport* %0, %struct.vport** %2, align 8
  %3 = call i32 (...) @rtnl_lock()
  %4 = load %struct.vport*, %struct.vport** %2, align 8
  %5 = getelementptr inbounds %struct.vport, %struct.vport* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @netif_is_ovs_port(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.vport*, %struct.vport** %2, align 8
  %11 = call i32 @ovs_netdev_detach_dev(%struct.vport* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = call i32 (...) @rtnl_unlock()
  %14 = load %struct.vport*, %struct.vport** %2, align 8
  %15 = getelementptr inbounds %struct.vport, %struct.vport* %14, i32 0, i32 0
  %16 = load i32, i32* @vport_netdev_free, align 4
  %17 = call i32 @call_rcu(i32* %15, i32 %16)
  ret void
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i64 @netif_is_ovs_port(i32) #1

declare dso_local i32 @ovs_netdev_detach_dev(%struct.vport*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
