; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nf_tables_fill_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_ctx = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nft_set = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32 }
%struct.nfgenmsg = type { i32, i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@NFNL_SUBSYS_NFTABLES = common dso_local global i32 0, align 4
@NFNETLINK_V0 = common dso_local global i32 0, align 4
@NFTA_SET_TABLE = common dso_local global i32 0, align 4
@NFTA_SET_NAME = common dso_local global i32 0, align 4
@NFTA_SET_HANDLE = common dso_local global i32 0, align 4
@NFTA_SET_PAD = common dso_local global i32 0, align 4
@NFTA_SET_FLAGS = common dso_local global i32 0, align 4
@NFTA_SET_KEY_TYPE = common dso_local global i32 0, align 4
@NFTA_SET_KEY_LEN = common dso_local global i32 0, align 4
@NFT_SET_MAP = common dso_local global i32 0, align 4
@NFTA_SET_DATA_TYPE = common dso_local global i32 0, align 4
@NFTA_SET_DATA_LEN = common dso_local global i32 0, align 4
@NFT_SET_OBJECT = common dso_local global i32 0, align 4
@NFTA_SET_OBJ_TYPE = common dso_local global i32 0, align 4
@NFTA_SET_TIMEOUT = common dso_local global i32 0, align 4
@NFTA_SET_GC_INTERVAL = common dso_local global i32 0, align 4
@NFT_SET_POL_PERFORMANCE = common dso_local global i64 0, align 8
@NFTA_SET_POLICY = common dso_local global i32 0, align 4
@NFTA_SET_USERDATA = common dso_local global i32 0, align 4
@NFTA_SET_DESC = common dso_local global i32 0, align 4
@NFTA_SET_DESC_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_ctx*, %struct.nft_set*, i32, i32)* @nf_tables_fill_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nf_tables_fill_set(%struct.sk_buff* %0, %struct.nft_ctx* %1, %struct.nft_set* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nft_ctx*, align 8
  %9 = alloca %struct.nft_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfgenmsg*, align 8
  %13 = alloca %struct.nlmsghdr*, align 8
  %14 = alloca %struct.nlattr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.nft_ctx* %1, %struct.nft_ctx** %8, align 8
  store %struct.nft_set* %2, %struct.nft_set** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.nft_ctx*, %struct.nft_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nft_ctx*, %struct.nft_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @NFNL_SUBSYS_NFTABLES, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @nfnl_msg_type(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %26, i32 %27, i32 %28, i32 %29, i32 12, i32 %30)
  store %struct.nlmsghdr* %31, %struct.nlmsghdr** %13, align 8
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %33 = icmp eq %struct.nlmsghdr* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %257

35:                                               ; preds = %5
  %36 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %37 = call %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr* %36)
  store %struct.nfgenmsg* %37, %struct.nfgenmsg** %12, align 8
  %38 = load %struct.nft_ctx*, %struct.nft_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nfgenmsg*, %struct.nfgenmsg** %12, align 8
  %42 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @NFNETLINK_V0, align 4
  %44 = load %struct.nfgenmsg*, %struct.nfgenmsg** %12, align 8
  %45 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.nft_ctx*, %struct.nft_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 65535
  %53 = call i32 @htons(i32 %52)
  %54 = load %struct.nfgenmsg*, %struct.nfgenmsg** %12, align 8
  %55 = getelementptr inbounds %struct.nfgenmsg, %struct.nfgenmsg* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = load i32, i32* @NFTA_SET_TABLE, align 4
  %58 = load %struct.nft_ctx*, %struct.nft_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @nla_put_string(%struct.sk_buff* %56, i32 %57, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %35
  br label %257

66:                                               ; preds = %35
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load i32, i32* @NFTA_SET_NAME, align 4
  %69 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %70 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @nla_put_string(%struct.sk_buff* %67, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %257

75:                                               ; preds = %66
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load i32, i32* @NFTA_SET_HANDLE, align 4
  %78 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %79 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @cpu_to_be64(i32 %80)
  %82 = load i32, i32* @NFTA_SET_PAD, align 4
  %83 = call i64 @nla_put_be64(%struct.sk_buff* %76, i32 %77, i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %257

86:                                               ; preds = %75
  %87 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %88 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = load i32, i32* @NFTA_SET_FLAGS, align 4
  %94 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %95 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @htonl(i32 %96)
  %98 = call i64 @nla_put_be32(%struct.sk_buff* %92, i32 %93, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %257

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %86
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load i32, i32* @NFTA_SET_KEY_TYPE, align 4
  %105 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %106 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @htonl(i32 %107)
  %109 = call i64 @nla_put_be32(%struct.sk_buff* %103, i32 %104, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %257

112:                                              ; preds = %102
  %113 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %114 = load i32, i32* @NFTA_SET_KEY_LEN, align 4
  %115 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %116 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @htonl(i32 %117)
  %119 = call i64 @nla_put_be32(%struct.sk_buff* %113, i32 %114, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %257

122:                                              ; preds = %112
  %123 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %124 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NFT_SET_MAP, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %122
  %130 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %131 = load i32, i32* @NFTA_SET_DATA_TYPE, align 4
  %132 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %133 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @htonl(i32 %134)
  %136 = call i64 @nla_put_be32(%struct.sk_buff* %130, i32 %131, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %257

139:                                              ; preds = %129
  %140 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %141 = load i32, i32* @NFTA_SET_DATA_LEN, align 4
  %142 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %143 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @htonl(i32 %144)
  %146 = call i64 @nla_put_be32(%struct.sk_buff* %140, i32 %141, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %139
  br label %257

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149, %122
  %151 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %152 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @NFT_SET_OBJECT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %150
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = load i32, i32* @NFTA_SET_OBJ_TYPE, align 4
  %160 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %161 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @htonl(i32 %162)
  %164 = call i64 @nla_put_be32(%struct.sk_buff* %158, i32 %159, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %157
  br label %257

167:                                              ; preds = %157, %150
  %168 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %169 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %168, i32 0, i32 11
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %167
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = load i32, i32* @NFTA_SET_TIMEOUT, align 4
  %175 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %176 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %175, i32 0, i32 11
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @nf_jiffies64_to_msecs(i64 %177)
  %179 = load i32, i32* @NFTA_SET_PAD, align 4
  %180 = call i64 @nla_put_be64(%struct.sk_buff* %173, i32 %174, i32 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  br label %257

183:                                              ; preds = %172, %167
  %184 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %185 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = load i32, i32* @NFTA_SET_GC_INTERVAL, align 4
  %191 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %192 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @htonl(i32 %193)
  %195 = call i64 @nla_put_be32(%struct.sk_buff* %189, i32 %190, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  br label %257

198:                                              ; preds = %188, %183
  %199 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %200 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @NFT_SET_POL_PERFORMANCE, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %216

204:                                              ; preds = %198
  %205 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %206 = load i32, i32* @NFTA_SET_POLICY, align 4
  %207 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %208 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @htonl(i32 %210)
  %212 = call i64 @nla_put_be32(%struct.sk_buff* %205, i32 %206, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  br label %257

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %215, %198
  %217 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %218 = load i32, i32* @NFTA_SET_USERDATA, align 4
  %219 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %220 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %219, i32 0, i32 10
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %223 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = call i64 @nla_put(%struct.sk_buff* %217, i32 %218, i32 %221, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %216
  br label %257

228:                                              ; preds = %216
  %229 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %230 = load i32, i32* @NFTA_SET_DESC, align 4
  %231 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %229, i32 %230)
  store %struct.nlattr* %231, %struct.nlattr** %14, align 8
  %232 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %233 = icmp eq %struct.nlattr* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %257

235:                                              ; preds = %228
  %236 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %237 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %236, i32 0, i32 8
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %242 = load i32, i32* @NFTA_SET_DESC_SIZE, align 4
  %243 = load %struct.nft_set*, %struct.nft_set** %9, align 8
  %244 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %243, i32 0, i32 8
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @htonl(i32 %245)
  %247 = call i64 @nla_put_be32(%struct.sk_buff* %241, i32 %242, i32 %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %240
  br label %257

250:                                              ; preds = %240, %235
  %251 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %252 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %253 = call i32 @nla_nest_end(%struct.sk_buff* %251, %struct.nlattr* %252)
  %254 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %255 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %256 = call i32 @nlmsg_end(%struct.sk_buff* %254, %struct.nlmsghdr* %255)
  store i32 0, i32* %6, align 4
  br label %261

257:                                              ; preds = %249, %234, %227, %214, %197, %182, %166, %148, %138, %121, %111, %100, %85, %74, %65, %34
  %258 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %259 = load %struct.nlmsghdr*, %struct.nlmsghdr** %13, align 8
  %260 = call i32 @nlmsg_trim(%struct.sk_buff* %258, %struct.nlmsghdr* %259)
  store i32 -1, i32* %6, align 4
  br label %261

261:                                              ; preds = %257, %250
  %262 = load i32, i32* %6, align 4
  ret i32 %262
}

declare dso_local i32 @nfnl_msg_type(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.nfgenmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @nf_jiffies64_to_msecs(i64) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nlmsg_end(%struct.sk_buff*, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_trim(%struct.sk_buff*, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
