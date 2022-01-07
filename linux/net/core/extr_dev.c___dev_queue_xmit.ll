; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_queue_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c___dev_queue_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, %struct.net_device* }
%struct.net_device = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32, i32 }
%struct.Qdisc = type { i64 }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@SKBTX_SCHED_TSTAMP = common dso_local global i32 0, align 4
@SCM_TSTAMP_SCHED = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Virtual device %s asks to queue packet!\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Dead loop on virtual device %s, fix it urgently!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
@egress_needed_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @__dev_queue_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dev_queue_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @skb_reset_mac_header(%struct.sk_buff* %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SKBTX_SCHED_TSTAMP, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SCM_TSTAMP_SCHED, align 4
  %33 = call i32 @__skb_tstamp_tx(%struct.sk_buff* %28, i32* null, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %2
  %35 = call i32 (...) @rcu_read_lock_bh()
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = call i32 @skb_update_prio(%struct.sk_buff* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @qdisc_pkt_len_init(%struct.sk_buff* %38)
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @skb_dst_drop(%struct.sk_buff* %47)
  br label %52

49:                                               ; preds = %34
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @skb_dst_force(%struct.sk_buff* %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.net_device*, %struct.net_device** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = call %struct.netdev_queue* @netdev_core_pick_tx(%struct.net_device* %53, %struct.sk_buff* %54, %struct.net_device* %55)
  store %struct.netdev_queue* %56, %struct.netdev_queue** %7, align 8
  %57 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %58 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.Qdisc* @rcu_dereference_bh(i32 %59)
  store %struct.Qdisc* %60, %struct.Qdisc** %8, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @trace_net_dev_queue(%struct.sk_buff* %61)
  %63 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %64 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %52
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %72 = call i32 @__dev_xmit_skb(%struct.sk_buff* %68, %struct.Qdisc* %69, %struct.net_device* %70, %struct.netdev_queue* %71)
  store i32 %72, i32* %9, align 4
  br label %146

73:                                               ; preds = %52
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IFF_UP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %136

80:                                               ; preds = %73
  %81 = call i32 (...) @smp_processor_id()
  store i32 %81, i32* %11, align 4
  %82 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %83 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %129

87:                                               ; preds = %80
  %88 = call i64 (...) @dev_xmit_recursion()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %130

91:                                               ; preds = %87
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = call %struct.sk_buff* @validate_xmit_skb(%struct.sk_buff* %92, %struct.net_device* %93, i32* %10)
  store %struct.sk_buff* %94, %struct.sk_buff** %4, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %146

98:                                               ; preds = %91
  %99 = load %struct.net_device*, %struct.net_device** %6, align 8
  %100 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32 @HARD_TX_LOCK(%struct.net_device* %99, %struct.netdev_queue* %100, i32 %101)
  %103 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %104 = call i32 @netif_xmit_stopped(%struct.netdev_queue* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %98
  %107 = call i32 (...) @dev_xmit_recursion_inc()
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %111 = call %struct.sk_buff* @dev_hard_start_xmit(%struct.sk_buff* %108, %struct.net_device* %109, %struct.netdev_queue* %110, i32* %9)
  store %struct.sk_buff* %111, %struct.sk_buff** %4, align 8
  %112 = call i32 (...) @dev_xmit_recursion_dec()
  %113 = load i32, i32* %9, align 4
  %114 = call i64 @dev_xmit_complete(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %119 = call i32 @HARD_TX_UNLOCK(%struct.net_device* %117, %struct.netdev_queue* %118)
  br label %146

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %98
  %122 = load %struct.net_device*, %struct.net_device** %6, align 8
  %123 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %124 = call i32 @HARD_TX_UNLOCK(%struct.net_device* %122, %struct.netdev_queue* %123)
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @net_crit_ratelimited(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %135

129:                                              ; preds = %80
  br label %130

130:                                              ; preds = %129, %90
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @net_crit_ratelimited(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %130, %121
  br label %136

136:                                              ; preds = %135, %73
  %137 = load i32, i32* @ENETDOWN, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %9, align 4
  %139 = call i32 (...) @rcu_read_unlock_bh()
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 2
  %142 = call i32 @atomic_long_inc(i32* %141)
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = call i32 @kfree_skb_list(%struct.sk_buff* %143)
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %3, align 4
  br label %149

146:                                              ; preds = %116, %97, %67
  %147 = call i32 (...) @rcu_read_unlock_bh()
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %146, %136
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @__skb_tstamp_tx(%struct.sk_buff*, i32*, i32, i32) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local i32 @skb_update_prio(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_pkt_len_init(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_force(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @netdev_core_pick_tx(%struct.net_device*, %struct.sk_buff*, %struct.net_device*) #1

declare dso_local %struct.Qdisc* @rcu_dereference_bh(i32) #1

declare dso_local i32 @trace_net_dev_queue(%struct.sk_buff*) #1

declare dso_local i32 @__dev_xmit_skb(%struct.sk_buff*, %struct.Qdisc*, %struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @dev_xmit_recursion(...) #1

declare dso_local %struct.sk_buff* @validate_xmit_skb(%struct.sk_buff*, %struct.net_device*, i32*) #1

declare dso_local i32 @HARD_TX_LOCK(%struct.net_device*, %struct.netdev_queue*, i32) #1

declare dso_local i32 @netif_xmit_stopped(%struct.netdev_queue*) #1

declare dso_local i32 @dev_xmit_recursion_inc(...) #1

declare dso_local %struct.sk_buff* @dev_hard_start_xmit(%struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*, i32*) #1

declare dso_local i32 @dev_xmit_recursion_dec(...) #1

declare dso_local i64 @dev_xmit_complete(i32) #1

declare dso_local i32 @HARD_TX_UNLOCK(%struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @net_crit_ratelimited(i8*, i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @kfree_skb_list(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
