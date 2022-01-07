; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_newchain.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_newchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfgenmsg = type { i32 }
%struct.nft_table = type { i32 }
%struct.nft_chain = type { i32 }
%struct.nft_ctx = type { i32 }

@NFTA_CHAIN_TABLE = common dso_local global i64 0, align 8
@NFTA_CHAIN_NAME = common dso_local global i64 0, align 8
@NFTA_CHAIN_HANDLE = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@NFTA_CHAIN_POLICY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_CHAIN_HOOK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_CHAIN_FLAGS = common dso_local global i64 0, align 8
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@NFT_BASE_CHAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**, %struct.netlink_ext_ack*)* @nf_tables_newchain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_newchain(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2, %struct.nlmsghdr* %3, %struct.nlattr** %4, %struct.netlink_ext_ack* %5) #0 {
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
  %19 = alloca %struct.nft_chain*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.nft_ctx, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
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
  %27 = call i32 @nft_genmask_next(%struct.net* %26)
  store i32 %27, i32* %15, align 4
  %28 = load %struct.nfgenmsg*, %struct.nfgenmsg** %14, align 8
  %29 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %16, align 4
  store i32 129, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %31 = load %struct.net*, %struct.net** %8, align 8
  %32 = getelementptr inbounds %struct.net, %struct.net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @lockdep_assert_held(i32* %33)
  %35 = load %struct.net*, %struct.net** %8, align 8
  %36 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %37 = load i64, i64* @NFTA_CHAIN_TABLE, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %15, align 4
  %42 = call %struct.nft_table* @nft_table_lookup(%struct.net* %35, %struct.nlattr* %39, i32 %40, i32 %41)
  store %struct.nft_table* %42, %struct.nft_table** %18, align 8
  %43 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %44 = call i64 @IS_ERR(%struct.nft_table* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %6
  %47 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %48 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %49 = load i64, i64* @NFTA_CHAIN_TABLE, align 8
  %50 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %48, i64 %49
  %51 = load %struct.nlattr*, %struct.nlattr** %50, align 8
  %52 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %47, %struct.nlattr* %51)
  %53 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %54 = call i32 @PTR_ERR(%struct.nft_table* %53)
  store i32 %54, i32* %7, align 4
  br label %253

55:                                               ; preds = %6
  store %struct.nft_chain* null, %struct.nft_chain** %19, align 8
  %56 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %57 = load i64, i64* @NFTA_CHAIN_NAME, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  store %struct.nlattr* %59, %struct.nlattr** %17, align 8
  %60 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %61 = load i64, i64* @NFTA_CHAIN_HANDLE, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %96

65:                                               ; preds = %55
  %66 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %67 = load i64, i64* @NFTA_CHAIN_HANDLE, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @nla_get_be64(%struct.nlattr* %69)
  %71 = call i32 @be64_to_cpu(i32 %70)
  store i32 %71, i32* %22, align 4
  %72 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call %struct.nft_table* @nft_chain_lookup_byhandle(%struct.nft_table* %72, i32 %73, i32 %74)
  %76 = bitcast %struct.nft_table* %75 to %struct.nft_chain*
  store %struct.nft_chain* %76, %struct.nft_chain** %19, align 8
  %77 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %78 = bitcast %struct.nft_chain* %77 to %struct.nft_table*
  %79 = call i64 @IS_ERR(%struct.nft_table* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %65
  %82 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %83 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %84 = load i64, i64* @NFTA_CHAIN_HANDLE, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %82, %struct.nlattr* %86)
  %88 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %89 = bitcast %struct.nft_chain* %88 to %struct.nft_table*
  %90 = call i32 @PTR_ERR(%struct.nft_table* %89)
  store i32 %90, i32* %7, align 4
  br label %253

91:                                               ; preds = %65
  %92 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %93 = load i64, i64* @NFTA_CHAIN_HANDLE, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  store %struct.nlattr* %95, %struct.nlattr** %17, align 8
  br label %123

