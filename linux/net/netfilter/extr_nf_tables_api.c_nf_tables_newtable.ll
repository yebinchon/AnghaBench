; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_newtable.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_newtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_table = type { i32, i32, %struct.nft_table*, i32, i32, i64, i32, i32, i32, i32 }
%struct.nft_ctx = type { i32 }

@NFTA_TABLE_NAME = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_TABLE_FLAGS = common dso_local global i64 0, align 8
@NFT_TABLE_F_DORMANT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nft_chain_ht_params = common dso_local global i32 0, align 4
@table_handle = common dso_local global i64 0, align 8
@NFT_MSG_NEWTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_newtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_newtable(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.nft_table*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.nft_ctx, align 4
  %21 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.sock* %1, %struct.sock** %9, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.nlmsghdr* %3, %struct.nlmsghdr** %11, align 8
  store %struct.nlattr** %4, %struct.nlattr*** %12, align 8
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %23 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %22)
  store %struct.nfgenmsg* %23, %struct.nfgenmsg** %14, align 8
  %24 = load %struct.net*, %struct.net** %8, align 8
  %25 = call i32 @nft_genmask_next(%struct.net* %24)
  store i32 %25, i32* %15, align 4
  %26 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %27 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %29 = load %struct.net*, %struct.net** %8, align 8
  %30 = getelementptr inbounds %struct.net, %struct.net* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @lockdep_assert_held(i32* %31)
  %33 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %34 = load i64, i64* @NFTA_TABLE_NAME, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  store %struct.nlattr* %36, %struct.nlattr** %17, align 8
  %37 = load %struct.net*, %struct.net** %8, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call %struct.nft_table* @nft_table_lookup(%struct.net* %37, %struct.nlattr* %38, i32 %39, i32 %40)
  store %struct.nft_table* %41, %struct.nft_table** %18, align 8
  %42 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %43 = call i64 @IS_ERR(%struct.nft_table* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %6
  %46 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %47 = call i32 @PTR_ERR(%struct.nft_table* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %53 = call i32 @PTR_ERR(%struct.nft_table* %52)
  store i32 %53, i32* %7, align 4
  br label %191

54:                                               ; preds = %45
  br label %87

55:                                               ; preds = %6
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %57 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NLM_F_EXCL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %65 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %63, %struct.nlattr* %64)
  %66 = load i32, i32* @EEXIST, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %191

68:                                               ; preds = %55
  %69 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %70 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NLM_F_REPLACE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %7, align 4
  br label %191

78:                                               ; preds = %68
  %79 = load %struct.net*, %struct.net** %8, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %82 = load i32, i32* %16, align 4
  %83 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %84 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %85 = call i32 @nft_ctx_init(%struct.nft_ctx* %20, %struct.net* %79, %struct.sk_buff* %80, %struct.nlmsghdr* %81, i32 %82, %struct.nft_table* %83, i32* null, %struct.nlattr** %84)
  %86 = call i32 @nf_tables_updtable(%struct.nft_ctx* %20)
  store i32 %86, i32* %7, align 4
  br label %191

87:                                               ; preds = %54
  %88 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %89 = load i64, i64* @NFTA_TABLE_FLAGS, align 8
  %90 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %88, i64 %89
  %91 = load %struct.nlattr*, %struct.nlattr** %90, align 8
  %92 = icmp ne %struct.nlattr* %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %95 = load i64, i64* @NFTA_TABLE_FLAGS, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = call i32 @nla_get_be32(%struct.nlattr* %97)
  %99 = call i32 @ntohl(i32 %98)
  store i32 %99, i32* %19, align 4
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* @NFT_TABLE_F_DORMANT, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %93
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %191

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %87
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* @GFP_KERNEL, align 4
  %113 = call %struct.nft_table* @kzalloc(i32 48, i32 %112)
  store %struct.nft_table* %113, %struct.nft_table** %18, align 8
  %114 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %115 = icmp eq %struct.nft_table* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  br label %189

117:                                              ; preds = %109
  %118 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call %struct.nft_table* @nla_strdup(%struct.nlattr* %118, i32 %119)
  %121 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %122 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %121, i32 0, i32 2
  store %struct.nft_table* %120, %struct.nft_table** %122, align 8
  %123 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %124 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %123, i32 0, i32 2
  %125 = load %struct.nft_table*, %struct.nft_table** %124, align 8
  %126 = icmp eq %struct.nft_table* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %186

128:                                              ; preds = %117
  %129 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %130 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %129, i32 0, i32 3
  %131 = call i32 @rhltable_init(i32* %130, i32* @nft_chain_ht_params)
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* %21, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %181

135:                                              ; preds = %128
  %136 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %137 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %136, i32 0, i32 9
  %138 = call i32 @INIT_LIST_HEAD(i32* %137)
  %139 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %140 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %139, i32 0, i32 8
  %141 = call i32 @INIT_LIST_HEAD(i32* %140)
  %142 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %143 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %142, i32 0, i32 7
  %144 = call i32 @INIT_LIST_HEAD(i32* %143)
  %145 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %146 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %145, i32 0, i32 6
  %147 = call i32 @INIT_LIST_HEAD(i32* %146)
  %148 = load i32, i32* %16, align 4
  %149 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %150 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %19, align 4
  %152 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %153 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i64, i64* @table_handle, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* @table_handle, align 8
  %156 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %157 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %156, i32 0, i32 5
  store i64 %155, i64* %157, align 8
  %158 = load %struct.net*, %struct.net** %8, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %160 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %163 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %164 = call i32 @nft_ctx_init(%struct.nft_ctx* %20, %struct.net* %158, %struct.sk_buff* %159, %struct.nlmsghdr* %160, i32 %161, %struct.nft_table* %162, i32* null, %struct.nlattr** %163)
  %165 = load i32, i32* @NFT_MSG_NEWTABLE, align 4
  %166 = call i32 @nft_trans_table_add(%struct.nft_ctx* %20, i32 %165)
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %21, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %135
  br label %177

170:                                              ; preds = %135
  %171 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %172 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %171, i32 0, i32 4
  %173 = load %struct.net*, %struct.net** %8, align 8
  %174 = getelementptr inbounds %struct.net, %struct.net* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 0
  %176 = call i32 @list_add_tail_rcu(i32* %172, i32* %175)
  store i32 0, i32* %7, align 4
  br label %191

177:                                              ; preds = %169
  %178 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %179 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %178, i32 0, i32 3
  %180 = call i32 @rhltable_destroy(i32* %179)
  br label %181

181:                                              ; preds = %177, %134
  %182 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %183 = getelementptr inbounds %struct.nft_table, %struct.nft_table* %182, i32 0, i32 2
  %184 = load %struct.nft_table*, %struct.nft_table** %183, align 8
  %185 = call i32 @kfree(%struct.nft_table* %184)
  br label %186

186:                                              ; preds = %181, %127
  %187 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %188 = call i32 @kfree(%struct.nft_table* %187)
  br label %189

189:                                              ; preds = %186, %116
  %190 = load i32, i32* %21, align 4
  store i32 %190, i32* %7, align 4
  br label %191

191:                                              ; preds = %189, %170, %105, %78, %75, %62, %51
  %192 = load i32, i32* %7, align 4
  ret i32 %192
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @nft_ctx_init(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.nft_table*, i32*, %struct.nlattr**) #1

declare dso_local i32 @nf_tables_updtable(%struct.nft_ctx*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.nft_table* @kzalloc(i32, i32) #1

declare dso_local %struct.nft_table* @nla_strdup(%struct.nlattr*, i32) #1

declare dso_local i32 @rhltable_init(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nft_trans_table_add(%struct.nft_ctx*, i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @rhltable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.nft_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
