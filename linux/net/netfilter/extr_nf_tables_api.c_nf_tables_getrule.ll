; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getrule.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getrule.c"
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
%struct.nft_rule = type opaque
%struct.nft_table = type opaque
%struct.netlink_dump_control = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nf_tables_dump_rules_done = common dso_local global i32 0, align 4
@nf_tables_dump_rules = common dso_local global i32 0, align 4
@nf_tables_dump_rules_start = common dso_local global i32 0, align 4
@NFTA_RULE_TABLE = common dso_local global i64 0, align 8
@NFTA_RULE_CHAIN = common dso_local global i64 0, align 8
@NFTA_RULE_HANDLE = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_NEWRULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_getrule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_getrule(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %17 = alloca %struct.nft_rule*, align 8
  %18 = alloca %struct.nft_table*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.netlink_dump_control, align 8
  %23 = alloca %struct.TYPE_2__, align 4
  %24 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %26 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %25)
  store %struct.nfgenmsg* %26, %struct.nfgenmsg** %14, align 8
  %27 = load %struct.net*, %struct.net** %8, align 8
  %28 = call i32 @nft_genmask_cur(%struct.net* %27)
  store i32 %28, i32* %15, align 4
  %29 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %30 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %20, align 4
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NLM_F_DUMP, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %6
  %39 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 0
  %40 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %41 = bitcast %struct.nlattr** %40 to i8*
  store i8* %41, i8** %39, align 8
  %42 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 1
  %43 = load i32, i32* @THIS_MODULE, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 2
  %45 = load i32, i32* @nf_tables_dump_rules_done, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 3
  %47 = load i32, i32* @nf_tables_dump_rules, align 4
  store i32 %47, i32* %46, align 8
  %48 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %22, i32 0, i32 4
  %49 = load i32, i32* @nf_tables_dump_rules_start, align 4
  store i32 %49, i32* %48, align 4
  %50 = load %struct.sock*, %struct.sock** %9, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %52 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %53 = call i32 @nft_netlink_dump_start_rcu(%struct.sock* %50, %struct.sk_buff* %51, %struct.nlmsghdr* %52, %struct.netlink_dump_control* %22)
  store i32 %53, i32* %7, align 4
  br label %166

54:                                               ; preds = %6
  %55 = load %struct.net*, %struct.net** %8, align 8
  %56 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %57 = load i64, i64* @NFTA_RULE_TABLE, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = load i32, i32* %20, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call %struct.nft_table* @nft_table_lookup(%struct.net* %55, %struct.nlattr* %59, i32 %60, i32 %61)
  store %struct.nft_table* %62, %struct.nft_table** %18, align 8
  %63 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %64 = call i64 @IS_ERR(%struct.nft_table* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %68 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %69 = load i64, i64* @NFTA_RULE_TABLE, align 8
  %70 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %68, i64 %69
  %71 = load %struct.nlattr*, %struct.nlattr** %70, align 8
  %72 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %67, %struct.nlattr* %71)
  %73 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %74 = call i32 @PTR_ERR(%struct.nft_table* %73)
  store i32 %74, i32* %7, align 4
  br label %166

75:                                               ; preds = %54
  %76 = load %struct.net*, %struct.net** %8, align 8
  %77 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %78 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %79 = load i64, i64* @NFTA_RULE_CHAIN, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call %struct.nft_table* @nft_chain_lookup(%struct.net* %76, %struct.nft_table* %77, %struct.nlattr* %81, i32 %82)
  %84 = bitcast %struct.nft_table* %83 to %struct.nft_chain*
  store %struct.nft_chain* %84, %struct.nft_chain** %16, align 8
  %85 = load %struct.nft_chain*, %struct.nft_chain** %16, align 8
  %86 = bitcast %struct.nft_chain* %85 to %struct.nft_table*
  %87 = call i64 @IS_ERR(%struct.nft_table* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %75
  %90 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %91 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %92 = load i64, i64* @NFTA_RULE_CHAIN, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %91, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %90, %struct.nlattr* %94)
  %96 = load %struct.nft_chain*, %struct.nft_chain** %16, align 8
  %97 = bitcast %struct.nft_chain* %96 to %struct.nft_table*
  %98 = call i32 @PTR_ERR(%struct.nft_table* %97)
  store i32 %98, i32* %7, align 4
  br label %166

