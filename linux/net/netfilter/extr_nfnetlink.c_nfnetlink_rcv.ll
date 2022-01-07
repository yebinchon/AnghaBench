; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink.c_nfnetlink_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink.c_nfnetlink_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nlmsghdr = type { i64, i64 }

@NLMSG_HDRLEN = common dso_local global i64 0, align 8
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NFNL_MSG_BATCH_BEGIN = common dso_local global i64 0, align 8
@nfnetlink_rcv_msg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @nfnetlink_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfnetlink_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.nlmsghdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff* %4)
  store %struct.nlmsghdr* %5, %struct.nlmsghdr** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NLMSG_HDRLEN, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %25, label %11

11:                                               ; preds = %1
  %12 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %13 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NLMSG_HDRLEN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17, %11, %1
  br label %51

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = load i32, i32* @CAP_NET_ADMIN, align 4
  %29 = call i32 @netlink_net_capable(%struct.sk_buff* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %34 = load i32, i32* @EPERM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @netlink_ack(%struct.sk_buff* %32, %struct.nlmsghdr* %33, i32 %35, i32* null)
  br label %51

37:                                               ; preds = %26
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %39 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NFNL_MSG_BATCH_BEGIN, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8
  %46 = call i32 @nfnetlink_rcv_skb_batch(%struct.sk_buff* %44, %struct.nlmsghdr* %45)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %49 = load i32, i32* @nfnetlink_rcv_msg, align 4
  %50 = call i32 @netlink_rcv_skb(%struct.sk_buff* %48, i32 %49)
  br label %51

51:                                               ; preds = %25, %31, %47, %43
  ret void
}

declare dso_local %struct.nlmsghdr* @nlmsg_hdr(%struct.sk_buff*) #1

declare dso_local i32 @netlink_net_capable(%struct.sk_buff*, i32) #1

declare dso_local i32 @netlink_ack(%struct.sk_buff*, %struct.nlmsghdr*, i32, i32*) #1

declare dso_local i32 @nfnetlink_rcv_skb_batch(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @netlink_rcv_skb(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
