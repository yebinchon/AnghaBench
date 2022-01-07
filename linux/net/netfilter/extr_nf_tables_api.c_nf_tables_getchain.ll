; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getchain.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_chain = type opaque
%struct.nft_table = type opaque
%struct.netlink_dump_control = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nf_tables_dump_chains = common dso_local global i32 0, align 4
@NFTA_CHAIN_TABLE = common dso_local global i64 0, align 8
@NFTA_CHAIN_NAME = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWCHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_getchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_getchain(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nft_chain*, align 8
  %17 = alloca %struct.nft_table*, align 8
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.netlink_dump_control, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  %23 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %25 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %24)
  store %struct.nfgenmsg* %25, %struct.nfgenmsg** %14, align 8
  %26 = load %struct.net*, %struct.net** %8, align 8
  %27 = call i32 @nft_genmask_cur(%struct.net* %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %29 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %19, align 4
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %32 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NLM_F_DUMP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 0
  %39 = load i32, i32* @THIS_MODULE, align 4
  store i32 %39, i32* %38, align 4
  %40 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 1
  %41 = load i32, i32* @nf_tables_dump_chains, align 4
  store i32 %41, i32* %40, align 4
  %42 = load %struct.sock*, %struct.sock** %9, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %44 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %45 = call i32 @nft_netlink_dump_start_rcu(%struct.sock* %42, %struct.sk_buff* %43, %struct.nlmsghdr* %44, %struct.netlink_dump_control* %21)
  store i32 %45, i32* %7, align 4
  br label %133

46:                                               ; preds = %6
  %47 = load %struct.net*, %struct.net** %8, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %49 = load i64, i64* @NFTA_CHAIN_TABLE, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = load i32, i32* %19, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call %struct.nft_table* @nft_table_lookup(%struct.net* %47, %struct.nlattr* %51, i32 %52, i32 %53)
  store %struct.nft_table* %54, %struct.nft_table** %17, align 8
  %55 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %56 = call i64 @IS_ERR(%struct.nft_table* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %46
  %59 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %60 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %61 = load i64, i64* @NFTA_CHAIN_TABLE, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %59, %struct.nlattr* %63)
  %65 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %66 = call i32 @PTR_ERR(%struct.nft_table* %65)
  store i32 %66, i32* %7, align 4
  br label %133

67:                                               ; preds = %46
  %68 = load %struct.net*, %struct.net** %8, align 8
  %69 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %70 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %71 = load i64, i64* @NFTA_CHAIN_NAME, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call %struct.nft_table* @nft_chain_lookup(%struct.net* %68, %struct.nft_table* %69, %struct.nlattr* %73, i32 %74)
  %76 = bitcast %struct.nft_table* %75 to %struct.nft_chain*
  store %struct.nft_chain* %76, %struct.nft_chain** %16, align 8
  %77 = load %struct.nft_chain*, %struct.nft_chain** %16, align 8
  %78 = bitcast %struct.nft_chain* %77 to %struct.nft_table*
  %79 = call i64 @IS_ERR(%struct.nft_table* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %67
  %82 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %83 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %84 = load i64, i64* @NFTA_CHAIN_NAME, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %82, %struct.nlattr* %86)
  %88 = load %struct.nft_chain*, %struct.nft_chain** %16, align 8
  %89 = bitcast %struct.nft_chain* %88 to %struct.nft_table*
  %90 = call i32 @PTR_ERR(%struct.nft_table* %89)
  store i32 %90, i32* %7, align 4
  br label %133

91:                                               ; preds = %67
  %92 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %93 = load i32, i32* @GFP_ATOMIC, align 4
  %94 = call %struct.sk_buff* @alloc_skb(i32 %92, i32 %93)
  store %struct.sk_buff* %94, %struct.sk_buff** %18, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %7, align 4
  br label %133

100:                                              ; preds = %91
  %101 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %102 = load %struct.net*, %struct.net** %8, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %104 = call i32 @NETLINK_CB(%struct.sk_buff* %103)
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %109 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @NFT_MSG_NEWCHAIN, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %114 = load %struct.nft_chain*, %struct.nft_chain** %16, align 8
  %115 = bitcast %struct.nft_chain* %114 to %struct.nft_table*
  %116 = call i32 @nf_tables_fill_chain_info(%struct.sk_buff* %101, %struct.net* %102, i32 %107, i32 %110, i32 %111, i32 0, i32 %112, %struct.nft_table* %113, %struct.nft_table* %115)
  store i32 %116, i32* %20, align 4
  %117 = load i32, i32* %20, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %100
  br label %129

120:                                              ; preds = %100
  %121 = load %struct.sock*, %struct.sock** %9, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = call i32 @NETLINK_CB(%struct.sk_buff* %123)
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %124, i32* %125, align 4
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @nlmsg_unicast(%struct.sock* %121, %struct.sk_buff* %122, i32 %127)
  store i32 %128, i32* %7, align 4
  br label %133

129:                                              ; preds = %119
  %130 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %131 = call i32 @kfree_skb(%struct.sk_buff* %130)
  %132 = load i32, i32* %20, align 4
  store i32 %132, i32* %7, align 4
  br label %133

133:                                              ; preds = %129, %120, %97, %81, %58, %37
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i32 @nft_netlink_dump_start_rcu(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local %struct.nft_table* @nft_chain_lookup(%struct.net*, %struct.nft_table*, %struct.nlattr*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @nf_tables_fill_chain_info(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*, %struct.nft_table*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