96:                                               ; preds = %55
  %97 = load %struct.net*, %struct.net** %8, align 8
  %98 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %99 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %100 = load i32, i32* %15, align 4
  %101 = call %struct.nft_table* @nft_chain_lookup(%struct.net* %97, %struct.nft_table* %98, %struct.nlattr* %99, i32 %100)
  %102 = bitcast %struct.nft_table* %101 to %struct.nft_chain*
  store %struct.nft_chain* %102, %struct.nft_chain** %19, align 8
  %103 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %104 = bitcast %struct.nft_chain* %103 to %struct.nft_table*
  %105 = call i64 @IS_ERR(%struct.nft_table* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %96
  %108 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %109 = bitcast %struct.nft_chain* %108 to %struct.nft_table*
  %110 = call i32 @PTR_ERR(%struct.nft_table* %109)
  %111 = load i32, i32* @ENOENT, align 4
  %112 = sub nsw i32 0, %111
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %107
  %115 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %116 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %117 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %115, %struct.nlattr* %116)
  %118 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %119 = bitcast %struct.nft_chain* %118 to %struct.nft_table*
  %120 = call i32 @PTR_ERR(%struct.nft_table* %119)
  store i32 %120, i32* %7, align 4
  br label %253

121:                                              ; preds = %107
  store %struct.nft_chain* null, %struct.nft_chain** %19, align 8
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %122, %91
  %124 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %125 = load i64, i64* @NFTA_CHAIN_POLICY, align 8
  %126 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %124, i64 %125
  %127 = load %struct.nlattr*, %struct.nlattr** %126, align 8
  %128 = icmp ne %struct.nlattr* %127, null
  br i1 %128, label %129, label %178

129:                                              ; preds = %123
  %130 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %131 = icmp ne %struct.nft_chain* %130, null
  br i1 %131, label %132, label %146

132:                                              ; preds = %129
  %133 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %134 = bitcast %struct.nft_chain* %133 to %struct.nft_table*
  %135 = call i32 @nft_is_base_chain(%struct.nft_table* %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %146, label %137

137:                                              ; preds = %132
  %138 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %139 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %140 = load i64, i64* @NFTA_CHAIN_POLICY, align 8
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %139, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %138, %struct.nlattr* %142)
  %144 = load i32, i32* @EOPNOTSUPP, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %7, align 4
  br label %253

146:                                              ; preds = %132, %129
  %147 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %148 = icmp eq %struct.nft_chain* %147, null
  br i1 %148, label %149, label %164

149:                                              ; preds = %146
  %150 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %151 = load i64, i64* @NFTA_CHAIN_HOOK, align 8
  %152 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %150, i64 %151
  %153 = load %struct.nlattr*, %struct.nlattr** %152, align 8
  %154 = icmp eq %struct.nlattr* %153, null
  br i1 %154, label %155, label %164

155:                                              ; preds = %149
  %156 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %157 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %158 = load i64, i64* @NFTA_CHAIN_POLICY, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %157, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %156, %struct.nlattr* %160)
  %162 = load i32, i32* @EOPNOTSUPP, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %7, align 4
  br label %253

164:                                              ; preds = %149, %146
  %165 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %166 = load i64, i64* @NFTA_CHAIN_POLICY, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i32 @nla_get_be32(%struct.nlattr* %168)
  %170 = call i8* @ntohl(i32 %169)
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* %20, align 4
  %172 = load i32, i32* %20, align 4
  switch i32 %172, label %174 [
    i32 128, label %173
    i32 129, label %173
  ]

173:                                              ; preds = %164, %164
  br label %177

174:                                              ; preds = %164
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %7, align 4
  br label %253

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177, %123
  %179 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %180 = load i64, i64* @NFTA_CHAIN_FLAGS, align 8
  %181 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %179, i64 %180
  %182 = load %struct.nlattr*, %struct.nlattr** %181, align 8
  %183 = icmp ne %struct.nlattr* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %178
  %185 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %186 = load i64, i64* @NFTA_CHAIN_FLAGS, align 8
  %187 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %185, i64 %186
  %188 = load %struct.nlattr*, %struct.nlattr** %187, align 8
  %189 = call i32 @nla_get_be32(%struct.nlattr* %188)
  %190 = call i8* @ntohl(i32 %189)
  %191 = ptrtoint i8* %190 to i32
  store i32 %191, i32* %23, align 4
  br label %200

