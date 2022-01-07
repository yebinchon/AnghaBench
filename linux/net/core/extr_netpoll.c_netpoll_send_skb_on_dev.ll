; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_send_skb_on_dev.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_netpoll.c_netpoll_send_skb_on_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.netpoll_info = type { i32, i32 }
%struct.netdev_queue = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@USEC_PER_POLL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"netpoll_send_skb_on_dev(): %s enabled interrupts in poll (%pS)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_send_skb_on_dev(%struct.netpoll* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.netpoll*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.netpoll_info*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %11 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %11, i32* %7, align 4
  %12 = call i32 (...) @lockdep_assert_irqs_disabled()
  %13 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %14 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.netpoll_info* @rcu_dereference_bh(i32 %17)
  store %struct.netpoll_info* %18, %struct.netpoll_info** %9, align 8
  %19 = load %struct.netpoll_info*, %struct.netpoll_info** %9, align 8
  %20 = icmp ne %struct.netpoll_info* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %3
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call i32 @netif_running(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = call i32 @netif_device_present(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %21, %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %30)
  br label %110

32:                                               ; preds = %25
  %33 = load %struct.netpoll_info*, %struct.netpoll_info** %9, align 8
  %34 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %33, i32 0, i32 1
  %35 = call i64 @skb_queue_len(i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = call i32 @netpoll_owner_active(%struct.net_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %98, label %41

41:                                               ; preds = %37
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = call %struct.netdev_queue* @netdev_core_pick_tx(%struct.net_device* %42, %struct.sk_buff* %43, i32* null)
  store %struct.netdev_queue* %44, %struct.netdev_queue** %10, align 8
  %45 = call i64 @jiffies_to_usecs(i32 1)
  %46 = load i64, i64* @USEC_PER_POLL, align 8
  %47 = udiv i64 %45, %46
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %81, %41
  %49 = load i64, i64* %8, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %48
  %52 = load %struct.net_device*, %struct.net_device** %6, align 8
  %53 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %54 = call i64 @HARD_TX_TRYLOCK(%struct.net_device* %52, %struct.netdev_queue* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %51
  %57 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %58 = call i32 @netif_xmit_stopped(%struct.netdev_queue* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %64 = call i32 @netpoll_start_xmit(%struct.sk_buff* %61, %struct.net_device* %62, %struct.netdev_queue* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %68 = call i32 @HARD_TX_UNLOCK(%struct.net_device* %66, %struct.netdev_queue* %67)
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @dev_xmit_complete(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %84

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %51
  %75 = load %struct.netpoll*, %struct.netpoll** %4, align 8
  %76 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @netpoll_poll_dev(%struct.TYPE_4__* %77)
  %79 = load i64, i64* @USEC_PER_POLL, align 8
  %80 = call i32 @udelay(i64 %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i64, i64* %8, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %8, align 8
  br label %48

84:                                               ; preds = %72, %48
  %85 = call i32 (...) @irqs_disabled()
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %6, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @WARN_ONCE(i32 %88, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %84, %37, %32
  %99 = load i32, i32* %7, align 4
  %100 = call i64 @dev_xmit_complete(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = load %struct.netpoll_info*, %struct.netpoll_info** %9, align 8
  %104 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %103, i32 0, i32 1
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = call i32 @skb_queue_tail(i32* %104, %struct.sk_buff* %105)
  %107 = load %struct.netpoll_info*, %struct.netpoll_info** %9, align 8
  %108 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %107, i32 0, i32 0
  %109 = call i32 @schedule_delayed_work(i32* %108, i32 0)
  br label %110

110:                                              ; preds = %29, %102, %98
  ret void
}

declare dso_local i32 @lockdep_assert_irqs_disabled(...) #1

declare dso_local %struct.netpoll_info* @rcu_dereference_bh(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netpoll_owner_active(%struct.net_device*) #1

declare dso_local %struct.netdev_queue* @netdev_core_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

declare dso_local i64 @jiffies_to_usecs(i32) #1

declare dso_local i64 @HARD_TX_TRYLOCK(%struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @netpoll_start_xmit(%struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @HARD_TX_UNLOCK(%struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i64 @dev_xmit_complete(i32) #1

declare dso_local i32 @netpoll_poll_dev(%struct.TYPE_4__*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
