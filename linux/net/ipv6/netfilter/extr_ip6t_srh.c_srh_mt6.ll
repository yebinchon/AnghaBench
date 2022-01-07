; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_srh.c_srh_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_srh.c_srh_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ip6t_srh* }
%struct.ip6t_srh = type { i32, i64, i64, i64, i64, i64 }
%struct.ipv6_sr_hdr = type { i64, i64, i64, i64, i64, i64 }

@IPPROTO_ROUTING = common dso_local global i32 0, align 4
@IPV6_SRCRT_TYPE_4 = common dso_local global i64 0, align 8
@IP6T_SRH_NEXTHDR = common dso_local global i32 0, align 4
@IP6T_SRH_INV_NEXTHDR = common dso_local global i32 0, align 4
@IP6T_SRH_LEN_EQ = common dso_local global i32 0, align 4
@IP6T_SRH_INV_LEN_EQ = common dso_local global i32 0, align 4
@IP6T_SRH_LEN_GT = common dso_local global i32 0, align 4
@IP6T_SRH_INV_LEN_GT = common dso_local global i32 0, align 4
@IP6T_SRH_LEN_LT = common dso_local global i32 0, align 4
@IP6T_SRH_INV_LEN_LT = common dso_local global i32 0, align 4
@IP6T_SRH_SEGS_EQ = common dso_local global i32 0, align 4
@IP6T_SRH_INV_SEGS_EQ = common dso_local global i32 0, align 4
@IP6T_SRH_SEGS_GT = common dso_local global i32 0, align 4
@IP6T_SRH_INV_SEGS_GT = common dso_local global i32 0, align 4
@IP6T_SRH_SEGS_LT = common dso_local global i32 0, align 4
@IP6T_SRH_INV_SEGS_LT = common dso_local global i32 0, align 4
@IP6T_SRH_LAST_EQ = common dso_local global i32 0, align 4
@IP6T_SRH_INV_LAST_EQ = common dso_local global i32 0, align 4
@IP6T_SRH_LAST_GT = common dso_local global i32 0, align 4
@IP6T_SRH_INV_LAST_GT = common dso_local global i32 0, align 4
@IP6T_SRH_LAST_LT = common dso_local global i32 0, align 4
@IP6T_SRH_INV_LAST_LT = common dso_local global i32 0, align 4
@IP6T_SRH_TAG = common dso_local global i32 0, align 4
@IP6T_SRH_INV_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @srh_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srh_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.ip6t_srh*, align 8
  %7 = alloca %struct.ipv6_sr_hdr*, align 8
  %8 = alloca %struct.ipv6_sr_hdr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %11 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %12 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %11, i32 0, i32 0
  %13 = load %struct.ip6t_srh*, %struct.ip6t_srh** %12, align 8
  store %struct.ip6t_srh* %13, %struct.ip6t_srh** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @IPPROTO_ROUTING, align 4
  %16 = call i64 @ipv6_find_hdr(%struct.sk_buff* %14, i32* %10, i32 %15, i32* null, i32* null)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %307

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call %struct.ipv6_sr_hdr* @skb_header_pointer(%struct.sk_buff* %20, i32 %21, i32 48, %struct.ipv6_sr_hdr* %8)
  store %struct.ipv6_sr_hdr* %22, %struct.ipv6_sr_hdr** %7, align 8
  %23 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %24 = icmp ne %struct.ipv6_sr_hdr* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %307

