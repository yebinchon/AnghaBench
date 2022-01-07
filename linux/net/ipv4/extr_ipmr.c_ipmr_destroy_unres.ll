; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_destroy_unres.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ipmr.c_ipmr_destroy_unres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mr_table = type { i32, i32 }
%struct.mfc_cache = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsgerr = type { i32, i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@NLMSG_ERROR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mr_table*, %struct.mfc_cache*)* @ipmr_destroy_unres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipmr_destroy_unres(%struct.mr_table* %0, %struct.mfc_cache* %1) #0 {
  %3 = alloca %struct.mr_table*, align 8
  %4 = alloca %struct.mfc_cache*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlmsgerr*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.TYPE_10__, align 4
  store %struct.mr_table* %0, %struct.mr_table** %3, align 8
  store %struct.mfc_cache* %1, %struct.mfc_cache** %4, align 8
  %10 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %11 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %10, i32 0, i32 1
  %12 = call %struct.net* @read_pnet(i32* %11)
  store %struct.net* %12, %struct.net** %5, align 8
  %13 = load %struct.mr_table*, %struct.mr_table** %3, align 8
  %14 = getelementptr inbounds %struct.mr_table, %struct.mr_table* %13, i32 0, i32 0
  %15 = call i32 @atomic_dec(i32* %14)
  br label %16

16:                                               ; preds = %64, %2
  %17 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  %18 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call %struct.sk_buff* @skb_dequeue(i32* %21)
  store %struct.sk_buff* %22, %struct.sk_buff** %6, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %24, label %65

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.TYPE_9__* @ip_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.nlmsghdr* @skb_pull(%struct.sk_buff* %31, i32 4)
  store %struct.nlmsghdr* %32, %struct.nlmsghdr** %8, align 8
  %33 = load i32, i32* @NLMSG_ERROR, align 4
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = call i32 @nlmsg_msg_size(i32 8)
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %38 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %41 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @skb_trim(%struct.sk_buff* %39, i32 %42)
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8
  %45 = call %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr* %44)
  store %struct.nlmsgerr* %45, %struct.nlmsgerr** %7, align 8
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  %48 = load %struct.nlmsgerr*, %struct.nlmsgerr** %7, align 8
  %49 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nlmsgerr*, %struct.nlmsgerr** %7, align 8
  %51 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %50, i32 0, i32 0
  %52 = call i32 @memset(i32* %51, i32 0, i32 4)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = load %struct.net*, %struct.net** %5, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = call i32 @NETLINK_CB(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rtnl_unicast(%struct.sk_buff* %53, %struct.net* %54, i32 %59)
  br label %64

61:                                               ; preds = %24
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @kfree_skb(%struct.sk_buff* %62)
  br label %64

64:                                               ; preds = %61, %30
  br label %16

65:                                               ; preds = %16
  %66 = load %struct.mfc_cache*, %struct.mfc_cache** %4, align 8
  %67 = call i32 @ipmr_cache_free(%struct.mfc_cache* %66)
  ret void
}

declare dso_local %struct.net* @read_pnet(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local %struct.TYPE_9__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.nlmsghdr* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_msg_size(i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.nlmsgerr* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @rtnl_unicast(%struct.sk_buff*, %struct.net*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipmr_cache_free(%struct.mfc_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
