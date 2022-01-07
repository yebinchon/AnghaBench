; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_update_lockdep_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netdev_update_lockdep_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netdev_update_lockdep_key(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_queue*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 1
  %7 = call i32 @lockdep_unregister_key(i32* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 2
  %10 = call i32 @lockdep_unregister_key(i32* %9)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = call i32 @lockdep_register_key(i32* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 2
  %16 = call i32 @lockdep_register_key(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 3
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 2
  %21 = call i32 @lockdep_set_class(i32* %18, i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %37, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %29, i32 %30)
  store %struct.netdev_queue* %31, %struct.netdev_queue** %3, align 8
  %32 = load %struct.netdev_queue*, %struct.netdev_queue** %3, align 8
  %33 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %32, i32 0, i32 0
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = call i32 @lockdep_set_class(i32* %33, i32* %35)
  br label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %22

40:                                               ; preds = %22
  ret void
}

declare dso_local i32 @lockdep_unregister_key(i32*) #1

declare dso_local i32 @lockdep_register_key(i32*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