26:                                               ; preds = %19
  %27 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %28 = call i32 @ipv6_optlen(%struct.ipv6_sr_hdr* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %307

37:                                               ; preds = %26
  %38 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IPV6_SRCRT_TYPE_4, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %307

44:                                               ; preds = %37
  %45 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %46 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %307

53:                                               ; preds = %44
  %54 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %55 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @IP6T_SRH_NEXTHDR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %62 = load i32, i32* @IP6T_SRH_INV_NEXTHDR, align 4
  %63 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %67 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %61, i32 %62, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %307

75:                                               ; preds = %60
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %78 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IP6T_SRH_LEN_EQ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %76
  %84 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %85 = load i32, i32* @IP6T_SRH_INV_LEN_EQ, align 4
  %86 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %87 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %90 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %84, i32 %85, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %307

98:                                               ; preds = %83
  br label %99

99:                                               ; preds = %98, %76
  %100 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %101 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IP6T_SRH_LEN_GT, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %99
  %107 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %108 = load i32, i32* @IP6T_SRH_INV_LEN_GT, align 4
  %109 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %110 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %109, i32 0, i32 4
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %113 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp sgt i64 %111, %114
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %107, i32 %108, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %307

121:                                              ; preds = %106
  br label %122

122:                                              ; preds = %121, %99
  %123 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %124 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @IP6T_SRH_LEN_LT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %122
  %130 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %131 = load i32, i32* @IP6T_SRH_INV_LEN_LT, align 4
  %132 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %133 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %136 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %134, %137
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %130, i32 %131, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %129
  store i32 0, i32* %3, align 4
  br label %307

144:                                              ; preds = %129
  br label %145

145:                                              ; preds = %144, %122
  %146 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %147 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @IP6T_SRH_SEGS_EQ, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %145
  %153 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %154 = load i32, i32* @IP6T_SRH_INV_SEGS_EQ, align 4
  %155 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %156 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %159 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %157, %160
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %153, i32 %154, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %152
  store i32 0, i32* %3, align 4
  br label %307

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %167, %145
  %169 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %170 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @IP6T_SRH_SEGS_GT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %168
  %176 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %177 = load i32, i32* @IP6T_SRH_INV_SEGS_GT, align 4
  %178 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %179 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %182 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %180, %183
  %185 = xor i1 %184, true
  %186 = zext i1 %185 to i32
  %187 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %176, i32 %177, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %307

190:                                              ; preds = %175
  br label %191

191:                                              ; preds = %190, %168
  %192 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %193 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @IP6T_SRH_SEGS_LT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %191
  %199 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %200 = load i32, i32* @IP6T_SRH_INV_SEGS_LT, align 4
  %201 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %202 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %205 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %204, i32 0, i32 3
  %206 = load i64, i64* %205, align 8
  %207 = icmp slt i64 %203, %206
  %208 = xor i1 %207, true
  %209 = zext i1 %208 to i32
  %210 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %199, i32 %200, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %307

213:                                              ; preds = %198
  br label %214

214:                                              ; preds = %213, %191
  %215 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %216 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @IP6T_SRH_LAST_EQ, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %214
  %222 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %223 = load i32, i32* @IP6T_SRH_INV_LAST_EQ, align 4
  %224 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %225 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %228 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %226, %229
  %231 = xor i1 %230, true
  %232 = zext i1 %231 to i32
  %233 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %222, i32 %223, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %221
  store i32 0, i32* %3, align 4
  br label %307

236:                                              ; preds = %221
  br label %237

237:                                              ; preds = %236, %214
  %238 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %239 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @IP6T_SRH_LAST_GT, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %260

244:                                              ; preds = %237
  %245 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %246 = load i32, i32* @IP6T_SRH_INV_LAST_GT, align 4
  %247 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %248 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %247, i32 0, i32 2
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %251 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = icmp sgt i64 %249, %252
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %245, i32 %246, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %244
  store i32 0, i32* %3, align 4
  br label %307

259:                                              ; preds = %244
  br label %260

260:                                              ; preds = %259, %237
  %261 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %262 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @IP6T_SRH_LAST_LT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %283

267:                                              ; preds = %260
  %268 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %269 = load i32, i32* @IP6T_SRH_INV_LAST_LT, align 4
  %270 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %271 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %274 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = icmp slt i64 %272, %275
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  %279 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %268, i32 %269, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %267
  store i32 0, i32* %3, align 4
  br label %307

282:                                              ; preds = %267
  br label %283

283:                                              ; preds = %282, %260
  %284 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %285 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @IP6T_SRH_TAG, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %306

290:                                              ; preds = %283
  %291 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %292 = load i32, i32* @IP6T_SRH_INV_TAG, align 4
  %293 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %7, align 8
  %294 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %293, i32 0, i32 5
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.ip6t_srh*, %struct.ip6t_srh** %6, align 8
  %297 = getelementptr inbounds %struct.ip6t_srh, %struct.ip6t_srh* %296, i32 0, i32 5
  %298 = load i64, i64* %297, align 8
  %299 = icmp eq i64 %295, %298
  %300 = xor i1 %299, true
  %301 = zext i1 %300 to i32
  %302 = call i64 @NF_SRH_INVF(%struct.ip6t_srh* %291, i32 %292, i32 %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %290
  store i32 0, i32* %3, align 4
  br label %307

305:                                              ; preds = %290
  br label %306

306:                                              ; preds = %305, %283
  store i32 1, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %304, %281, %258, %235, %212, %189, %166, %143, %120, %97, %74, %52, %43, %36, %25, %18
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local i64 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.ipv6_sr_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6_sr_hdr*) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_sr_hdr*) #1

declare dso_local i64 @NF_SRH_INVF(%struct.ip6t_srh*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
