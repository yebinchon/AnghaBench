; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_defrag.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_fragment.c_ip_defrag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device* }

@IPSTATS_MIB_REASMREQDS = common dso_local global i32 0, align 4
@IPSTATS_MIB_REASMFAILS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_defrag(%struct.net* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipq*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = sext i32 %14 to i64
  %18 = inttoptr i64 %17 to %struct.net_device*
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi %struct.net_device* [ %18, %16 ], [ %23, %19 ]
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call i32 @l3mdev_master_ifindex_rcu(%struct.net_device* %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.net*, %struct.net** %5, align 8
  %29 = load i32, i32* @IPSTATS_MIB_REASMREQDS, align 4
  %30 = call i32 @__IP_INC_STATS(%struct.net* %28, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_orphan(%struct.sk_buff* %31)
  %33 = load %struct.net*, %struct.net** %5, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call i32 @ip_hdr(%struct.sk_buff* %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call %struct.ipq* @ip_find(%struct.net* %33, i32 %35, i32 %36, i32 %37)
  store %struct.ipq* %38, %struct.ipq** %10, align 8
  %39 = load %struct.ipq*, %struct.ipq** %10, align 8
  %40 = icmp ne %struct.ipq* %39, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %24
  %42 = load %struct.ipq*, %struct.ipq** %10, align 8
  %43 = getelementptr inbounds %struct.ipq, %struct.ipq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.ipq*, %struct.ipq** %10, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = call i32 @ip_frag_queue(%struct.ipq* %46, %struct.sk_buff* %47)
  store i32 %48, i32* %11, align 4
  %49 = load %struct.ipq*, %struct.ipq** %10, align 8
  %50 = getelementptr inbounds %struct.ipq, %struct.ipq* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.ipq*, %struct.ipq** %10, align 8
  %54 = call i32 @ipq_put(%struct.ipq* %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %64

56:                                               ; preds = %24
  %57 = load %struct.net*, %struct.net** %5, align 8
  %58 = load i32, i32* @IPSTATS_MIB_REASMFAILS, align 4
  %59 = call i32 @__IP_INC_STATS(%struct.net* %57, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @kfree_skb(%struct.sk_buff* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %56, %41
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_4__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @l3mdev_master_ifindex_rcu(%struct.net_device*) #1

declare dso_local i32 @__IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local %struct.ipq* @ip_find(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ip_frag_queue(%struct.ipq*, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ipq_put(%struct.ipq*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
