; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_send_hdrinc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_raw.c_raw_send_hdrinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.flowi4 = type { i64, i32 }
%struct.msghdr = type { i32 }
%struct.rtable = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.sockcm_cookie = type { i32, i32, i32 }
%struct.inet_sock = type { i32, i32 }
%struct.net = type { i32 }
%struct.iphdr = type { i32, i64, i64, i32, i32, i64 }
%struct.sk_buff = type { i32, i32, i32, i32, i32, i32 }
%struct.icmphdr = type { i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_PROBE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@MSG_CONFIRM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IPPROTO_ICMP = common dso_local global i64 0, align 8
@NFPROTO_IPV4 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.flowi4*, %struct.msghdr*, i64, %struct.rtable**, i32, %struct.sockcm_cookie*)* @raw_send_hdrinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_send_hdrinc(%struct.sock* %0, %struct.flowi4* %1, %struct.msghdr* %2, i64 %3, %struct.rtable** %4, i32 %5, %struct.sockcm_cookie* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.flowi4*, align 8
  %11 = alloca %struct.msghdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.rtable**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockcm_cookie*, align 8
  %16 = alloca %struct.inet_sock*, align 8
  %17 = alloca %struct.net*, align 8
  %18 = alloca %struct.iphdr*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.rtable*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.flowi4* %1, %struct.flowi4** %10, align 8
  store %struct.msghdr* %2, %struct.msghdr** %11, align 8
  store i64 %3, i64* %12, align 8
  store %struct.rtable** %4, %struct.rtable*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.sockcm_cookie* %6, %struct.sockcm_cookie** %15, align 8
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = call %struct.inet_sock* @inet_sk(%struct.sock* %25)
  store %struct.inet_sock* %26, %struct.inet_sock** %16, align 8
  %27 = load %struct.sock*, %struct.sock** %9, align 8
  %28 = call %struct.net* @sock_net(%struct.sock* %27)
  store %struct.net* %28, %struct.net** %17, align 8
  %29 = load %struct.rtable**, %struct.rtable*** %13, align 8
  %30 = load %struct.rtable*, %struct.rtable** %29, align 8
  store %struct.rtable* %30, %struct.rtable** %22, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.rtable*, %struct.rtable** %22, align 8
  %33 = getelementptr inbounds %struct.rtable, %struct.rtable* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ugt i64 %31, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %7
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %43 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.inet_sock*, %struct.inet_sock** %16, align 8
  %46 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.rtable*, %struct.rtable** %22, align 8
  %49 = getelementptr inbounds %struct.rtable, %struct.rtable* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ip_local_error(%struct.sock* %40, i32 %41, i32 %44, i32 %47, i64 %53)
  %55 = load i32, i32* @EMSGSIZE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %8, align 4
  br label %275

57:                                               ; preds = %7
  %58 = load i64, i64* %12, align 8
  %59 = icmp ult i64 %58, 40
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %275

63:                                               ; preds = %57
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @MSG_PROBE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %255

69:                                               ; preds = %63
  %70 = load %struct.rtable*, %struct.rtable** %22, align 8
  %71 = getelementptr inbounds %struct.rtable, %struct.rtable* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_5__* %73)
  store i32 %74, i32* %23, align 4
  %75 = load %struct.rtable*, %struct.rtable** %22, align 8
  %76 = getelementptr inbounds %struct.rtable, %struct.rtable* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %24, align 4
  %81 = load %struct.sock*, %struct.sock** %9, align 8
  %82 = load i64, i64* %12, align 8
  %83 = load i32, i32* %23, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = load i32, i32* %24, align 4
  %87 = sext i32 %86 to i64
  %88 = add i64 %85, %87
  %89 = add i64 %88, 15
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* @MSG_DONTWAIT, align 4
  %92 = and i32 %90, %91
  %93 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %81, i64 %89, i32 %92, i32* %21)
  store %struct.sk_buff* %93, %struct.sk_buff** %19, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %95 = icmp ne %struct.sk_buff* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %69
  br label %259

97:                                               ; preds = %69
  %98 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %99 = load i32, i32* %23, align 4
  %100 = call i32 @skb_reserve(%struct.sk_buff* %98, i32 %99)
  %101 = load %struct.sock*, %struct.sock** %9, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %15, align 8
  %107 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %15, align 8
  %112 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %117 = load %struct.rtable*, %struct.rtable** %22, align 8
  %118 = getelementptr inbounds %struct.rtable, %struct.rtable* %117, i32 0, i32 0
  %119 = call i32 @skb_dst_set(%struct.sk_buff* %116, %struct.TYPE_4__* %118)
  %120 = load %struct.rtable**, %struct.rtable*** %13, align 8
  store %struct.rtable* null, %struct.rtable** %120, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %122 = call i32 @skb_reset_network_header(%struct.sk_buff* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %124 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %123)
  store %struct.iphdr* %124, %struct.iphdr** %18, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @skb_put(%struct.sk_buff* %125, i64 %126)
  %128 = load i32, i32* @CHECKSUM_NONE, align 4
  %129 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %132 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %15, align 8
  %133 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @skb_setup_tx_timestamp(%struct.sk_buff* %131, i32 %134)
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @MSG_CONFIRM, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %97
  %141 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %142 = call i32 @skb_set_dst_pending_confirm(%struct.sk_buff* %141, i32 1)
  br label %143

