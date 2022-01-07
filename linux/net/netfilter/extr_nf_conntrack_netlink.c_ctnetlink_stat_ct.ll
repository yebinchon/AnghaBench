; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_stat_ct.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_stat_ct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @ctnetlink_stat_ct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_stat_ct(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_2__, align 4
  %17 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %18 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @nlmsg_new(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %14, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %22 = icmp eq %struct.sk_buff* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %77

26:                                               ; preds = %6
  %27 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = call i32 @NETLINK_CB(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %37 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @NFNL_MSG_TYPE(i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sock_net(i32 %42)
  %44 = call i32 @ctnetlink_stat_ct_fill_info(%struct.sk_buff* %27, i32 %32, i32 %35, i32 %39, i32 %43)
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %62

48:                                               ; preds = %26
  %49 = load %struct.sock*, %struct.sock** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = call i32 @NETLINK_CB(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MSG_DONTWAIT, align 4
  %57 = call i32 @netlink_unicast(%struct.sock* %49, %struct.sk_buff* %50, i32 %55, i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %65

61:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %77

62:                                               ; preds = %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %64 = call i32 @kfree_skb(%struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %62, %60
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = sub nsw i32 0, %67
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOBUFS, align 4
  %72 = sub nsw i32 0, %71
  br label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %15, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i32 [ %72, %70 ], [ %74, %73 ]
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %61, %23
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @ctnetlink_stat_ct_fill_info(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @NFNL_MSG_TYPE(i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
