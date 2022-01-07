; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_ip6.c_ebt_ip6_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ebt_ip6_info* }
%struct.ebt_ip6_info = type { i32, i64, i64, i64*, i64*, i64*, i64*, i32, i32, i32, i32 }
%struct.ipv6hdr = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%union.pkthdr = type { %struct.TYPE_4__ }

@EBT_IP6_TCLASS = common dso_local global i32 0, align 4
@EBT_IP6_SOURCE = common dso_local global i32 0, align 4
@EBT_IP6_DEST = common dso_local global i32 0, align 4
@EBT_IP6_PROTO = common dso_local global i32 0, align 4
@EBT_IP6_DPORT = common dso_local global i32 0, align 4
@EBT_IP6_SPORT = common dso_local global i32 0, align 4
@EBT_IP6_ICMP6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @ebt_ip6_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_ip6_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ebt_ip6_info*, align 8
  %7 = alloca %struct.ipv6hdr*, align 8
  %8 = alloca %struct.ipv6hdr, align 8
  %9 = alloca %union.pkthdr*, align 8
  %10 = alloca %union.pkthdr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %16 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %17 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %16, i32 0, i32 0
  %18 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %17, align 8
  store %struct.ebt_ip6_info* %18, %struct.ebt_ip6_info** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = bitcast %struct.ipv6hdr* %8 to %union.pkthdr*
  %21 = call %union.pkthdr* @skb_header_pointer(%struct.sk_buff* %19, i32 0, i32 40, %union.pkthdr* %20)
  %22 = bitcast %union.pkthdr* %21 to %struct.ipv6hdr*
  store %struct.ipv6hdr* %22, %struct.ipv6hdr** %7, align 8
  %23 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %24 = icmp eq %struct.ipv6hdr* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %268