99:                                               ; preds = %75
  %100 = load %struct.nft_chain*, %struct.nft_chain** %16, align 8
  %101 = bitcast %struct.nft_chain* %100 to %struct.nft_table*
  %102 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %103 = load i64, i64* @NFTA_RULE_HANDLE, align 8
  %104 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %102, i64 %103
  %105 = load %struct.nlattr*, %struct.nlattr** %104, align 8
  %106 = call %struct.nft_table* @nft_rule_lookup(%struct.nft_table* %101, %struct.nlattr* %105)
  %107 = bitcast %struct.nft_table* %106 to %struct.nft_rule*
  store %struct.nft_rule* %107, %struct.nft_rule** %17, align 8
  %108 = load %struct.nft_rule*, %struct.nft_rule** %17, align 8
  %109 = bitcast %struct.nft_rule* %108 to %struct.nft_table*
  %110 = call i64 @IS_ERR(%struct.nft_table* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %99
  %113 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %114 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %115 = load i64, i64* @NFTA_RULE_HANDLE, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %113, %struct.nlattr* %117)
  %119 = load %struct.nft_rule*, %struct.nft_rule** %17, align 8
  %120 = bitcast %struct.nft_rule* %119 to %struct.nft_table*
  %121 = call i32 @PTR_ERR(%struct.nft_table* %120)
  store i32 %121, i32* %7, align 4
  br label %166

122:                                              ; preds = %99
  %123 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %124 = load i32, i32* @GFP_ATOMIC, align 4
  %125 = call %struct.sk_buff* @alloc_skb(i32 %123, i32 %124)
  store %struct.sk_buff* %125, %struct.sk_buff** %19, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %127 = icmp ne %struct.sk_buff* %126, null
  br i1 %127, label %131, label %128

128:                                              ; preds = %122
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %7, align 4
  br label %166

131:                                              ; preds = %122
  %132 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %133 = load %struct.net*, %struct.net** %8, align 8
  %134 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %135 = call i32 @NETLINK_CB(%struct.sk_buff* %134)
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %140 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NFT_MSG_NEWRULE, align 4
  %143 = load i32, i32* %20, align 4
  %144 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %145 = load %struct.nft_chain*, %struct.nft_chain** %16, align 8
  %146 = bitcast %struct.nft_chain* %145 to %struct.nft_table*
  %147 = load %struct.nft_rule*, %struct.nft_rule** %17, align 8
  %148 = bitcast %struct.nft_rule* %147 to %struct.nft_table*
  %149 = call i32 @nf_tables_fill_rule_info(%struct.sk_buff* %132, %struct.net* %133, i32 %138, i32 %141, i32 %142, i32 0, i32 %143, %struct.nft_table* %144, %struct.nft_table* %146, %struct.nft_table* %148, i32* null)
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %21, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %131
  br label %162

153:                                              ; preds = %131
  %154 = load %struct.sock*, %struct.sock** %9, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = call i32 @NETLINK_CB(%struct.sk_buff* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %157, i32* %158, align 4
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @nlmsg_unicast(%struct.sock* %154, %struct.sk_buff* %155, i32 %160)
  store i32 %161, i32* %7, align 4
  br label %166

162:                                              ; preds = %152
  %163 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %164 = call i32 @kfree_skb(%struct.sk_buff* %163)
  %165 = load i32, i32* %21, align 4
  store i32 %165, i32* %7, align 4
  br label %166

166:                                              ; preds = %162, %153, %128, %112, %89, %66, %38
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i32 @nft_netlink_dump_start_rcu(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local %struct.nft_table* @nft_chain_lookup(%struct.net*, %struct.nft_table*, %struct.nlattr*, i32) #1

declare dso_local %struct.nft_table* @nft_rule_lookup(%struct.nft_table*, %struct.nlattr*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @nf_tables_fill_rule_info(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*, %struct.nft_table*, %struct.nft_table*, i32*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
