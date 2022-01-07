; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getobj.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_getobj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_table = type { i32 }
%struct.nft_object = type opaque
%struct.netlink_dump_control = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@NLM_F_DUMP = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@nf_tables_dump_obj_done = common dso_local global i32 0, align 4
@nf_tables_dump_obj = common dso_local global i32 0, align 4
@nf_tables_dump_obj_start = common dso_local global i32 0, align 4
@NFTA_OBJ_NAME = common dso_local global i64 0, align 8
@NFTA_OBJ_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_OBJ_TABLE = common dso_local global i64 0, align 8
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NFT_MSG_GETOBJ_RESET = common dso_local global i64 0, align 8
@NFT_MSG_NEWOBJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_getobj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_getobj(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %17 = alloca %struct.nft_table*, align 8
  %18 = alloca %struct.nft_object*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.netlink_dump_control, align 8
  %24 = alloca %struct.TYPE_2__, align 4
  %25 = alloca %struct.TYPE_2__, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %27 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.nfgenmsg* %27, %struct.nfgenmsg** %14, align 8
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = call i32 @nft_genmask_cur(%struct.net* %28)
  store i32 %29, i32* %15, align 4
  %30 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %31 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %16, align 4
  store i32 0, i32* %20, align 4
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @NLM_F_DUMP, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %6
  %40 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %23, i32 0, i32 0
  %41 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %42 = bitcast %struct.nlattr** %41 to i8*
  store i8* %42, i8** %40, align 8
  %43 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %23, i32 0, i32 1
  %44 = load i32, i32* @THIS_MODULE, align 4
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %23, i32 0, i32 2
  %46 = load i32, i32* @nf_tables_dump_obj_done, align 4
  store i32 %46, i32* %45, align 4
  %47 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %23, i32 0, i32 3
  %48 = load i32, i32* @nf_tables_dump_obj, align 4
  store i32 %48, i32* %47, align 8
  %49 = getelementptr inbounds %struct.netlink_dump_control, %struct.netlink_dump_control* %23, i32 0, i32 4
  %50 = load i32, i32* @nf_tables_dump_obj_start, align 4
  store i32 %50, i32* %49, align 4
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %54 = call i32 @nft_netlink_dump_start_rcu(%struct.sock* %51, %struct.sk_buff* %52, %struct.nlmsghdr* %53, %struct.netlink_dump_control* %23)
  store i32 %54, i32* %7, align 4
  br label %173

55:                                               ; preds = %6
  %56 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %57 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %63 = load i64, i64* @NFTA_OBJ_TYPE, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = icmp ne %struct.nlattr* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %61, %55
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %7, align 4
  br label %173

70:                                               ; preds = %61
  %71 = load %struct.net*, %struct.net** %8, align 8
  %72 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %73 = load i64, i64* @NFTA_OBJ_TABLE, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call %struct.nft_table* @nft_table_lookup(%struct.net* %71, %struct.nlattr* %75, i32 %76, i32 %77)
  store %struct.nft_table* %78, %struct.nft_table** %17, align 8
  %79 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %80 = call i64 @IS_ERR(%struct.nft_table* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %70
  %83 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %84 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %85 = load i64, i64* @NFTA_OBJ_TABLE, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %83, %struct.nlattr* %87)
  %89 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %90 = call i32 @PTR_ERR(%struct.nft_table* %89)
  store i32 %90, i32* %7, align 4
  br label %173

91:                                               ; preds = %70
  %92 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %93 = load i64, i64* @NFTA_OBJ_TYPE, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i32 @nla_get_be32(%struct.nlattr* %95)
  %97 = call i32 @ntohl(i32 %96)
  store i32 %97, i32* %21, align 4
  %98 = load %struct.net*, %struct.net** %8, align 8
  %99 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %100 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %101 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = load i32, i32* %21, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call %struct.nft_table* @nft_obj_lookup(%struct.net* %98, %struct.nft_table* %99, %struct.nlattr* %103, i32 %104, i32 %105)
  %107 = bitcast %struct.nft_table* %106 to %struct.nft_object*
  store %struct.nft_object* %107, %struct.nft_object** %18, align 8
  %108 = load %struct.nft_object*, %struct.nft_object** %18, align 8
  %109 = bitcast %struct.nft_object* %108 to %struct.nft_table*
  %110 = call i64 @IS_ERR(%struct.nft_table* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %91
  %113 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %114 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %115 = load i64, i64* @NFTA_OBJ_NAME, align 8
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %114, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %113, %struct.nlattr* %117)
  %119 = load %struct.nft_object*, %struct.nft_object** %18, align 8
  %120 = bitcast %struct.nft_object* %119 to %struct.nft_table*
  %121 = call i32 @PTR_ERR(%struct.nft_table* %120)
  store i32 %121, i32* %7, align 4
  br label %173

122:                                              ; preds = %91
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
  br label %173

131:                                              ; preds = %122
  %132 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %133 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @NFNL_MSG_TYPE(i32 %134)
  %136 = load i64, i64* @NFT_MSG_GETOBJ_RESET, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 1, i32* %20, align 4
  br label %139

139:                                              ; preds = %138, %131
  %140 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %141 = load %struct.net*, %struct.net** %8, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %143 = call i32 @NETLINK_CB(%struct.sk_buff* %142)
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %143, i32* %144, align 4
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %148 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NFT_MSG_NEWOBJ, align 4
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.nft_table*, %struct.nft_table** %17, align 8
  %153 = load %struct.nft_object*, %struct.nft_object** %18, align 8
  %154 = bitcast %struct.nft_object* %153 to %struct.nft_table*
  %155 = load i32, i32* %20, align 4
  %156 = call i32 @nf_tables_fill_obj_info(%struct.sk_buff* %140, %struct.net* %141, i32 %146, i32 %149, i32 %150, i32 0, i32 %151, %struct.nft_table* %152, %struct.nft_table* %154, i32 %155)
  store i32 %156, i32* %22, align 4
  %157 = load i32, i32* %22, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %139
  br label %169

160:                                              ; preds = %139
  %161 = load %struct.sock*, %struct.sock** %9, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = call i32 @NETLINK_CB(%struct.sk_buff* %163)
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @nlmsg_unicast(%struct.sock* %161, %struct.sk_buff* %162, i32 %167)
  store i32 %168, i32* %7, align 4
  br label %173

169:                                              ; preds = %159
  %170 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %171 = call i32 @kfree_skb(%struct.sk_buff* %170)
  %172 = load i32, i32* %22, align 4
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %160, %128, %112, %82, %67, %39
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i32 @nft_netlink_dump_start_rcu(%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.netlink_dump_control*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nft_table* @nft_obj_lookup(%struct.net*, %struct.nft_table*, %struct.nlattr*, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @NFNL_MSG_TYPE(i32) #1

declare dso_local i32 @nf_tables_fill_obj_info(%struct.sk_buff*, %struct.net*, i32, i32, i32, i32, i32, %struct.nft_table*, %struct.nft_table*, i32) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @nlmsg_unicast(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
