; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_gro_cells.c_gro_cells_receive.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_gro_cells.c_gro_cells_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gro_cells = type { i32 }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.gro_cell = type { i32, i32 }

@IFF_UP = common dso_local global i32 0, align 4
@netdev_max_backlog = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gro_cells_receive(%struct.gro_cells* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.gro_cells*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.gro_cell*, align 8
  %7 = alloca i32, align 4
  store %struct.gro_cells* %0, %struct.gro_cells** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %50

23:                                               ; preds = %2
  %24 = load %struct.gro_cells*, %struct.gro_cells** %3, align 8
  %25 = getelementptr inbounds %struct.gro_cells, %struct.gro_cells* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i64 @skb_cloned(%struct.sk_buff* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i64 @netif_elide_gro(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %28, %23
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @netif_rx(%struct.sk_buff* %37)
  store i32 %38, i32* %7, align 4
  br label %72

39:                                               ; preds = %32
  %40 = load %struct.gro_cells*, %struct.gro_cells** %3, align 8
  %41 = getelementptr inbounds %struct.gro_cells, %struct.gro_cells* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.gro_cell* @this_cpu_ptr(i32 %42)
  store %struct.gro_cell* %43, %struct.gro_cell** %6, align 8
  %44 = load %struct.gro_cell*, %struct.gro_cell** %6, align 8
  %45 = getelementptr inbounds %struct.gro_cell, %struct.gro_cell* %44, i32 0, i32 1
  %46 = call i32 @skb_queue_len(i32* %45)
  %47 = load i32, i32* @netdev_max_backlog, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = call i32 @atomic_long_inc(i32* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %56, i32* %7, align 4
  br label %72

57:                                               ; preds = %39
  %58 = load %struct.gro_cell*, %struct.gro_cell** %6, align 8
  %59 = getelementptr inbounds %struct.gro_cell, %struct.gro_cell* %58, i32 0, i32 1
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = call i32 @__skb_queue_tail(i32* %59, %struct.sk_buff* %60)
  %62 = load %struct.gro_cell*, %struct.gro_cell** %6, align 8
  %63 = getelementptr inbounds %struct.gro_cell, %struct.gro_cell* %62, i32 0, i32 1
  %64 = call i32 @skb_queue_len(i32* %63)
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load %struct.gro_cell*, %struct.gro_cell** %6, align 8
  %68 = getelementptr inbounds %struct.gro_cell, %struct.gro_cell* %67, i32 0, i32 0
  %69 = call i32 @napi_schedule(i32* %68)
  br label %70

70:                                               ; preds = %66, %57
  %71 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %50, %36
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i64 @netif_elide_gro(%struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local %struct.gro_cell* @this_cpu_ptr(i32) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
