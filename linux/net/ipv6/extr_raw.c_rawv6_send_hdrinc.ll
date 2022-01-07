; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_send_hdrinc.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_raw.c_rawv6_send_hdrinc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.flowi6 = type { i32 }
%struct.dst_entry = type { i32 }
%struct.sockcm_cookie = type { i32, i32, i32 }
%struct.ipv6_pinfo = type { i32 }
%struct.net = type { i32 }
%struct.ipv6hdr = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rt6_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@EMSGSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MSG_PROBE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@MSG_CONFIRM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUT = common dso_local global i32 0, align 4
@NFPROTO_IPV6 = common dso_local global i32 0, align 4
@NF_INET_LOCAL_OUT = common dso_local global i32 0, align 4
@dst_output = common dso_local global i32 0, align 4
@IPSTATS_MIB_OUTDISCARDS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.msghdr*, i32, %struct.flowi6*, %struct.dst_entry**, i32, %struct.sockcm_cookie*)* @rawv6_send_hdrinc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawv6_send_hdrinc(%struct.sock* %0, %struct.msghdr* %1, i32 %2, %struct.flowi6* %3, %struct.dst_entry** %4, i32 %5, %struct.sockcm_cookie* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.msghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.flowi6*, align 8
  %13 = alloca %struct.dst_entry**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sockcm_cookie*, align 8
  %16 = alloca %struct.ipv6_pinfo*, align 8
  %17 = alloca %struct.net*, align 8
  %18 = alloca %struct.ipv6hdr*, align 8
  %19 = alloca %struct.sk_buff*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.rt6_info*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %9, align 8
  store %struct.msghdr* %1, %struct.msghdr** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.flowi6* %3, %struct.flowi6** %12, align 8
  store %struct.dst_entry** %4, %struct.dst_entry*** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.sockcm_cookie* %6, %struct.sockcm_cookie** %15, align 8
  %24 = load %struct.sock*, %struct.sock** %9, align 8
  %25 = call %struct.ipv6_pinfo* @inet6_sk(%struct.sock* %24)
  store %struct.ipv6_pinfo* %25, %struct.ipv6_pinfo** %16, align 8
  %26 = load %struct.sock*, %struct.sock** %9, align 8
  %27 = call %struct.net* @sock_net(%struct.sock* %26)
  store %struct.net* %27, %struct.net** %17, align 8
  %28 = load %struct.dst_entry**, %struct.dst_entry*** %13, align 8
  %29 = load %struct.dst_entry*, %struct.dst_entry** %28, align 8
  %30 = bitcast %struct.dst_entry* %29 to %struct.rt6_info*
  store %struct.rt6_info* %30, %struct.rt6_info** %21, align 8
  %31 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %32 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @LL_RESERVED_SPACE(%struct.TYPE_5__* %34)
  store i32 %35, i32* %22, align 4
  %36 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %37 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %23, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %44 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %42, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %7
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = load i32, i32* @EMSGSIZE, align 4
  %53 = load %struct.flowi6*, %struct.flowi6** %12, align 8
  %54 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %55 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ipv6_local_error(%struct.sock* %51, i32 %52, %struct.flowi6* %53, i32 %59)
  %61 = load i32, i32* @EMSGSIZE, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %230

63:                                               ; preds = %7
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  br label %230

70:                                               ; preds = %63
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @MSG_PROBE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %209

76:                                               ; preds = %70
  %77 = load %struct.sock*, %struct.sock** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %22, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %23, align 4
  %82 = add nsw i32 %80, %81
  %83 = add nsw i32 %82, 15
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* @MSG_DONTWAIT, align 4
  %86 = and i32 %84, %85
  %87 = call %struct.sk_buff* @sock_alloc_send_skb(%struct.sock* %77, i32 %83, i32 %86, i32* %20)
  store %struct.sk_buff* %87, %struct.sk_buff** %19, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %76
  br label %210

91:                                               ; preds = %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %93 = load i32, i32* %22, align 4
  %94 = call i32 @skb_reserve(%struct.sk_buff* %92, i32 %93)
  %95 = load i32, i32* @ETH_P_IPV6, align 4
  %96 = call i32 @htons(i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 4
  %99 = load %struct.sock*, %struct.sock** %9, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %15, align 8
  %105 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %15, align 8
  %110 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @skb_put(%struct.sk_buff* %114, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %118 = call i32 @skb_reset_network_header(%struct.sk_buff* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %120 = call %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff* %119)
  store %struct.ipv6hdr* %120, %struct.ipv6hdr** %18, align 8
  %121 = load i32, i32* @CHECKSUM_NONE, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %125 = load %struct.sockcm_cookie*, %struct.sockcm_cookie** %15, align 8
  %126 = getelementptr inbounds %struct.sockcm_cookie, %struct.sockcm_cookie* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @skb_setup_tx_timestamp(%struct.sk_buff* %124, i32 %127)
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @MSG_CONFIRM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %91
  %134 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %135 = call i32 @skb_set_dst_pending_confirm(%struct.sk_buff* %134, i32 1)
  br label %136

136:                                              ; preds = %133, %91
  %137 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %138 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ipv6hdr*, %struct.ipv6hdr** %18, align 8
  %143 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %144 = load i32, i32* %11, align 4
  %145 = call i32 @memcpy_from_msg(%struct.ipv6hdr* %142, %struct.msghdr* %143, i32 %144)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %136
  %149 = load i32, i32* @EFAULT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %20, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %152 = call i32 @kfree_skb(%struct.sk_buff* %151)
  br label %210

153:                                              ; preds = %136
  %154 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %155 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %156 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %155, i32 0, i32 1
  %157 = call i32 @skb_dst_set(%struct.sk_buff* %154, %struct.TYPE_4__* %156)
  %158 = load %struct.dst_entry**, %struct.dst_entry*** %13, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %158, align 8
  %159 = load %struct.sock*, %struct.sock** %9, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %161 = call %struct.sk_buff* @l3mdev_ip6_out(%struct.sock* %159, %struct.sk_buff* %160)
  store %struct.sk_buff* %161, %struct.sk_buff** %19, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %163 = icmp ne %struct.sk_buff* %162, null
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = call i64 @unlikely(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %153
  store i32 0, i32* %8, align 4
  br label %230

169:                                              ; preds = %153
  %170 = call i32 (...) @rcu_read_lock()
  %171 = load %struct.net*, %struct.net** %17, align 8
  %172 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %173 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IPSTATS_MIB_OUT, align 4
  %176 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @IP6_UPD_PO_STATS(%struct.net* %171, i32 %174, i32 %175, i32 %178)
  %180 = load i32, i32* @NFPROTO_IPV6, align 4
  %181 = load i32, i32* @NF_INET_LOCAL_OUT, align 4
  %182 = load %struct.net*, %struct.net** %17, align 8
  %183 = load %struct.sock*, %struct.sock** %9, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %185 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %186 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %187, align 8
  %189 = load i32, i32* @dst_output, align 4
  %190 = call i32 @NF_HOOK(i32 %180, i32 %181, %struct.net* %182, %struct.sock* %183, %struct.sk_buff* %184, i32* null, %struct.TYPE_5__* %188, i32 %189)
  store i32 %190, i32* %20, align 4
  %191 = load i32, i32* %20, align 4
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %169
  %194 = load i32, i32* %20, align 4
  %195 = call i32 @net_xmit_errno(i32 %194)
  store i32 %195, i32* %20, align 4
  br label %196

196:                                              ; preds = %193, %169
  %197 = load i32, i32* %20, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.net*, %struct.net** %17, align 8
  %201 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %202 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %205 = call i32 @IP6_INC_STATS(%struct.net* %200, i32 %203, i32 %204)
  %206 = call i32 (...) @rcu_read_unlock()
  br label %217

207:                                              ; preds = %196
  %208 = call i32 (...) @rcu_read_unlock()
  br label %209

209:                                              ; preds = %207, %75
  store i32 0, i32* %8, align 4
  br label %230

210:                                              ; preds = %148, %90
  %211 = load %struct.net*, %struct.net** %17, align 8
  %212 = load %struct.rt6_info*, %struct.rt6_info** %21, align 8
  %213 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @IPSTATS_MIB_OUTDISCARDS, align 4
  %216 = call i32 @IP6_INC_STATS(%struct.net* %211, i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %210, %199
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* @ENOBUFS, align 4
  %220 = sub nsw i32 0, %219
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load %struct.ipv6_pinfo*, %struct.ipv6_pinfo** %16, align 8
  %224 = getelementptr inbounds %struct.ipv6_pinfo, %struct.ipv6_pinfo* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %222
  store i32 0, i32* %20, align 4
  br label %228

228:                                              ; preds = %227, %222, %217
  %229 = load i32, i32* %20, align 4
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %228, %209, %168, %67, %50
  %231 = load i32, i32* %8, align 4
  ret i32 %231
}

declare dso_local %struct.ipv6_pinfo* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.TYPE_5__*) #1

declare dso_local i32 @ipv6_local_error(%struct.sock*, i32, %struct.flowi6*, i32) #1

declare dso_local %struct.sk_buff* @sock_alloc_send_skb(%struct.sock*, i32, i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.ipv6hdr* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @skb_setup_tx_timestamp(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_dst_pending_confirm(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy_from_msg(%struct.ipv6hdr*, %struct.msghdr*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.TYPE_4__*) #1

declare dso_local %struct.sk_buff* @l3mdev_ip6_out(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @IP6_UPD_PO_STATS(%struct.net*, i32, i32, i32) #1

declare dso_local i32 @NF_HOOK(i32, i32, %struct.net*, %struct.sock*, %struct.sk_buff*, i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @net_xmit_errno(i32) #1

declare dso_local i32 @IP6_INC_STATS(%struct.net*, i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
