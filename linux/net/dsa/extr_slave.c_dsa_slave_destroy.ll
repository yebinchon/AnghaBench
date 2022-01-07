; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_slave.c_dsa_slave_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dsa_port = type { i32 }
%struct.dsa_slave_priv = type { i32 }

@DSA_PORT_UNREGISTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsa_slave_destroy(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca %struct.dsa_slave_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.dsa_port* @dsa_slave_to_port(%struct.net_device* %5)
  store %struct.dsa_port* %6, %struct.dsa_port** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.dsa_slave_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.dsa_slave_priv* %8, %struct.dsa_slave_priv** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_carrier_off(%struct.net_device* %9)
  %11 = call i32 (...) @rtnl_lock()
  %12 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %13 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @phylink_disconnect_phy(i32 %14)
  %16 = call i32 (...) @rtnl_unlock()
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = load i32, i32* @DSA_PORT_UNREGISTER, align 4
  %19 = call i32 @dsa_slave_notify(%struct.net_device* %17, i32 %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @unregister_netdev(%struct.net_device* %20)
  %22 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %23 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @phylink_destroy(i32 %24)
  %26 = load %struct.dsa_slave_priv*, %struct.dsa_slave_priv** %4, align 8
  %27 = getelementptr inbounds %struct.dsa_slave_priv, %struct.dsa_slave_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free_percpu(i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @free_netdev(%struct.net_device* %30)
  ret void
}

declare dso_local %struct.dsa_port* @dsa_slave_to_port(%struct.net_device*) #1

declare dso_local %struct.dsa_slave_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @phylink_disconnect_phy(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @dsa_slave_notify(%struct.net_device*, i32) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @phylink_destroy(i32) #1

declare dso_local i32 @free_percpu(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