192:                                              ; preds = %178
  %193 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %194 = icmp ne %struct.nft_chain* %193, null
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %197 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %23, align 4
  br label %199

199:                                              ; preds = %195, %192
  br label %200

200:                                              ; preds = %199, %184
  %201 = load %struct.net*, %struct.net** %8, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %203 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %204 = load i32, i32* %16, align 4
  %205 = load %struct.nft_table*, %struct.nft_table** %18, align 8
  %206 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %207 = bitcast %struct.nft_chain* %206 to %struct.nft_table*
  %208 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %209 = call i32 @nft_ctx_init(%struct.nft_ctx* %21, %struct.net* %201, %struct.sk_buff* %202, %struct.nlmsghdr* %203, i32 %204, %struct.nft_table* %205, %struct.nft_table* %207, %struct.nlattr** %208)
  %210 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %211 = icmp ne %struct.nft_chain* %210, null
  br i1 %211, label %212, label %247

212:                                              ; preds = %200
  %213 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %214 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @NLM_F_EXCL, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %212
  %220 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %221 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %222 = call i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack* %220, %struct.nlattr* %221)
  %223 = load i32, i32* @EEXIST, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %7, align 4
  br label %253

225:                                              ; preds = %212
  %226 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %227 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @NLM_F_REPLACE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %225
  %233 = load i32, i32* @EOPNOTSUPP, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %7, align 4
  br label %253

235:                                              ; preds = %225
  %236 = load %struct.nft_chain*, %struct.nft_chain** %19, align 8
  %237 = getelementptr inbounds %struct.nft_chain, %struct.nft_chain* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @NFT_BASE_CHAIN, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* %23, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %23, align 4
  %243 = load i32, i32* %15, align 4
  %244 = load i32, i32* %20, align 4
  %245 = load i32, i32* %23, align 4
  %246 = call i32 @nf_tables_updchain(%struct.nft_ctx* %21, i32 %243, i32 %244, i32 %245)
  store i32 %246, i32* %7, align 4
  br label %253

247:                                              ; preds = %200
  %248 = load i32, i32* %16, align 4
  %249 = load i32, i32* %15, align 4
  %250 = load i32, i32* %20, align 4
  %251 = load i32, i32* %23, align 4
  %252 = call i32 @nf_tables_addchain(%struct.nft_ctx* %21, i32 %248, i32 %249, i32 %250, i32 %251)
  store i32 %252, i32* %7, align 4
  br label %253

253:                                              ; preds = %247, %235, %232, %219, %174, %155, %137, %114, %81, %46
  %254 = load i32, i32* %7, align 4
  ret i32 %254
}

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @nft_genmask_next(%struct.net*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.nft_table* @nft_table_lookup(%struct.net*, %struct.nlattr*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_table*) #1

declare dso_local i32 @NL_SET_BAD_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_table*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @nla_get_be64(%struct.nlattr*) #1

declare dso_local %struct.nft_table* @nft_chain_lookup_byhandle(%struct.nft_table*, i32, i32) #1

declare dso_local %struct.nft_table* @nft_chain_lookup(%struct.net*, %struct.nft_table*, %struct.nlattr*, i32) #1

declare dso_local i32 @nft_is_base_chain(%struct.nft_table*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_ctx_init(%struct.nft_ctx*, %struct.net*, %struct.sk_buff*, %struct.nlmsghdr*, i32, %struct.nft_table*, %struct.nft_table*, %struct.nlattr**) #1

declare dso_local i32 @nf_tables_updchain(%struct.nft_ctx*, i32, i32, i32) #1

declare dso_local i32 @nf_tables_addchain(%struct.nft_ctx*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
