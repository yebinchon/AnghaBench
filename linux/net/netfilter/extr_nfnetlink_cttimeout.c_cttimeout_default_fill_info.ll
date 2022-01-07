; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_cttimeout_default_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_cttimeout_default_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conntrack_l4proto = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*, i32*)* }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }
%struct.nlattr = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTNETLINK_TIMEOUT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@CTA_TIMEOUT_L3PROTO = common dso_local global i32 0, align 4
@CTA_TIMEOUT_L4PROTO = common dso_local global i32 0, align 4
@CTA_TIMEOUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sk_buff*, i64, i64, i64, i32, i32, %struct.nf_conntrack_l4proto*, i32*)* @cttimeout_default_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cttimeout_default_fill_info(%struct.net* %0, %struct.sk_buff* %1, i64 %2, i64 %3, i64 %4, i32 %5, i32 %6, %struct.nf_conntrack_l4proto* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nf_conntrack_l4proto*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.nlmsghdr*, align 8
  %21 = alloca %struct.nfgenmsg*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.nlattr*, align 8
  %24 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %11, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store %struct.nf_conntrack_l4proto* %7, %struct.nf_conntrack_l4proto** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %9
  %28 = load i32, i32* @NLM_F_MULTI, align 4
  br label %30

29:                                               ; preds = %9
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* @NFNL_SUBSYS_CTNETLINK_TIMEOUT, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @nfnl_msg_type(i32 %32, i32 %33)
  store i32 %34, i32* %16, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* %22, align 4
  %40 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %35, i64 %36, i64 %37, i32 %38, i32 16, i32 %39)
  store %struct.nlmsghdr* %40, %struct.nlmsghdr** %20, align 8
  %41 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %42 = icmp eq %struct.nlmsghdr* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %98

44:                                               ; preds = %30
  %45 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %46 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %45)
  store %struct.nfgenmsg* %46, %struct.nfgenmsg** %21, align 8
  %47 = load i32, i32* @AF_UNSPEC, align 4
  %48 = load %struct.nfgenmsg*, %struct.nfgenmsg** %21, align 8
  %49 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @NFNETLINK_V0, align 4
  %51 = load %struct.nfgenmsg*, %struct.nfgenmsg** %21, align 8
  %52 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nfgenmsg*, %struct.nfgenmsg** %21, align 8
  %54 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = load i32, i32* @CTA_TIMEOUT_L3PROTO, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @htons(i32 %57)
  %59 = call i64 @nla_put_be16(%struct.sk_buff* %55, i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %44
  %62 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %63 = load i32, i32* @CTA_TIMEOUT_L4PROTO, align 4
  %64 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %18, align 8
  %65 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @nla_put_u8(%struct.sk_buff* %62, i32 %63, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61, %44
  br label %99

70:                                               ; preds = %61
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = load i32, i32* @CTA_TIMEOUT_DATA, align 4
  %73 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %71, i32 %72)
  store %struct.nlattr* %73, %struct.nlattr** %23, align 8
  %74 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %75 = icmp ne %struct.nlattr* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %99

77:                                               ; preds = %70
  %78 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %18, align 8
  %79 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.sk_buff*, i32*)*, i32 (%struct.sk_buff*, i32*)** %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = call i32 %81(%struct.sk_buff* %82, i32* %83)
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %24, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %99

88:                                               ; preds = %77
  %89 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %91 = call i32 @nla_nest_end(%struct.sk_buff* %89, %struct.nlattr* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %93 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %94 = call i32 @nlmsg_end(%struct.sk_buff* %92, %struct.nlmsghdr* %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %10, align 4
  br label %103

98:                                               ; preds = %43
  br label %99

99:                                               ; preds = %98, %87, %76, %69
  %100 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %101 = load %struct.nlmsghdr*, %struct.nlmsghdr** %20, align 8
  %102 = call i32 @nlmsg_cancel(%struct.sk_buff* %100, %struct.nlmsghdr* %101)
  store i32 -1, i32* %10, align 4
  br label %103

103:                                              ; preds = %99, %88
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
