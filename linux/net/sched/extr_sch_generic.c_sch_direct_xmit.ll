; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_sch_direct_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_generic.c_sch_direct_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BUG %s code %d qlen %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sch_direct_xmit(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.net_device* %2, %struct.netdev_queue* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store %struct.netdev_queue* %3, %struct.netdev_queue** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %16, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @spin_unlock(i32* %20)
  br label %22

22:                                               ; preds = %19, %6
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %10, align 8
  %28 = call %struct.sk_buff* @validate_xmit_skb_list(%struct.sk_buff* %26, %struct.net_device* %27, i32* %15)
  store %struct.sk_buff* %28, %struct.sk_buff** %8, align 8
  br label %29

29:                                               ; preds = %25, %22
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call i64 @likely(%struct.sk_buff* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %36 = call i32 (...) @smp_processor_id()
  %37 = call i32 @HARD_TX_LOCK(%struct.net_device* %34, %struct.netdev_queue* %35, i32 %36)
  %38 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %39 = call i32 @netif_xmit_frozen_or_stopped(%struct.netdev_queue* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %45 = call %struct.sk_buff* @dev_hard_start_xmit(%struct.sk_buff* %42, %struct.net_device* %43, %struct.netdev_queue* %44, i32* %14)
  store %struct.sk_buff* %45, %struct.sk_buff** %8, align 8
  br label %46

46:                                               ; preds = %41, %33
  %47 = load %struct.net_device*, %struct.net_device** %10, align 8
  %48 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %49 = call i32 @HARD_TX_UNLOCK(%struct.net_device* %47, %struct.netdev_queue* %48)
  br label %57

50:                                               ; preds = %29
  %51 = load i32*, i32** %12, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @spin_lock(i32* %54)
  br label %56

56:                                               ; preds = %53, %50
  store i32 1, i32* %7, align 4
  br label %89

57:                                               ; preds = %46
  %58 = load i32*, i32** %12, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %12, align 8
  %62 = call i32 @spin_lock(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @dev_xmit_complete(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @NETDEV_TX_BUSY, align 4
  %70 = icmp ne i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.net_device*, %struct.net_device** %10, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %80 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %74, %67
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %87 = call i32 @dev_requeue_skb(%struct.sk_buff* %85, %struct.Qdisc* %86)
  store i32 0, i32* %7, align 4
  br label %89

88:                                               ; preds = %63
  store i32 1, i32* %7, align 4
  br label %89

89:                                               ; preds = %88, %84, %56
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sk_buff* @validate_xmit_skb_list(%struct.sk_buff*, %struct.net_device*, i32*) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @HARD_TX_LOCK(%struct.net_device*, %struct.netdev_queue*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_xmit_frozen_or_stopped(%struct.netdev_queue*) #1

declare dso_local %struct.sk_buff* @dev_hard_start_xmit(%struct.sk_buff*, %struct.net_device*, %struct.netdev_queue*, i32*) #1

declare dso_local i32 @HARD_TX_UNLOCK(%struct.net_device*, %struct.netdev_queue*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_xmit_complete(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32, i32, i32) #1

declare dso_local i32 @dev_requeue_skb(%struct.sk_buff*, %struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