143:                                              ; preds = %140, %97
  %144 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %148 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @EFAULT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %21, align 4
  %151 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %152 = load %struct.msghdr*, %struct.msghdr** %11, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i64 @memcpy_from_msg(%struct.iphdr* %151, %struct.msghdr* %152, i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %143
  br label %256

157:                                              ; preds = %143
  %158 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %159 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = mul nsw i32 %160, 4
  store i32 %161, i32* %20, align 4
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %21, align 4
  %164 = load i32, i32* %20, align 4
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %12, align 8
  %167 = icmp ugt i64 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %256

169:                                              ; preds = %157
  %170 = load i32, i32* %20, align 4
  %171 = zext i32 %170 to i64
  %172 = icmp uge i64 %171, 40
  br i1 %172, label %173, label %233

173:                                              ; preds = %169
  %174 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %175 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load %struct.flowi4*, %struct.flowi4** %10, align 8
  %180 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %183 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %182, i32 0, i32 5
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %178, %173
  %185 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %186 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %185, i32 0, i32 2
  store i64 0, i64* %186, align 8
  %187 = load i64, i64* %12, align 8
  %188 = call i32 @htons(i64 %187)
  %189 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %190 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %192 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %184
  %196 = load %struct.net*, %struct.net** %17, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %198 = call i32 @ip_select_ident(%struct.net* %196, %struct.sk_buff* %197, i32* null)
  br label %199

199:                                              ; preds = %195, %184
  %200 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %201 = bitcast %struct.iphdr* %200 to i8*
  %202 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %203 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i64 @ip_fast_csum(i8* %201, i32 %204)
  %206 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %207 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %206, i32 0, i32 2
  store i64 %205, i64* %207, align 8
  %208 = load i32, i32* %20, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = add i32 %211, %208
  store i32 %212, i32* %210, align 4
  %213 = load %struct.iphdr*, %struct.iphdr** %18, align 8
  %214 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @IPPROTO_ICMP, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %232

218:                                              ; preds = %199
  %219 = load i64, i64* %12, align 8
  %220 = load i32, i32* %20, align 4
  %221 = zext i32 %220 to i64
  %222 = add i64 %221, 4
  %223 = icmp uge i64 %219, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %218
  %225 = load %struct.net*, %struct.net** %17, align 8
  %226 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %227 = call i64 @skb_transport_header(%struct.sk_buff* %226)
  %228 = inttoptr i64 %227 to %struct.icmphdr*
  %229 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @icmp_out_count(%struct.net* %225, i32 %230)
  br label %232

232:                                              ; preds = %224, %218, %199
  br label %233

233:                                              ; preds = %232, %169
  %234 = load i32, i32* @NFPROTO_IPV4, align 4
  %235 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %236 = load %struct.net*, %struct.net** %17, align 8
  %237 = load %struct.sock*, %struct.sock** %9, align 8
  %238 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %239 = load %struct.rtable*, %struct.rtable** %22, align 8
  %240 = getelementptr inbounds %struct.rtable, %struct.rtable* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i32, i32* @dst_output, align 4
  %244 = call i32 @NF_HOOK(i32 %234, i32 %235, %struct.net* %236, %struct.sock* %237, %struct.sk_buff* %238, i32* null, %struct.TYPE_5__* %242, i32 %243)
  store i32 %244, i32* %21, align 4
  %245 = load i32, i32* %21, align 4
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %233
  %248 = load i32, i32* %21, align 4
  %249 = call i32 @net_xmit_errno(i32 %248)
  store i32 %249, i32* %21, align 4
  br label %250

250:                                              ; preds = %247, %233
  %251 = load i32, i32* %21, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %250
  br label %259

254:                                              ; preds = %250
  br label %255

255:                                              ; preds = %254, %68
  store i32 0, i32* %8, align 4
  br label %275

256:                                              ; preds = %168, %156
  %257 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %258 = call i32 @kfree_skb(%struct.sk_buff* %257)
  br label %259

259:                                              ; preds = %256, %253, %96
  %260 = load %struct.net*, %struct.net** %17, align 8
  %261 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %262 = call i32 @IP_INC_STATS(%struct.net* %260, i32 %261)
  %263 = load i32, i32* %21, align 4
  %264 = load i32, i32* @ENOBUFS, align 4
  %265 = sub nsw i32 0, %264
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %259
  %268 = load %struct.inet_sock*, %struct.inet_sock** %16, align 8
  %269 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  store i32 0, i32* %21, align 4
  br label %273

273:                                              ; preds = %272, %267, %259
  %274 = load i32, i32* %21, align 4
  store i32 %274, i32* %8, align 4
  br label %275

275:                                              ; preds = %273, %255, %60, %39
  %276 = load i32, i32* %8, align 4
  ret i32 %276
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @ip_local_error(%struct.sock*, i32, i32, i32, i64) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_5__*) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i64, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_setup_tx_timestamp(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_dst_pending_confirm(%struct.sk_buff*, i32) #1

declare dso_local i64 @memcpy_from_msg(%struct.iphdr*, %struct.msghdr*, i64) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @ip_select_ident(%struct.net*, %struct.sk_buff*, i32*) #1

declare dso_local i64 @ip_fast_csum(i8*, i32) #1

declare dso_local i32 @icmp_out_count(%struct.net*, i32) #1

declare dso_local i64 @skb_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @IP_INC_STATS(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
