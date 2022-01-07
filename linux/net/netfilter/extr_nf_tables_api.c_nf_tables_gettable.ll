; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_gettable.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_gettable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_table = type { i32 }
%struct.netlink_dump_control = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nf_tables_dump_tables = common dso_local global i32 0, align 4
@NFTA_TABLE_NAME = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_gettable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_gettable(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.nft_table*, align 8
  %17 = alloca %struct.sk_buff*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.netlink_dump_control, align 4
  %21 = alloca %struct.TYPE_2__, align 4
  %22 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %23 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %24 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %23)
  store %struct.nfgenmsg* %24, %struct.nfgenmsg** %14, align 8
  %25 = load %struct.net*, %struct.net** %8, align 8
  %26 = call i32 @nft_genmask_cur(%struct.net* %25)
  store i32 %26, i32* %15, align 4
  %27 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %28 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %31 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NLM_F_DUMP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %6
  %37 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %20, i32 0, i32 0
  %38 = load i32, i32* @THIS_MODULE, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %20, i32 0, i32 1
  %40 = load i32, i32* @nf_tables_dump_tables, align 4
  store i32 %40, i32* %39, align 4
  %41 = load %struct.sock*, %struct.sock** %9, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %44 = call i32 @nft_netlink_dump_start_rcu(%struct.sock* %41, %struct.sk_buff* %42, %struct.nlmsghdr* %43, %struct.netlink_dump_control* %20)
  store i32 %44, i32* %7, align 4
  br label %106

45:                                               ; preds = %6
  %46 = load %struct.net*, %struct.net** %8, align 8
  %47 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %48 = load i64, i64* @NFTA_TABLE_NAME, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call %struct.nft_table* @nft_table_lookup(%struct.net* %46, %struct.nlattr* %50, i32 %51, i32 %52)
  store %struct.nft_table* %53, %struct.nft_table** %16, align 8
  %54 = load %struct.nft_table*, %struct.nft_table** %16, align 8
  %55 = call i64 @IS_ERR(%struct.nft_table* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %59 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %60 = load i64, i64* @NFTA_TABLE_NAME, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %58, %struct.nlattr* %62)
  %64 = load %struct.nft_table*, %struct.nft_table** %16, align 8
  %65 = call i32 @PTR_ERR(%struct.nft_table* %64)
  store i32 %65, i32* %7, align 4
  br label %106

66:                                               ; preds = %45
  %67 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %68 = load i32, i32* @GFP_ATOMIC, align 4
  %69 = call %struct.sk_buff* @alloc_skb(i32 %67, i32 %68)
  store %struct.sk_buff* %69, %struct.sk_buff** %17, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %106

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %77 = load %struct.net*, %struct.net** %8, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = call i32 @NETLINK_CB(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %79, i32* %80, align 4
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %84 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NFT_MSG_NEWTABLE, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.nft_table*, %struct.nft_table** %16, align 8
  %89 = call i32 @nf_tables_fill_table_info(%struct.sk_buff* %76, %struct.net* %77, i32 %82, i32 %85, i32 %86, i32 0, i32 %87, %struct.nft_table* %88)
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %19, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %75
  br label %102

93:                                               ; preds = %75
  %94 = load %struct.sock*, %struct.sock** %9, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %97 = call i32 @NETLINK_CB(%struct.sk_buff* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @nlmsg_unicast(%struct.sock* %94, %struct.sk_buff* %95, i32 %100)
  store i32 %101, i32* %7, align 4
  br label %106

102:                                              ; preds = %92
  %103 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %104 = call i32 @kfree_skb(%struct.sk_buff* %103)
  %105 = load i32, i32* %19, align 4
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %102, %93, %72, %57, %36
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i32 @nft_netlink_dump_start_rcu(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @nf_tables_fill_table_info(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
