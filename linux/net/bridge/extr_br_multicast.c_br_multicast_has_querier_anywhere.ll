; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_has_querier_anywhere.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_multicast.c_br_multicast_has_querier_anywhere.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_bridge = type { i32 }
%struct.net_bridge_port = type { %struct.net_bridge* }
%struct.ethhdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_multicast_has_querier_anywhere(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_bridge*, align 8
  %6 = alloca %struct.net_bridge_port*, align 8
  %7 = alloca %struct.ethhdr, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @netif_is_bridge_port(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.net_bridge_port* @br_port_get_rcu(%struct.net_device* %15)
  store %struct.net_bridge_port* %16, %struct.net_bridge_port** %6, align 8
  %17 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %18 = icmp ne %struct.net_bridge_port* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %21 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %20, i32 0, i32 0
  %22 = load %struct.net_bridge*, %struct.net_bridge** %21, align 8
  %23 = icmp ne %struct.net_bridge* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14
  br label %35

25:                                               ; preds = %19
  %26 = load %struct.net_bridge_port*, %struct.net_bridge_port** %6, align 8
  %27 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %26, i32 0, i32 0
  %28 = load %struct.net_bridge*, %struct.net_bridge** %27, align 8
  store %struct.net_bridge* %28, %struct.net_bridge** %5, align 8
  %29 = call i32 @memset(%struct.ethhdr* %7, i32 0, i32 4)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @htons(i32 %30)
  %32 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.net_bridge*, %struct.net_bridge** %5, align 8
  %34 = call i32 @br_multicast_querier_exists(%struct.net_bridge* %33, %struct.ethhdr* %7)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %25, %24, %13
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @netif_is_bridge_port(%struct.net_device*) #1

declare dso_local %struct.net_bridge_port* @br_port_get_rcu(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ethhdr*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @br_multicast_querier_exists(%struct.net_bridge*, %struct.ethhdr*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
