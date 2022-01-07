; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getflowtable.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getflowtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_flowtable = type opaque
%struct.nft_table = type { i32 }
%struct.netlink_dump_control = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nf_tables_dump_flowtable_done = common dso_local global i32 0, align 4
@nf_tables_dump_flowtable = common dso_local global i32 0, align 4
@nf_tables_dump_flowtable_start = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_FLOWTABLE_TABLE = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWFLOWTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_getflowtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_getflowtable(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.nfgenmsg*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nft_flowtable*, align 8
  %18 = alloca %struct.nft_table*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.netlink_dump_control, align 8
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
  store i32 %30, i32* %16, align 4
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %32 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NLM_F_DUMP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %6
  %38 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 0
  %39 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %40 = bitcast %struct.nlattr** %39 to i8*
  store i8* %40, i8** %38, align 8
  %41 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 1
  %42 = load i32, i32* @THIS_MODULE, align 4
  store i32 %42, i32* %41, align 8
  %43 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 2
  %44 = load i32, i32* @nf_tables_dump_flowtable_done, align 4
  store i32 %44, i32* %43, align 4
  %45 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 3
  %46 = load i32, i32* @nf_tables_dump_flowtable, align 4
  store i32 %46, i32* %45, align 8
  %47 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %21, i32 0, i32 4
  %48 = load i32, i32* @nf_tables_dump_flowtable_start, align 4
  store i32 %48, i32* %47, align 4
  %49 = load %struct.sock*, %struct.sock** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %52 = call i32 @nft_netlink_dump_start_rcu(%struct.sock* %49, %struct.sk_buff* %50, %struct.nlmsghdr* %51, %struct.netlink_dump_control* %21)
  store i32 %52, i32* %7, align 4
  br label %135

53:                                               ; preds = %6
  %54 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %55 = load i64, i64* @NFTA_FLOWTABLE_NAME, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %54, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = icmp ne %struct.nlattr* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  br label %135

62:                                               ; preds = %53
  %63 = load %struct.net*, %struct.net** %8, align 8
  %64 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %65 = load i64, i64* @NFTA_FLOWTABLE_TABLE, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call %struct.nft_table* @nft_table_lookup(%struct.net* %63, %struct.nlattr* %67, i32 %68, i32 %69)
  store %struct.nft_table* %70, %struct.nft_table** %18, align 8
  %71 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %72 = call i64 @IS_ERR(%struct.nft_table* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %76 = call i32 @PTR_ERR(%struct.nft_table* %75)
  store i32 %76, i32* %7, align 4
  br label %135

77:                                               ; preds = %62
  %78 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %79 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %80 = load i64, i64* @NFTA_FLOWTABLE_NAME, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %79, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call %struct.nft_table* @nft_flowtable_lookup(%struct.nft_table* %78, %struct.nlattr* %82, i32 %83)
  %85 = bitcast %struct.nft_table* %84 to %struct.nft_flowtable*
  store %struct.nft_flowtable* %85, %struct.nft_flowtable** %17, align 8
  %86 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %87 = bitcast %struct.nft_flowtable* %86 to %struct.nft_table*
  %88 = call i64 @IS_ERR(%struct.nft_table* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %92 = bitcast %struct.nft_flowtable* %91 to %struct.nft_table*
  %93 = call i32 @PTR_ERR(%struct.nft_table* %92)
  store i32 %93, i32* %7, align 4
  br label %135

94:                                               ; preds = %77
  %95 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %96 = load i32, i32* @GFP_ATOMIC, align 4
  %97 = call %struct.sk_buff* @alloc_skb(i32 %95, i32 %96)
  store %struct.sk_buff* %97, %struct.sk_buff** %19, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %94
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %7, align 4
  br label %135

103:                                              ; preds = %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %105 = load %struct.net*, %struct.net** %8, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = call i32 @NETLINK_CB(%struct.sk_buff* %106)
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %107, i32* %108, align 4
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %112 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @NFT_MSG_NEWFLOWTABLE, align 4
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.nft_flowtable*, %struct.nft_flowtable** %17, align 8
  %117 = bitcast %struct.nft_flowtable* %116 to %struct.nft_table*
  %118 = call i32 @nf_tables_fill_flowtable_info(%struct.sk_buff* %104, %struct.net* %105, i32 %110, i32 %113, i32 %114, i32 0, i32 %115, %struct.nft_table* %117)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %103
  br label %131

122:                                              ; preds = %103
  %123 = load %struct.sock*, %struct.sock** %9, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = call i32 @NETLINK_CB(%struct.sk_buff* %125)
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %126, i32* %127, align 4
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @nlmsg_unicast(%struct.sock* %123, %struct.sk_buff* %124, i32 %129)
  store i32 %130, i32* %7, align 4
  br label %135

131:                                              ; preds = %121
  %132 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  %134 = load i32, i32* %20, align 4
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %131, %122, %100, %90, %74, %59, %37
  %136 = load i32, i32* %7, align 4
  ret i32 %136
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i32 @nft_netlink_dump_start_rcu(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local %struct.nft_table* @nft_flowtable_lookup(%struct.nft_table*, %struct.nlattr*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @nf_tables_fill_flowtable_info(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
