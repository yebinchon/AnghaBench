; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dequeue_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_dequeue_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32, %struct.sk_buff* (%struct.Qdisc*)*, %struct.TYPE_2__, i32, %struct.netdev_queue* }
%struct.TYPE_2__ = type { i32 }
%struct.netdev_queue = type { i32 }

@TCQ_F_NOLOCK = common dso_local global i32 0, align 4
@TCQ_F_ONETXQUEUE = common dso_local global i32 0, align 4
@SKB_XOFF_MAGIC = common dso_local global %struct.sk_buff* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.Qdisc*, i32*, i32*)* @dequeue_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @dequeue_skb(%struct.Qdisc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %12 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %11, i32 0, i32 4
  %13 = load %struct.netdev_queue*, %struct.netdev_queue** %12, align 8
  store %struct.netdev_queue* %13, %struct.netdev_queue** %8, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %14 = load i32*, i32** %7, align 8
  store i32 1, i32* %14, align 4
  %15 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %16 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %15, i32 0, i32 3
  %17 = call i32 @skb_queue_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %3
  store i32* null, i32** %10, align 8
  %24 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %25 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @TCQ_F_NOLOCK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %32 = call i32* @qdisc_lock(%struct.Qdisc* %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @spin_lock(i32* %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %37 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %36, i32 0, i32 3
  %38 = call %struct.sk_buff* @skb_peek(i32* %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %9, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %35
  %42 = load i32*, i32** %10, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %44, %41
  br label %96

48:                                               ; preds = %35
  %49 = load i32*, i32** %6, align 8
  store i32 0, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %51 = call i64 @xfrm_offload(%struct.sk_buff* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32*, i32** %6, align 8
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %57 = getelementptr inbounds %struct.netdev_queue, %struct.netdev_queue* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call %struct.netdev_queue* @skb_get_tx_queue(i32 %58, %struct.sk_buff* %59)
  store %struct.netdev_queue* %60, %struct.netdev_queue** %8, align 8
  %61 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %62 = call i64 @netif_xmit_frozen_or_stopped(%struct.netdev_queue* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %55
  %65 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %66 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %65, i32 0, i32 3
  %67 = call %struct.sk_buff* @__skb_dequeue(i32* %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %9, align 8
  %68 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %69 = call i64 @qdisc_is_percpu_stats(%struct.Qdisc* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = call i32 @qdisc_qstats_cpu_backlog_dec(%struct.Qdisc* %72, %struct.sk_buff* %73)
  %75 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %76 = call i32 @qdisc_qstats_cpu_qlen_dec(%struct.Qdisc* %75)
  br label %86

77:                                               ; preds = %64
  %78 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %80 = call i32 @qdisc_qstats_backlog_dec(%struct.Qdisc* %78, %struct.sk_buff* %79)
  %81 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %82 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %77, %71
  br label %88

87:                                               ; preds = %55
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %88

88:                                               ; preds = %87, %86
  %89 = load i32*, i32** %10, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @spin_unlock(i32* %92)
  br label %94

94:                                               ; preds = %91, %88
  br label %149

95:                                               ; preds = %3
  br label %96

96:                                               ; preds = %95, %47
  %97 = load i32*, i32** %6, align 8
  store i32 1, i32* %97, align 4
  %98 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %99 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @TCQ_F_ONETXQUEUE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %96
  %105 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %106 = call i64 @netif_xmit_frozen_or_stopped(%struct.netdev_queue* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %109, %struct.sk_buff** %4, align 8
  br label %157

110:                                              ; preds = %104, %96
  %111 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %112 = call %struct.sk_buff* @qdisc_dequeue_skb_bad_txq(%struct.Qdisc* %111)
  store %struct.sk_buff* %112, %struct.sk_buff** %9, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = ptrtoint %struct.sk_buff* %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** @SKB_XOFF_MAGIC, align 8
  %120 = icmp eq %struct.sk_buff* %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %157

122:                                              ; preds = %117
  br label %132

123:                                              ; preds = %110
  %124 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %125 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %124, i32 0, i32 1
  %126 = load %struct.sk_buff* (%struct.Qdisc*)*, %struct.sk_buff* (%struct.Qdisc*)** %125, align 8
  %127 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %128 = call %struct.sk_buff* %126(%struct.Qdisc* %127)
  store %struct.sk_buff* %128, %struct.sk_buff** %9, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %130 = icmp ne %struct.sk_buff* %129, null
  br i1 %130, label %131, label %148

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %122
  %133 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %134 = call i64 @qdisc_may_bulk(%struct.Qdisc* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %132
  %137 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %139 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @try_bulk_dequeue_skb(%struct.Qdisc* %137, %struct.sk_buff* %138, %struct.netdev_queue* %139, i32* %140)
  br label %147

142:                                              ; preds = %132
  %143 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %145 = load i32*, i32** %7, align 8
  %146 = call i32 @try_bulk_dequeue_skb_slow(%struct.Qdisc* %143, %struct.sk_buff* %144, i32* %145)
  br label %147

147:                                              ; preds = %142, %136
  br label %148

148:                                              ; preds = %147, %123
  br label %149

149:                                              ; preds = %148, %94
  %150 = load %struct.Qdisc*, %struct.Qdisc** %5, align 8
  %151 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %155 = call i32 @trace_qdisc_dequeue(%struct.Qdisc* %150, %struct.netdev_queue* %151, i32 %153, %struct.sk_buff* %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %156, %struct.sk_buff** %4, align 8
  br label %157

157:                                              ; preds = %149, %121, %108
  %158 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %158
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @xfrm_offload(%struct.sk_buff*) #1

declare dso_local %struct.netdev_queue* @skb_get_tx_queue(i32, %struct.sk_buff*) #1

declare dso_local i64 @netif_xmit_frozen_or_stopped(%struct.netdev_queue*) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #1

declare dso_local i64 @qdisc_is_percpu_stats(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_cpu_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local i32 @qdisc_qstats_cpu_qlen_dec(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_qstats_backlog_dec(%struct.Qdisc*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @qdisc_dequeue_skb_bad_txq(%struct.Qdisc*) #1

declare dso_local i64 @qdisc_may_bulk(%struct.Qdisc*) #1

declare dso_local i32 @try_bulk_dequeue_skb(%struct.Qdisc*, %struct.sk_buff*, %struct.netdev_queue*, i32*) #1

declare dso_local i32 @try_bulk_dequeue_skb_slow(%struct.Qdisc*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @trace_qdisc_dequeue(%struct.Qdisc*, %struct.netdev_queue*, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
