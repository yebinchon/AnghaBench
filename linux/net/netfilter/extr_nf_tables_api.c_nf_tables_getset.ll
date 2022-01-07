; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getset.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_ctx = type { i32 }
%struct.nfgenmsg = type { i64 }
%struct.netlink_dump_control = type { i32, %struct.nft_ctx*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nf_tables_dump_sets_done = common dso_local global i32 0, align 4
@nf_tables_dump_sets = common dso_local global i32 0, align 4
@nf_tables_dump_sets_start = common dso_local global i32 0, align 4
@NFPROTO_UNSPEC = common dso_local global i64 0, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@NFTA_SET_TABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_SET_NAME = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_getset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_getset(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nft_set*, align 8
  %16 = alloca %struct.nft_ctx, align 4
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca %struct.nfgenmsg*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.netlink_dump_control, align 8
  %21 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %22 = load %struct.net*, %struct.net** %8, align 8
  %23 = call i32 @nft_genmask_cur(%struct.net* %22)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %25 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %24)
  store %struct.nfgenmsg* %25, %struct.nfgenmsg** %18, align 8
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @nft_ctx_init_from_setattr(%struct.nft_ctx* %16, %struct.net* %26, %struct.sk_buff* %27, %struct.nlmsghdr* %28, %struct.nlattr** %29, %struct.netlink_ext_ack* %30, i32 %31)
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %7, align 4
  br label %121

37:                                               ; preds = %6
  %38 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %39 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NLM_F_DUMP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %20, i32 0, i32 0
  %46 = load i32, i32* @THIS_MODULE, align 4
  store i32 %46, i32* %45, align 8
  %47 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %20, i32 0, i32 1
  store %struct.nft_ctx* %16, %struct.nft_ctx** %47, align 8
  %48 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %20, i32 0, i32 2
  %49 = load i32, i32* @nf_tables_dump_sets_done, align 4
  store i32 %49, i32* %48, align 8
  %50 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %20, i32 0, i32 3
  %51 = load i32, i32* @nf_tables_dump_sets, align 4
  store i32 %51, i32* %50, align 4
  %52 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %20, i32 0, i32 4
  %53 = load i32, i32* @nf_tables_dump_sets_start, align 4
  store i32 %53, i32* %52, align 8
  %54 = load %struct.sock*, %struct.sock** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %57 = call i32 @nft_netlink_dump_start_rcu(%struct.sock* %54, %struct.sk_buff* %55, %struct.nlmsghdr* %56, %struct.netlink_dump_control* %20)
  store i32 %57, i32* %7, align 4
  br label %121

58:                                               ; preds = %37
  %59 = load %struct.nfgenmsg*, %struct.nfgenmsg** %18, align 8
  %60 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NFPROTO_UNSPEC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @EAFNOSUPPORT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %121

67:                                               ; preds = %58
  %68 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %69 = load i64, i64* @NFTA_SET_TABLE, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = icmp ne %struct.nlattr* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %121

76:                                               ; preds = %67
  %77 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %16, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %80 = load i64, i64* @NFTA_SET_NAME, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = call %struct.nft_set* @nft_set_lookup(i32 %78, %struct.nlattr* %82, i32 %83)
  store %struct.nft_set* %84, %struct.nft_set** %15, align 8
  %85 = load %struct.nft_set*, %struct.nft_set** %15, align 8
  %86 = call i64 @IS_ERR(%struct.nft_set* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %76
  %89 = load %struct.nft_set*, %struct.nft_set** %15, align 8
  %90 = call i32 @PTR_ERR(%struct.nft_set* %89)
  store i32 %90, i32* %7, align 4
  br label %121

91:                                               ; preds = %76
  %92 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call %struct.sk_buff* @alloc_skb(i32 %92, i32 %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %17, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %96 = icmp eq %struct.sk_buff* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %121

100:                                              ; preds = %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %102 = load %struct.nft_set*, %struct.nft_set** %15, align 8
  %103 = load i32, i32* @NFT_MSG_NEWSET, align 4
  %104 = call i32 @nf_tables_fill_set(%struct.sk_buff* %101, %struct.nft_ctx* %16, %struct.nft_set* %102, i32 %103, i32 0)
  store i32 %104, i32* %19, align 4
  %105 = load i32, i32* %19, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %117

108:                                              ; preds = %100
  %109 = load %struct.sock*, %struct.sock** %9, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %112 = call i32 @NETLINK_CB(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %112, i32* %113, align 4
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @nlmsg_unicast(%struct.sock* %109, %struct.sk_buff* %110, i32 %115)
  store i32 %116, i32* %7, align 4
  br label %121

117:                                              ; preds = %107
  %118 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %119 = call i32 @kfree_skb(%struct.sk_buff* %118)
  %120 = load i32, i32* %19, align 4
  store i32 %120, i32* %7, align 4
  br label %121

121:                                              ; preds = %117, %108, %97, %88, %73, %64, %44, %35
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_ctx_init_from_setattr(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*, i32) #1

declare dso_local i32 @nft_netlink_dump_start_rcu(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local %struct.nft_set* @nft_set_lookup(i32, %struct.nlattr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_set*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_set*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @nf_tables_fill_set(%struct.sk_buff*, %struct.nft_ctx*, %struct.nft_set*, i32, i32) #1

declare dso_local i32 @nlmsg_unicast(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
