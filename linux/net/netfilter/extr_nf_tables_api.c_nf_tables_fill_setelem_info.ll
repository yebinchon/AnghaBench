; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_setelem_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_setelem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_ctx = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { i32 }
%struct.nfgenmsg = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_SET_TABLE = common dso_local global i32 0, align 4
@NFTA_SET_NAME = common dso_local global i32 0, align 4
@NFTA_SET_ELEM_LIST_ELEMENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_ctx*, i32, i32, i32, i32, %struct.nft_set*, %struct.nft_set_elem*)* @nf_tables_fill_setelem_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_setelem_info(%struct.sk_buff* %0, %struct.nft_ctx* %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nft_set* %6, %struct.nft_set_elem* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nft_ctx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nft_set*, align 8
  %17 = alloca %struct.nft_set_elem*, align 8
  %18 = alloca %struct.nfgenmsg*, align 8
  %19 = alloca %struct.nlmsghdr*, align 8
  %20 = alloca %struct.nlattr*, align 8
  %21 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.nft_ctx* %1, %struct.nft_ctx** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.nft_set* %6, %struct.nft_set** %16, align 8
  store %struct.nft_set_elem* %7, %struct.nft_set_elem** %17, align 8
  %22 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @nfnl_msg_type(i32 %22, i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %25, i32 %26, i32 %27, i32 %28, i32 12, i32 %29)
  store %struct.nlmsghdr* %30, %struct.nlmsghdr** %19, align 8
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %32 = icmp eq %struct.nlmsghdr* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %8
  br label %96

34:                                               ; preds = %8
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %36 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %35)
  store %struct.nfgenmsg* %36, %struct.nfgenmsg** %18, align 8
  %37 = load %struct.nft_ctx*, %struct.nft_ctx** %11, align 8
  %38 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.nfgenmsg*, %struct.nfgenmsg** %18, align 8
  %41 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @NFNETLINK_V0, align 4
  %43 = load %struct.nfgenmsg*, %struct.nfgenmsg** %18, align 8
  %44 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nft_ctx*, %struct.nft_ctx** %11, align 8
  %46 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 65535
  %52 = call i32 @htons(i32 %51)
  %53 = load %struct.nfgenmsg*, %struct.nfgenmsg** %18, align 8
  %54 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load i32, i32* @NFTA_SET_TABLE, align 4
  %57 = load %struct.nft_ctx*, %struct.nft_ctx** %11, align 8
  %58 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @nla_put_string(%struct.sk_buff* %55, i32 %56, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %34
  br label %96

65:                                               ; preds = %34
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = load i32, i32* @NFTA_SET_NAME, align 4
  %68 = load %struct.nft_set*, %struct.nft_set** %16, align 8
  %69 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @nla_put_string(%struct.sk_buff* %66, i32 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %96

74:                                               ; preds = %65
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %76 = load i32, i32* @NFTA_SET_ELEM_LIST_ELEMENTS, align 4
  %77 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %75, i32 %76)
  store %struct.nlattr* %77, %struct.nlattr** %20, align 8
  %78 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %79 = icmp eq %struct.nlattr* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %96

81:                                               ; preds = %74
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = load %struct.nft_set*, %struct.nft_set** %16, align 8
  %84 = load %struct.nft_set_elem*, %struct.nft_set_elem** %17, align 8
  %85 = call i32 @nf_tables_fill_setelem(%struct.sk_buff* %82, %struct.nft_set* %83, %struct.nft_set_elem* %84)
  store i32 %85, i32* %21, align 4
  %86 = load i32, i32* %21, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %96

89:                                               ; preds = %81
  %90 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %91 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %92 = call i32 @nla_nest_end(%struct.sk_buff* %90, %struct.nlattr* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %94 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %95 = call i32 @nlmsg_end(%struct.sk_buff* %93, %struct.nlmsghdr* %94)
  store i32 0, i32* %9, align 4
  br label %100

96:                                               ; preds = %88, %80, %73, %64, %33
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = load %struct.nlmsghdr*, %struct.nlmsghdr** %19, align 8
  %99 = call i32 @nlmsg_trim(%struct.sk_buff* %97, %struct.nlmsghdr* %98)
  store i32 -1, i32* %9, align 4
  br label %100

100:                                              ; preds = %96, %89
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_tables_fill_setelem(%struct.sk_buff*, %struct.nft_set*, %struct.nft_set_elem*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
