; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_stat_ct_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_stat_ct_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTNETLINK = common dso_local global i32 0, align 4
@IPCTNL_MSG_CT_GET_STATS = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@CTA_STATS_GLOBAL_ENTRIES = common dso_local global i32 0, align 4
@CTA_STATS_GLOBAL_MAX_ENTRIES = common dso_local global i32 0, align 4
@nf_conntrack_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i64, %struct.net*)* @ctnetlink_stat_ct_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_stat_ct_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i64 %3, %struct.net* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.net* %4, %struct.net** %11, align 8
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @NLM_F_MULTI, align 4
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  store i32 %23, i32* %14, align 4
  %24 = load %struct.net*, %struct.net** %11, align 8
  %25 = getelementptr inbounds %struct.net, %struct.net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @atomic_read(i32* %26)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* @NFNL_SUBSYS_CTNETLINK, align 4
  %29 = load i32, i32* @IPCTNL_MSG_CT_GET_STATS, align 4
  %30 = call i32 @nfnl_msg_type(i32 %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %31, i64 %32, i64 %33, i32 %34, i32 16, i32 %35)
  store %struct.nlmsghdr* %36, %struct.nlmsghdr** %12, align 8
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %38 = icmp eq %struct.nlmsghdr* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  br label %74

40:                                               ; preds = %22
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %42 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %41)
  store %struct.nfgenmsg* %42, %struct.nfgenmsg** %13, align 8
  %43 = load i32, i32* @AF_UNSPEC, align 4
  %44 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %45 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @NFNETLINK_V0, align 4
  %47 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %48 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %50 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load i32, i32* @CTA_STATS_GLOBAL_ENTRIES, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @htonl(i32 %53)
  %55 = call i64 @nla_put_be32(%struct.sk_buff* %51, i32 %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %73

58:                                               ; preds = %40
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = load i32, i32* @CTA_STATS_GLOBAL_MAX_ENTRIES, align 4
  %61 = load i32, i32* @nf_conntrack_max, align 4
  %62 = call i32 @htonl(i32 %61)
  %63 = call i64 @nla_put_be32(%struct.sk_buff* %59, i32 %60, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %73

66:                                               ; preds = %58
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %69 = call i32 @nlmsg_end(%struct.sk_buff* %67, %struct.nlmsghdr* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %6, align 4
  br label %78

73:                                               ; preds = %65, %57
  br label %74

74:                                               ; preds = %73, %39
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %77 = call i32 @nlmsg_cancel(%struct.sk_buff* %75, %struct.nlmsghdr* %76)
  store i32 -1, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %66
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
