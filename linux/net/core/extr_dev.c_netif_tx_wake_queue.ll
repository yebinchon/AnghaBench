; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_tx_wake_queue.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_tx_wake_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_queue = type { i32, i32 }
%struct.Qdisc = type { i32 }

@__QUEUE_STATE_DRV_XOFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netif_tx_wake_queue(%struct.netdev_queue* %0) #0 {
  %2 = alloca %struct.netdev_queue*, align 8
  %3 = alloca %struct.Qdisc*, align 8
  store %struct.netdev_queue* %0, %struct.netdev_queue** %2, align 8
  %4 = load i32, i32* @__QUEUE_STATE_DRV_XOFF, align 4
  %5 = load %struct.netdev_queue*, %struct.netdev_queue** %2, align 8
  %6 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %5, i32 0, i32 1
  %7 = call i64 @test_and_clear_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.netdev_queue*, %struct.netdev_queue** %2, align 8
  %12 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.Qdisc* @rcu_dereference(i32 %13)
  store %struct.Qdisc* %14, %struct.Qdisc** %3, align 8
  %15 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %16 = call i32 @__netif_schedule(%struct.Qdisc* %15)
  %17 = call i32 (...) @rcu_read_unlock()
  br label %18

18:                                               ; preds = %9, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.Qdisc* @rcu_dereference(i32) #1

declare dso_local i32 @__netif_schedule(%struct.Qdisc*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
