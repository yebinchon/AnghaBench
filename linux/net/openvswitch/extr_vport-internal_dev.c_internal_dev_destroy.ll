; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_internal_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-internal_dev.c_internal_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vport*)* @internal_dev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @internal_dev_destroy(%struct.vport* %0) #0 {
  %2 = alloca %struct.vport*, align 8
  store %struct.vport* %0, %struct.vport** %2, align 8
  %3 = load %struct.vport*, %struct.vport** %2, align 8
  %4 = getelementptr inbounds %struct.vport, %struct.vport* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @netif_stop_queue(%struct.TYPE_4__* %5)
  %7 = call i32 (...) @rtnl_lock()
  %8 = load %struct.vport*, %struct.vport** %2, align 8
  %9 = getelementptr inbounds %struct.vport, %struct.vport* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call i32 @dev_set_promiscuity(%struct.TYPE_4__* %10, i32 -1)
  %12 = load %struct.vport*, %struct.vport** %2, align 8
  %13 = getelementptr inbounds %struct.vport, %struct.vport* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call i32 @unregister_netdevice(%struct.TYPE_4__* %14)
  %16 = load %struct.vport*, %struct.vport** %2, align 8
  %17 = getelementptr inbounds %struct.vport, %struct.vport* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @free_percpu(i32 %20)
  %22 = call i32 (...) @rtnl_unlock()
  ret void
}

declare dso_local i32 @netif_stop_queue(%struct.TYPE_4__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_set_promiscuity(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @unregister_netdevice(%struct.TYPE_4__*) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
