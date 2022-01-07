; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_destroy_unres.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6mr.c_ip6mr_destroy_unres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32 }
%struct.mfc6_cache = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.nlmsgerr = type { i32 }

@NLMSG_ERROR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mr_table*, %struct.mfc6_cache*)* @ip6mr_destroy_unres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip6mr_destroy_unres(%struct.mr_table* %0, %struct.mfc6_cache* %1) #0 {
  %3 = alloca %struct.mr_table*, align 8
  %4 = alloca %struct.mfc6_cache*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca %struct.TYPE_10__, align 4
  store %struct.mr_table* %0, %struct.mr_table** %3, align 8
  store %struct.mfc6_cache* %1, %struct.mfc6_cache** %4, align 8
  %9 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %10 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %9, i32 0, i32 1
  %11 = call %struct.net* @read_pnet(i32* %10)
  store %struct.net* %11, %struct.net** %5, align 8
  %12 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %13 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %12, i32 0, i32 0
  %14 = call i32 @atomic_dec(i32* %13)
  br label %15

15:                                               ; preds = %60, %2
  %16 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %17 = getelementptr inbounds %struct.mfc6_cache, %struct.mfc6_cache* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call %struct.sk_buff* @skb_dequeue(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %23, label %61

23:                                               ; preds = %15
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call %struct.nlmsghdr* @skb_pull(%struct.sk_buff* %30, i32 4)
  store %struct.nlmsghdr* %31, %struct.nlmsghdr** %7, align 8
  %32 = load i32, i32* @NLMSG_ERROR, align 4
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = call i32 @nlmsg_msg_size(i32 4)
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @skb_trim(%struct.sk_buff* %38, i32 %41)
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8
  %46 = call i64 @nlmsg_data(%struct.nlmsghdr* %45)
  %47 = inttoptr i64 %46 to %struct.nlmsgerr*
  %48 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load %struct.net*, %struct.net** %5, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @NETLINK_CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rtnl_unicast(%struct.sk_buff* %49, %struct.net* %50, i32 %55)
  br label %60

57:                                               ; preds = %23
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  br label %60

60:                                               ; preds = %57, %29
  br label %15

61:                                               ; preds = %15
  %62 = load %struct.mfc6_cache*, %struct.mfc6_cache** %4, align 8
  %63 = call i32 @ip6mr_cache_free(%struct.mfc6_cache* %62)
  ret void
}

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_9__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_msg_size(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ip6mr_cache_free(%struct.mfc6_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
