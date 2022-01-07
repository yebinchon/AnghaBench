; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_ctnl_timeout_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nfnetlink_cttimeout.c_ctnl_timeout_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ctnl_timeout = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.nf_conntrack_l4proto* }
%struct.nf_conntrack_l4proto = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.sk_buff*, i32*)* }
%struct.nlmsghdr = type { i32 }
%struct.nfgenmsg = type { i64, i32, i32 }
%struct.nlattr = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NFNL_SUBSYS_CTNETLINK_TIMEOUT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@CTA_TIMEOUT_NAME = common dso_local global i32 0, align 4
@CTA_TIMEOUT_L3PROTO = common dso_local global i32 0, align 4
@CTA_TIMEOUT_L4PROTO = common dso_local global i32 0, align 4
@CTA_TIMEOUT_USE = common dso_local global i32 0, align 4
@CTA_TIMEOUT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i64, i64, i64, i32, %struct.ctnl_timeout*)* @ctnl_timeout_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnl_timeout_fill_info(%struct.sk_buff* %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.ctnl_timeout* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ctnl_timeout*, align 8
  %14 = alloca %struct.nlmsghdr*, align 8
  %15 = alloca %struct.nfgenmsg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nf_conntrack_l4proto*, align 8
  %18 = alloca %struct.nlattr*, align 8
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ctnl_timeout* %5, %struct.ctnl_timeout** %13, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @NLM_F_MULTI, align 4
  br label %25

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  store i32 %26, i32* %16, align 4
  %27 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %13, align 8
  %28 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %29, align 8
  store %struct.nf_conntrack_l4proto* %30, %struct.nf_conntrack_l4proto** %17, align 8
  %31 = load i32, i32* @NFNL_SUBSYS_CTNETLINK_TIMEOUT, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @nfnl_msg_type(i32 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %34, i64 %35, i64 %36, i32 %37, i32 16, i32 %38)
  store %struct.nlmsghdr* %39, %struct.nlmsghdr** %14, align 8
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %41 = icmp eq %struct.nlmsghdr* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %119

43:                                               ; preds = %25
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %45 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %44)
  store %struct.nfgenmsg* %45, %struct.nfgenmsg** %15, align 8
  %46 = load i32, i32* @AF_UNSPEC, align 4
  %47 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %48 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @NFNETLINK_V0, align 4
  %50 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %51 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nfgenmsg*, %struct.nfgenmsg** %15, align 8
  %53 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = load i32, i32* @CTA_TIMEOUT_NAME, align 4
  %56 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %13, align 8
  %57 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @nla_put_string(%struct.sk_buff* %54, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %43
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %63 = load i32, i32* @CTA_TIMEOUT_L3PROTO, align 4
  %64 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %13, align 8
  %65 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @htons(i32 %67)
  %69 = call i64 @nla_put_be16(%struct.sk_buff* %62, i32 %63, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %61
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load i32, i32* @CTA_TIMEOUT_L4PROTO, align 4
  %74 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %17, align 8
  %75 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @nla_put_u8(%struct.sk_buff* %72, i32 %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %71
  %80 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %81 = load i32, i32* @CTA_TIMEOUT_USE, align 4
  %82 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %13, align 8
  %83 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %82, i32 0, i32 1
  %84 = call i32 @refcount_read(i32* %83)
  %85 = call i32 @htonl(i32 %84)
  %86 = call i64 @nla_put_be32(%struct.sk_buff* %80, i32 %81, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %79, %71, %61, %43
  br label %120

89:                                               ; preds = %79
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = load i32, i32* @CTA_TIMEOUT_DATA, align 4
  %92 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %90, i32 %91)
  store %struct.nlattr* %92, %struct.nlattr** %18, align 8
  %93 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %94 = icmp ne %struct.nlattr* %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  br label %120

96:                                               ; preds = %89
  %97 = load %struct.nf_conntrack_l4proto*, %struct.nf_conntrack_l4proto** %17, align 8
  %98 = getelementptr inbounds %struct.nf_conntrack_l4proto, %struct.nf_conntrack_l4proto* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32 (%struct.sk_buff*, i32*)*, i32 (%struct.sk_buff*, i32*)** %99, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load %struct.ctnl_timeout*, %struct.ctnl_timeout** %13, align 8
  %103 = getelementptr inbounds %struct.ctnl_timeout, %struct.ctnl_timeout* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 %100(%struct.sk_buff* %101, i32* %104)
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %96
  br label %120

109:                                              ; preds = %96
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %112 = call i32 @nla_nest_end(%struct.sk_buff* %110, %struct.nlattr* %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %115 = call i32 @nlmsg_end(%struct.sk_buff* %113, %struct.nlmsghdr* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  br label %124

119:                                              ; preds = %42
  br label %120

120:                                              ; preds = %119, %108, %95, %88
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = load %struct.nlmsghdr*, %struct.nlmsghdr** %14, align 8
  %123 = call i32 @nlmsg_cancel(%struct.sk_buff* %121, %struct.nlmsghdr* %122)
  store i32 -1, i32* %7, align 4
  br label %124

124:                                              ; preds = %120, %109
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @refcount_read(i32*) #1

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