26:                                               ; preds = %2
  %27 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %28 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EBT_IP6_TCLASS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %35 = load i32, i32* @EBT_IP6_TCLASS, align 4
  %36 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %37 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %40 = bitcast %struct.ipv6hdr* %39 to %union.pkthdr*
  %41 = call i64 @ipv6_get_dsfield(%union.pkthdr* %40)
  %42 = icmp ne i64 %38, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @NF_INVF(%struct.ebt_ip6_info* %34, i32 %35, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %268

47:                                               ; preds = %33, %26
  %48 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %49 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @EBT_IP6_SOURCE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %47
  %55 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %56 = load i32, i32* @EBT_IP6_SOURCE, align 4
  %57 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %58 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %57, i32 0, i32 4
  %59 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %60 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %59, i32 0, i32 10
  %61 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %62 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %61, i32 0, i32 9
  %63 = call i32 @ipv6_masked_addr_cmp(i32* %58, i32* %60, i32* %62)
  %64 = call i64 @NF_INVF(%struct.ebt_ip6_info* %55, i32 %56, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %54, %47
  %67 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %68 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @EBT_IP6_DEST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %75 = load i32, i32* @EBT_IP6_DEST, align 4
  %76 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %77 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %76, i32 0, i32 3
  %78 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %79 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %78, i32 0, i32 8
  %80 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %81 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %80, i32 0, i32 7
  %82 = call i32 @ipv6_masked_addr_cmp(i32* %77, i32* %79, i32* %81)
  %83 = call i64 @NF_INVF(%struct.ebt_ip6_info* %74, i32 %75, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %73, %54
  store i32 0, i32* %3, align 4
  br label %268

86:                                               ; preds = %73, %66
  %87 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %88 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @EBT_IP6_PROTO, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %267

93:                                               ; preds = %86
  %94 = load %struct.ipv6hdr*, %struct.ipv6hdr** %7, align 8
  %95 = getelementptr inbounds %struct.ipv6hdr, %struct.ipv6hdr* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %11, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call i32 @ipv6_skip_exthdr(%struct.sk_buff* %97, i32 40, i64* %11, i32* %12)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %268

102:                                              ; preds = %93
  %103 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %104 = load i32, i32* @EBT_IP6_PROTO, align 4
  %105 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %106 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i64 @NF_INVF(%struct.ebt_ip6_info* %103, i32 %104, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %268

114:                                              ; preds = %102
  %115 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %116 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @EBT_IP6_DPORT, align 4
  %119 = load i32, i32* @EBT_IP6_SPORT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @EBT_IP6_ICMP6, align 4
  %122 = or i32 %120, %121
  %123 = and i32 %117, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %114
  store i32 1, i32* %3, align 4
  br label %268

126:                                              ; preds = %114
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call %union.pkthdr* @skb_header_pointer(%struct.sk_buff* %127, i32 %128, i32 16, %union.pkthdr* %10)
  store %union.pkthdr* %129, %union.pkthdr** %9, align 8
  %130 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %131 = icmp eq %union.pkthdr* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %268

133:                                              ; preds = %126
  %134 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %135 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @EBT_IP6_DPORT, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %170

140:                                              ; preds = %133
  %141 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %142 = bitcast %union.pkthdr* %141 to %struct.TYPE_3__*
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ntohs(i32 %144)
  store i64 %145, i64* %14, align 8
  %146 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %147 = load i32, i32* @EBT_IP6_DPORT, align 4
  %148 = load i64, i64* %14, align 8
  %149 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %150 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %149, i32 0, i32 3
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %148, %153
  br i1 %154, label %163, label %155

155:                                              ; preds = %140
  %156 = load i64, i64* %14, align 8
  %157 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %158 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %156, %161
  br label %163

163:                                              ; preds = %155, %140
  %164 = phi i1 [ true, %140 ], [ %162, %155 ]
  %165 = zext i1 %164 to i32
  %166 = call i64 @NF_INVF(%struct.ebt_ip6_info* %146, i32 %147, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 0, i32* %3, align 4
  br label %268

169:                                              ; preds = %163
  br label %170

170:                                              ; preds = %169, %133
  %171 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %172 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @EBT_IP6_SPORT, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %207

177:                                              ; preds = %170
  %178 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %179 = bitcast %union.pkthdr* %178 to %struct.TYPE_3__*
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @ntohs(i32 %181)
  store i64 %182, i64* %15, align 8
  %183 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %184 = load i32, i32* @EBT_IP6_SPORT, align 4
  %185 = load i64, i64* %15, align 8
  %186 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %187 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %186, i32 0, i32 4
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp slt i64 %185, %190
  br i1 %191, label %200, label %192

192:                                              ; preds = %177
  %193 = load i64, i64* %15, align 8
  %194 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %195 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %194, i32 0, i32 4
  %196 = load i64*, i64** %195, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp sgt i64 %193, %198
  br label %200

200:                                              ; preds = %192, %177
  %201 = phi i1 [ true, %177 ], [ %199, %192 ]
  %202 = zext i1 %201 to i32
  %203 = call i64 @NF_INVF(%struct.ebt_ip6_info* %183, i32 %184, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  store i32 0, i32* %3, align 4
  br label %268

206:                                              ; preds = %200
  br label %207

207:                                              ; preds = %206, %170
  %208 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %209 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @EBT_IP6_ICMP6, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %266

214:                                              ; preds = %207
  %215 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %216 = load i32, i32* @EBT_IP6_ICMP6, align 4
  %217 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %218 = bitcast %union.pkthdr* %217 to %struct.TYPE_4__*
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %222 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %221, i32 0, i32 5
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp slt i64 %220, %225
  br i1 %226, label %260, label %227

227:                                              ; preds = %214
  %228 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %229 = bitcast %union.pkthdr* %228 to %struct.TYPE_4__*
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %233 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %232, i32 0, i32 5
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 1
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %231, %236
  br i1 %237, label %260, label %238

238:                                              ; preds = %227
  %239 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %240 = bitcast %union.pkthdr* %239 to %struct.TYPE_4__*
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %244 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %243, i32 0, i32 6
  %245 = load i64*, i64** %244, align 8
  %246 = getelementptr inbounds i64, i64* %245, i64 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp slt i64 %242, %247
  br i1 %248, label %260, label %249

249:                                              ; preds = %238
  %250 = load %union.pkthdr*, %union.pkthdr** %9, align 8
  %251 = bitcast %union.pkthdr* %250 to %struct.TYPE_4__*
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load %struct.ebt_ip6_info*, %struct.ebt_ip6_info** %6, align 8
  %255 = getelementptr inbounds %struct.ebt_ip6_info, %struct.ebt_ip6_info* %254, i32 0, i32 6
  %256 = load i64*, i64** %255, align 8
  %257 = getelementptr inbounds i64, i64* %256, i64 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp sgt i64 %253, %258
  br label %260

260:                                              ; preds = %249, %238, %227, %214
  %261 = phi i1 [ true, %238 ], [ true, %227 ], [ true, %214 ], [ %259, %249 ]
  %262 = zext i1 %261 to i32
  %263 = call i64 @NF_INVF(%struct.ebt_ip6_info* %215, i32 %216, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %260
  store i32 0, i32* %3, align 4
  br label %268

266:                                              ; preds = %260, %207
  br label %267

267:                                              ; preds = %266, %86
  store i32 1, i32* %3, align 4
  br label %268

268:                                              ; preds = %267, %265, %205, %168, %132, %125, %113, %101, %85, %46, %25
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local %union.pkthdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %union.pkthdr*) #1

declare dso_local i64 @NF_INVF(%struct.ebt_ip6_info*, i32, i32) #1

declare dso_local i64 @ipv6_get_dsfield(%union.pkthdr*) #1

declare dso_local i32 @ipv6_masked_addr_cmp(i32*, i32*, i32*) #1

declare dso_local i32 @ipv6_skip_exthdr(%struct.sk_buff*, i32, i64*, i32*) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
