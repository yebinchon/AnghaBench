; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_slave.c_hsr_del_port.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_slave.c_hsr_del_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsr_port = type { i32, i32, %struct.hsr_priv* }
%struct.hsr_priv = type { i32 }

@HSR_PT_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hsr_del_port(%struct.hsr_port* %0) #0 {
  %2 = alloca %struct.hsr_port*, align 8
  %3 = alloca %struct.hsr_priv*, align 8
  %4 = alloca %struct.hsr_port*, align 8
  store %struct.hsr_port* %0, %struct.hsr_port** %2, align 8
  %5 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %6 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %5, i32 0, i32 2
  %7 = load %struct.hsr_priv*, %struct.hsr_priv** %6, align 8
  store %struct.hsr_priv* %7, %struct.hsr_priv** %3, align 8
  %8 = load %struct.hsr_priv*, %struct.hsr_priv** %3, align 8
  %9 = load i32, i32* @HSR_PT_MASTER, align 4
  %10 = call %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv* %8, i32 %9)
  store %struct.hsr_port* %10, %struct.hsr_port** %4, align 8
  %11 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %12 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %11, i32 0, i32 1
  %13 = call i32 @list_del_rcu(i32* %12)
  %14 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %15 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %16 = icmp ne %struct.hsr_port* %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %1
  %18 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %19 = icmp ne %struct.hsr_port* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %22 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netdev_update_features(i32 %23)
  %25 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %26 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.hsr_priv*, %struct.hsr_priv** %3, align 8
  %29 = call i32 @hsr_get_max_mtu(%struct.hsr_priv* %28)
  %30 = call i32 @dev_set_mtu(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %20, %17
  %32 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %33 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netdev_rx_handler_unregister(i32 %34)
  %36 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %37 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_set_promiscuity(i32 %38, i32 -1)
  br label %40

40:                                               ; preds = %31, %1
  %41 = call i32 (...) @synchronize_rcu()
  %42 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %43 = load %struct.hsr_port*, %struct.hsr_port** %4, align 8
  %44 = icmp ne %struct.hsr_port* %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %47 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_put(i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load %struct.hsr_port*, %struct.hsr_port** %2, align 8
  %52 = call i32 @kfree(%struct.hsr_port* %51)
  ret void
}

declare dso_local %struct.hsr_port* @hsr_port_get_hsr(%struct.hsr_priv*, i32) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @netdev_update_features(i32) #1

declare dso_local i32 @dev_set_mtu(i32, i32) #1

declare dso_local i32 @hsr_get_max_mtu(%struct.hsr_priv*) #1

declare dso_local i32 @netdev_rx_handler_unregister(i32) #1

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @dev_put(i32) #1

declare dso_local i32 @kfree(%struct.hsr_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
