; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_append_page.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_append_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32 }
%struct.flowi4 = type { i32 }
%struct.page = type { i32 }
%struct.inet_sock = type { i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.inet_cork }
%struct.inet_cork = type { i32, i32, i64, i64, %struct.ip_options*, i64 }
%struct.ip_options = type { i32 }
%struct.sk_buff = type { i32, i64, i32, i32, i64, i64, i64 }
%struct.rtable = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@MSG_PROBE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPCORK_OPT = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IP_MAX_MTU = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_append_page(%struct.sock* %0, %struct.flowi4* %1, %struct.page* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.flowi4*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.inet_sock*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca %struct.ip_options*, align 8
  %18 = alloca %struct.inet_cork*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.sk_buff*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %8, align 8
  store %struct.flowi4* %1, %struct.flowi4** %9, align 8
  store %struct.page* %2, %struct.page** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %30 = load %struct.sock*, %struct.sock** %8, align 8
  %31 = call %struct.inet_sock* @inet_sk(%struct.sock* %30)
  store %struct.inet_sock* %31, %struct.inet_sock** %14, align 8
  store %struct.ip_options* null, %struct.ip_options** %17, align 8
  %32 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %33 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %6
  %37 = load i32, i32* @EPERM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %356

39:                                               ; preds = %6
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @MSG_PROBE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %356

45:                                               ; preds = %39
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = call i64 @skb_queue_empty(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %356

53:                                               ; preds = %45
  %54 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %55 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store %struct.inet_cork* %56, %struct.inet_cork** %18, align 8
  %57 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %58 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.rtable*
  store %struct.rtable* %60, %struct.rtable** %16, align 8
  %61 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %62 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IPCORK_OPT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %53
  %68 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %69 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %68, i32 0, i32 4
  %70 = load %struct.ip_options*, %struct.ip_options** %69, align 8
  store %struct.ip_options* %70, %struct.ip_options** %17, align 8
  br label %71

71:                                               ; preds = %67, %53
  %72 = load %struct.rtable*, %struct.rtable** %16, align 8
  %73 = getelementptr inbounds %struct.rtable, %struct.rtable* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NETIF_F_SG, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %71
  %82 = load i32, i32* @EOPNOTSUPP, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %7, align 4
  br label %356

84:                                               ; preds = %71
  %85 = load %struct.rtable*, %struct.rtable** %16, align 8
  %86 = getelementptr inbounds %struct.rtable, %struct.rtable* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_6__* %88)
  store i32 %89, i32* %19, align 4
  %90 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %91 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @IP_MAX_MTU, align 4
  br label %100

96:                                               ; preds = %84
  %97 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %98 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  br label %100

100:                                              ; preds = %96, %94
  %101 = phi i32 [ %95, %94 ], [ %99, %96 ]
  store i32 %101, i32* %20, align 4
  %102 = load %struct.ip_options*, %struct.ip_options** %17, align 8
  %103 = icmp ne %struct.ip_options* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct.ip_options*, %struct.ip_options** %17, align 8
  %106 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  br label %109

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %104
  %110 = phi i32 [ %107, %104 ], [ 0, %108 ]
  %111 = sext i32 %110 to i64
  %112 = add i64 4, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %24, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %24, align 4
  %116 = sub i32 %114, %115
  %117 = and i32 %116, -8
  %118 = load i32, i32* %24, align 4
  %119 = add i32 %117, %118
  store i32 %119, i32* %23, align 4
  %120 = load %struct.sock*, %struct.sock** %8, align 8
  %121 = call i64 @ip_sk_ignore_df(%struct.sock* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %109
  br label %126

124:                                              ; preds = %109
  %125 = load i32, i32* %20, align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ 65535, %123 ], [ %125, %124 ]
  store i32 %127, i32* %26, align 4
  %128 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %129 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = add i64 %130, %131
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* %24, align 4
  %135 = sub i32 %133, %134
  %136 = zext i32 %135 to i64
  %137 = icmp ugt i64 %132, %136
  br i1 %137, label %138, label %161

138:                                              ; preds = %126
  %139 = load %struct.sock*, %struct.sock** %8, align 8
  %140 = load i32, i32* @EMSGSIZE, align 4
  %141 = load %struct.flowi4*, %struct.flowi4** %9, align 8
  %142 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.inet_sock*, %struct.inet_sock** %14, align 8
  %145 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %20, align 4
  %148 = load %struct.ip_options*, %struct.ip_options** %17, align 8
  %149 = icmp ne %struct.ip_options* %148, null
  br i1 %149, label %150, label %154

150:                                              ; preds = %138
  %151 = load %struct.ip_options*, %struct.ip_options** %17, align 8
  %152 = getelementptr inbounds %struct.ip_options, %struct.ip_options* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  br label %155

154:                                              ; preds = %138
  br label %155

155:                                              ; preds = %154, %150
  %156 = phi i32 [ %153, %150 ], [ 0, %154 ]
  %157 = sub nsw i32 %147, %156
  %158 = call i32 @ip_local_error(%struct.sock* %139, i32 %140, i32 %143, i32 %146, i32 %157)
  %159 = load i32, i32* @EMSGSIZE, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %7, align 4
  br label %356

161:                                              ; preds = %126
  %162 = load %struct.sock*, %struct.sock** %8, align 8
  %163 = getelementptr inbounds %struct.sock, %struct.sock* %162, i32 0, i32 1
  %164 = call %struct.sk_buff* @skb_peek_tail(i32* %163)
  store %struct.sk_buff* %164, %struct.sk_buff** %15, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %166 = icmp ne %struct.sk_buff* %165, null
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %7, align 4
  br label %356

170:                                              ; preds = %161
  %171 = load i64, i64* %12, align 8
  %172 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %173 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, %171
  store i64 %175, i64* %173, align 8
  br label %176

176:                                              ; preds = %317, %273, %170
  %177 = load i64, i64* %12, align 8
  %178 = icmp ugt i64 %177, 0
  br i1 %178, label %179, label %344

179:                                              ; preds = %176
  %180 = load i32, i32* %20, align 4
  %181 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %180, %183
  store i32 %184, i32* %21, align 4
  %185 = load i32, i32* %21, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64, i64* %12, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %179
  %190 = load i32, i32* %23, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sub i32 %190, %193
  store i32 %194, i32* %21, align 4
  br label %195

195:                                              ; preds = %189, %179
  %196 = load i32, i32* %21, align 4
  %197 = icmp sle i32 %196, 0
  br i1 %197, label %198, label %278

198:                                              ; preds = %195
  %199 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %199, %struct.sk_buff** %27, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %201 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %23, align 4
  %204 = sub i32 %202, %203
  store i32 %204, i32* %25, align 4
  %205 = load i32, i32* %24, align 4
  %206 = load i32, i32* %19, align 4
  %207 = add i32 %205, %206
  %208 = load i32, i32* %25, align 4
  %209 = add i32 %207, %208
  %210 = add i32 %209, 15
  store i32 %210, i32* %28, align 4
  %211 = load %struct.sock*, %struct.sock** %8, align 8
  %212 = load i32, i32* %28, align 4
  %213 = load %struct.sock*, %struct.sock** %8, align 8
  %214 = getelementptr inbounds %struct.sock, %struct.sock* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %211, i32 %212, i32 1, i32 %215)
  store %struct.sk_buff* %216, %struct.sk_buff** %15, align 8
  %217 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %218 = icmp ne %struct.sk_buff* %217, null
  %219 = xor i1 %218, true
  %220 = zext i1 %219 to i32
  %221 = call i64 @unlikely(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %198
  %224 = load i32, i32* @ENOBUFS, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %22, align 4
  br label %345

226:                                              ; preds = %198
  %227 = load i64, i64* @CHECKSUM_NONE, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  %230 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 4
  store i64 0, i64* %231, align 8
  %232 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %233 = load i32, i32* %19, align 4
  %234 = call i32 @skb_reserve(%struct.sk_buff* %232, i32 %233)
  %235 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %236 = load i32, i32* %24, align 4
  %237 = load i32, i32* %25, align 4
  %238 = add i32 %236, %237
  %239 = call i32 @skb_put(%struct.sk_buff* %235, i32 %238)
  %240 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %241 = call i32 @skb_reset_network_header(%struct.sk_buff* %240)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* %24, align 4
  %246 = zext i32 %245 to i64
  %247 = add nsw i64 %244, %246
  %248 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 6
  store i64 %247, i64* %249, align 8
  %250 = load i32, i32* %25, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %226
  %253 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %254 = load i32, i32* %23, align 4
  %255 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %256 = call i32 @skb_transport_header(%struct.sk_buff* %255)
  %257 = load i32, i32* %25, align 4
  %258 = call i64 @skb_copy_and_csum_bits(%struct.sk_buff* %253, i32 %254, i32 %256, i32 %257, i32 0)
  %259 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %260 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %259, i32 0, i32 4
  store i64 %258, i64* %260, align 8
  %261 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %262 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %261, i32 0, i32 4
  %263 = load i64, i64* %262, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %265 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = call i64 @csum_sub(i64 %263, i64 %266)
  %268 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 4
  store i64 %267, i64* %269, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %27, align 8
  %271 = load i32, i32* %23, align 4
  %272 = call i32 @pskb_trim_unique(%struct.sk_buff* %270, i32 %271)
  br label %273

273:                                              ; preds = %252, %226
  %274 = load %struct.sock*, %struct.sock** %8, align 8
  %275 = getelementptr inbounds %struct.sock, %struct.sock* %274, i32 0, i32 1
  %276 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %277 = call i32 @__skb_queue_tail(i32* %275, %struct.sk_buff* %276)
  br label %176

278:                                              ; preds = %195
  %279 = load i32, i32* %21, align 4
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %12, align 8
  %282 = icmp ugt i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %278
  %284 = load i64, i64* %12, align 8
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %21, align 4
  br label %286

286:                                              ; preds = %283, %278
  %287 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %288 = load %struct.page*, %struct.page** %10, align 8
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %21, align 4
  %291 = call i64 @skb_append_pagefrags(%struct.sk_buff* %287, %struct.page* %288, i32 %289, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %286
  %294 = load i32, i32* @EMSGSIZE, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %22, align 4
  br label %345

296:                                              ; preds = %286
  %297 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %298 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @CHECKSUM_NONE, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %317

302:                                              ; preds = %296
  %303 = load %struct.page*, %struct.page** %10, align 8
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %21, align 4
  %306 = call i32 @csum_page(%struct.page* %303, i32 %304, i32 %305)
  store i32 %306, i32* %29, align 4
  %307 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %308 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* %29, align 4
  %311 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %312 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = call i64 @csum_block_add(i64 %309, i32 %310, i32 %313)
  %315 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %316 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %315, i32 0, i32 4
  store i64 %314, i64* %316, align 8
  br label %317

317:                                              ; preds = %302, %296
  %318 = load i32, i32* %21, align 4
  %319 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %320 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = load i32, i32* %21, align 4
  %324 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %325 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = add nsw i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load i32, i32* %21, align 4
  %329 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %330 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = add nsw i32 %331, %328
  store i32 %332, i32* %330, align 4
  %333 = load i32, i32* %21, align 4
  %334 = load %struct.sock*, %struct.sock** %8, align 8
  %335 = getelementptr inbounds %struct.sock, %struct.sock* %334, i32 0, i32 0
  %336 = call i32 @refcount_add(i32 %333, i32* %335)
  %337 = load i32, i32* %21, align 4
  %338 = load i32, i32* %11, align 4
  %339 = add nsw i32 %338, %337
  store i32 %339, i32* %11, align 4
  %340 = load i32, i32* %21, align 4
  %341 = sext i32 %340 to i64
  %342 = load i64, i64* %12, align 8
  %343 = sub i64 %342, %341
  store i64 %343, i64* %12, align 8
  br label %176

344:                                              ; preds = %176
  store i32 0, i32* %7, align 4
  br label %356

345:                                              ; preds = %293, %223
  %346 = load i64, i64* %12, align 8
  %347 = load %struct.inet_cork*, %struct.inet_cork** %18, align 8
  %348 = getelementptr inbounds %struct.inet_cork, %struct.inet_cork* %347, i32 0, i32 2
  %349 = load i64, i64* %348, align 8
  %350 = sub i64 %349, %346
  store i64 %350, i64* %348, align 8
  %351 = load %struct.sock*, %struct.sock** %8, align 8
  %352 = call i32 @sock_net(%struct.sock* %351)
  %353 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %354 = call i32 @IP_INC_STATS(i32 %352, i32 %353)
  %355 = load i32, i32* %22, align 4
  store i32 %355, i32* %7, align 4
  br label %356

356:                                              ; preds = %345, %344, %167, %155, %81, %50, %44, %36
  %357 = load i32, i32* %7, align 4
  ret i32 %357
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_6__*) #1

declare dso_local i64 @ip_sk_ignore_df(%struct.sock*) #1

declare dso_local i32 @ip_local_error(%struct.sock*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @skb_peek_tail(i32*) #1

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_and_csum_bits(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i64 @csum_sub(i64, i64) #1

declare dso_local i32 @pskb_trim_unique(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i64 @skb_append_pagefrags(%struct.sk_buff*, %struct.page*, i32, i32) #1

declare dso_local i32 @csum_page(%struct.page*, i32, i32) #1

declare dso_local i64 @csum_block_add(i64, i32, i32) #1

declare dso_local i32 @refcount_add(i32, i32*) #1

declare dso_local i32 @IP_INC_STATS(i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
