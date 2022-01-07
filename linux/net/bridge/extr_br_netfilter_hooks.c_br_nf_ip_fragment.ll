; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_ip_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_netfilter_hooks.c_br_nf_ip_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.iphdr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@IP_DF = common dso_local global i32 0, align 4
@IPSTATS_MIB_FRAGFAILS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*)* @br_nf_ip_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br_nf_ip_fragment(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iphdr*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %3, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %9, align 8
  %12 = load %struct.sock*, %struct.sock** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %14 = call i32 @ip_skb_dst_mtu(%struct.sock* %12, %struct.sk_buff* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %15)
  store %struct.iphdr* %16, %struct.iphdr** %11, align 8
  %17 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %18 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IP_DF, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24, %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ugt i32 %39, %40
  br label %42

42:                                               ; preds = %35, %29
  %43 = phi i1 [ false, %29 ], [ %41, %35 ]
  br label %44

44:                                               ; preds = %42, %24
  %45 = phi i1 [ true, %24 ], [ %43, %42 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.net*, %struct.net** %6, align 8
  %51 = load i32, i32* @IPSTATS_MIB_FRAGFAILS, align 4
  %52 = call i32 @IP_INC_STATS(%struct.net* %50, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  %55 = load i32, i32* @EMSGSIZE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %63

57:                                               ; preds = %44
  %58 = load %struct.net*, %struct.net** %6, align 8
  %59 = load %struct.sock*, %struct.sock** %7, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = load i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)** %9, align 8
  %62 = call i32 @ip_do_fragment(%struct.net* %58, %struct.sock* %59, %struct.sk_buff* %60, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* %61)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %49
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @ip_skb_dst_mtu(%struct.sock*, %struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ip_do_fragment(%struct.net*, %struct.sock*, %struct.sk_buff*, i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
