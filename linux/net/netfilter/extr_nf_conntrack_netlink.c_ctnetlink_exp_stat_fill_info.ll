; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_stat_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_exp_stat_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_conntrack_stat = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i32, i32, i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTNETLINK = common dso_local global i32 0, align 4
@IPCTNL_MSG_EXP_GET_STATS_CPU = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@CTA_STATS_EXP_NEW = common dso_local global i32 0, align 4
@CTA_STATS_EXP_CREATE = common dso_local global i32 0, align 4
@CTA_STATS_EXP_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i32, %struct.ip_conntrack_stat*)* @ctnetlink_exp_stat_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_exp_stat_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i32 %3, %struct.ip_conntrack_stat* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip_conntrack_stat*, align 8
  %12 = alloca %struct.nlmsghdr*, align 8
  %13 = alloca %struct.nfgenmsg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.ip_conntrack_stat* %4, %struct.ip_conntrack_stat** %11, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @NLM_F_MULTI, align 4
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @NFNL_SUBSYS_CTNETLINK, align 4
  %24 = load i32, i32* @IPCTNL_MSG_EXP_GET_STATS_CPU, align 4
  %25 = call i32 @nfnl_msg_type(i32 %23, i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %26, i64 %27, i64 %28, i32 %29, i32 12, i32 %30)
  store %struct.nlmsghdr* %31, %struct.nlmsghdr** %12, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %33 = icmp eq %struct.nlmsghdr* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %83

35:                                               ; preds = %21
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %37 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %36)
  store %struct.nfgenmsg* %37, %struct.nfgenmsg** %13, align 8
  %38 = load i32, i32* @AF_UNSPEC, align 4
  %39 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %40 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @NFNETLINK_V0, align 4
  %42 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %43 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @htons(i32 %44)
  %46 = load %struct.nfgenmsg*, %struct.nfgenmsg** %13, align 8
  %47 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load i32, i32* @CTA_STATS_EXP_NEW, align 4
  %50 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %11, align 8
  %51 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @htonl(i32 %52)
  %54 = call i64 @nla_put_be32(%struct.sk_buff* %48, i32 %49, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %74, label %56

56:                                               ; preds = %35
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load i32, i32* @CTA_STATS_EXP_CREATE, align 4
  %59 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %11, align 8
  %60 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @htonl(i32 %61)
  %63 = call i64 @nla_put_be32(%struct.sk_buff* %57, i32 %58, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %67 = load i32, i32* @CTA_STATS_EXP_DELETE, align 4
  %68 = load %struct.ip_conntrack_stat*, %struct.ip_conntrack_stat** %11, align 8
  %69 = getelementptr inbounds %struct.ip_conntrack_stat, %struct.ip_conntrack_stat* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @htonl(i32 %70)
  %72 = call i64 @nla_put_be32(%struct.sk_buff* %66, i32 %67, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65, %56, %35
  br label %82

75:                                               ; preds = %65
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %78 = call i32 @nlmsg_end(%struct.sk_buff* %76, %struct.nlmsghdr* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  br label %87

82:                                               ; preds = %74
  br label %83

83:                                               ; preds = %82, %34
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = load %struct.nlmsghdr*, %struct.nlmsghdr** %12, align 8
  %86 = call i32 @nlmsg_cancel(%struct.sk_buff* %84, %struct.nlmsghdr* %85)
  store i32 -1, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %75
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @htons(i32) #1

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
