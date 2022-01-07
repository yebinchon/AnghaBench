; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_srh.c_srh1_mt6.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_ip6t_srh.c_srh1_mt6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.ip6t_srh1* }
%struct.ip6t_srh1 = type { i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.in6_addr = type { i64, i64, i64, i64, i64, i64 }
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
@IP6T_SRH_PSID = common dso_local global i32 0, align 4
@IP6T_SRH_INV_PSID = common dso_local global i32 0, align 4
@IP6T_SRH_NSID = common dso_local global i32 0, align 4
@IP6T_SRH_INV_NSID = common dso_local global i32 0, align 4
@IP6T_SRH_LSID = common dso_local global i32 0, align 4
@IP6T_SRH_INV_LSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @srh1_mt6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srh1_mt6(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ip6t_srh1*, align 8
  %12 = alloca %struct.in6_addr*, align 8
  %13 = alloca %struct.in6_addr*, align 8
  %14 = alloca %struct.in6_addr*, align 8
  %15 = alloca %struct.in6_addr, align 8
  %16 = alloca %struct.in6_addr, align 8
  %17 = alloca %struct.in6_addr, align 8
  %18 = alloca %struct.ipv6_sr_hdr*, align 8
  %19 = alloca %struct.ipv6_sr_hdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %21 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %20, i32 0, i32 0
  %22 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %21, align 8
  store %struct.ip6t_srh1* %22, %struct.ip6t_srh1** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @IPPROTO_ROUTING, align 4
  %25 = call i64 @ipv6_find_hdr(%struct.sk_buff* %23, i32* %10, i32 %24, i32* null, i32* null)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %445

28:                                               ; preds = %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.ipv6_sr_hdr* @skb_header_pointer(%struct.sk_buff* %29, i32 %30, i32 48, %struct.ipv6_sr_hdr* %19)
  store %struct.ipv6_sr_hdr* %31, %struct.ipv6_sr_hdr** %18, align 8
  %32 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %33 = icmp ne %struct.ipv6_sr_hdr* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %445

35:                                               ; preds = %28
  %36 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %37 = call i32 @ipv6_optlen(%struct.ipv6_sr_hdr* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %445

46:                                               ; preds = %35
  %47 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %48 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IPV6_SRCRT_TYPE_4, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %445

53:                                               ; preds = %46
  %54 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %55 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %58 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %445

62:                                               ; preds = %53
  %63 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %64 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IP6T_SRH_NEXTHDR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %62
  %70 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %71 = load i32, i32* @IP6T_SRH_INV_NEXTHDR, align 4
  %72 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %73 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %76 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %70, i32 %71, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %445

84:                                               ; preds = %69
  br label %85

85:                                               ; preds = %84, %62
  %86 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %87 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @IP6T_SRH_LEN_EQ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %85
  %93 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %94 = load i32, i32* @IP6T_SRH_INV_LEN_EQ, align 4
  %95 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %96 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %99 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %93, i32 %94, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  store i32 0, i32* %3, align 4
  br label %445

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %85
  %109 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %110 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IP6T_SRH_LEN_GT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %108
  %116 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %117 = load i32, i32* @IP6T_SRH_INV_LEN_GT, align 4
  %118 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %119 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %122 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %116, i32 %117, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %445

130:                                              ; preds = %115
  br label %131

131:                                              ; preds = %130, %108
  %132 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %133 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IP6T_SRH_LEN_LT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %154

138:                                              ; preds = %131
  %139 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %140 = load i32, i32* @IP6T_SRH_INV_LEN_LT, align 4
  %141 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %142 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %145 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp slt i64 %143, %146
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %139, i32 %140, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %445

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153, %131
  %155 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %156 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @IP6T_SRH_SEGS_EQ, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %154
  %162 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %163 = load i32, i32* @IP6T_SRH_INV_SEGS_EQ, align 4
  %164 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %165 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %168 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %166, %169
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %162, i32 %163, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %161
  store i32 0, i32* %3, align 4
  br label %445

176:                                              ; preds = %161
  br label %177

177:                                              ; preds = %176, %154
  %178 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %179 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @IP6T_SRH_SEGS_GT, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %177
  %185 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %186 = load i32, i32* @IP6T_SRH_INV_SEGS_GT, align 4
  %187 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %188 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %191 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %189, %192
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %185, i32 %186, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %184
  store i32 0, i32* %3, align 4
  br label %445

199:                                              ; preds = %184
  br label %200

200:                                              ; preds = %199, %177
  %201 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %202 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @IP6T_SRH_SEGS_LT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %200
  %208 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %209 = load i32, i32* @IP6T_SRH_INV_SEGS_LT, align 4
  %210 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %211 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %214 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = icmp slt i64 %212, %215
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %208, i32 %209, i32 %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %207
  store i32 0, i32* %3, align 4
  br label %445

222:                                              ; preds = %207
  br label %223

223:                                              ; preds = %222, %200
  %224 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %225 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @IP6T_SRH_LAST_EQ, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %223
  %231 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %232 = load i32, i32* @IP6T_SRH_INV_LAST_EQ, align 4
  %233 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %234 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %237 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %236, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = icmp eq i64 %235, %238
  %240 = xor i1 %239, true
  %241 = zext i1 %240 to i32
  %242 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %231, i32 %232, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %230
  store i32 0, i32* %3, align 4
  br label %445

245:                                              ; preds = %230
  br label %246

246:                                              ; preds = %245, %223
  %247 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %248 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @IP6T_SRH_LAST_GT, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %269

253:                                              ; preds = %246
  %254 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %255 = load i32, i32* @IP6T_SRH_INV_LAST_GT, align 4
  %256 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %257 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %256, i32 0, i32 2
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %260 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = icmp sgt i64 %258, %261
  %263 = xor i1 %262, true
  %264 = zext i1 %263 to i32
  %265 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %254, i32 %255, i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %268

267:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  br label %445

268:                                              ; preds = %253
  br label %269

269:                                              ; preds = %268, %246
  %270 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %271 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @IP6T_SRH_LAST_LT, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %292

276:                                              ; preds = %269
  %277 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %278 = load i32, i32* @IP6T_SRH_INV_LAST_LT, align 4
  %279 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %280 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %283 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %282, i32 0, i32 4
  %284 = load i64, i64* %283, align 8
  %285 = icmp slt i64 %281, %284
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %277, i32 %278, i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %276
  store i32 0, i32* %3, align 4
  br label %445

291:                                              ; preds = %276
  br label %292

292:                                              ; preds = %291, %269
  %293 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %294 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @IP6T_SRH_TAG, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %315

299:                                              ; preds = %292
  %300 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %301 = load i32, i32* @IP6T_SRH_INV_TAG, align 4
  %302 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %303 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %302, i32 0, i32 5
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %306 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %305, i32 0, i32 5
  %307 = load i64, i64* %306, align 8
  %308 = icmp eq i64 %304, %307
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %300, i32 %301, i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %299
  store i32 0, i32* %3, align 4
  br label %445

314:                                              ; preds = %299
  br label %315

315:                                              ; preds = %314, %292
  %316 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %317 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load i32, i32* @IP6T_SRH_PSID, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %364

322:                                              ; preds = %315
  %323 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %324 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %327 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = icmp eq i64 %325, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %322
  store i32 0, i32* %3, align 4
  br label %445

331:                                              ; preds = %322
  %332 = load i32, i32* %10, align 4
  %333 = sext i32 %332 to i64
  %334 = add i64 %333, 48
  %335 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %336 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, 1
  %339 = mul i64 %338, 48
  %340 = add i64 %334, %339
  %341 = trunc i64 %340 to i32
  store i32 %341, i32* %7, align 4
  %342 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %343 = load i32, i32* %7, align 4
  %344 = bitcast %struct.in6_addr* %15 to %struct.ipv6_sr_hdr*
  %345 = call %struct.ipv6_sr_hdr* @skb_header_pointer(%struct.sk_buff* %342, i32 %343, i32 48, %struct.ipv6_sr_hdr* %344)
  %346 = bitcast %struct.ipv6_sr_hdr* %345 to %struct.in6_addr*
  store %struct.in6_addr* %346, %struct.in6_addr** %12, align 8
  %347 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %348 = icmp ne %struct.in6_addr* %347, null
  br i1 %348, label %350, label %349

349:                                              ; preds = %331
  store i32 0, i32* %3, align 4
  br label %445

350:                                              ; preds = %331
  %351 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %352 = load i32, i32* @IP6T_SRH_INV_PSID, align 4
  %353 = load %struct.in6_addr*, %struct.in6_addr** %12, align 8
  %354 = bitcast %struct.in6_addr* %353 to %struct.ipv6_sr_hdr*
  %355 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %356 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %355, i32 0, i32 11
  %357 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %358 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %357, i32 0, i32 10
  %359 = call i32 @ipv6_masked_addr_cmp(%struct.ipv6_sr_hdr* %354, i32* %356, i32* %358)
  %360 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %351, i32 %352, i32 %359)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %350
  store i32 0, i32* %3, align 4
  br label %445

363:                                              ; preds = %350
  br label %364

364:                                              ; preds = %363, %315
  %365 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %366 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @IP6T_SRH_NSID, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %410

371:                                              ; preds = %364
  %372 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %373 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %372, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = icmp eq i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %371
  store i32 0, i32* %3, align 4
  br label %445

377:                                              ; preds = %371
  %378 = load i32, i32* %10, align 4
  %379 = sext i32 %378 to i64
  %380 = add i64 %379, 48
  %381 = load %struct.ipv6_sr_hdr*, %struct.ipv6_sr_hdr** %18, align 8
  %382 = getelementptr inbounds %struct.ipv6_sr_hdr, %struct.ipv6_sr_hdr* %381, i32 0, i32 1
  %383 = load i64, i64* %382, align 8
  %384 = sub nsw i64 %383, 1
  %385 = mul i64 %384, 48
  %386 = add i64 %380, %385
  %387 = trunc i64 %386 to i32
  store i32 %387, i32* %8, align 4
  %388 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %389 = load i32, i32* %8, align 4
  %390 = bitcast %struct.in6_addr* %16 to %struct.ipv6_sr_hdr*
  %391 = call %struct.ipv6_sr_hdr* @skb_header_pointer(%struct.sk_buff* %388, i32 %389, i32 48, %struct.ipv6_sr_hdr* %390)
  %392 = bitcast %struct.ipv6_sr_hdr* %391 to %struct.in6_addr*
  store %struct.in6_addr* %392, %struct.in6_addr** %13, align 8
  %393 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %394 = icmp ne %struct.in6_addr* %393, null
  br i1 %394, label %396, label %395

395:                                              ; preds = %377
  store i32 0, i32* %3, align 4
  br label %445

396:                                              ; preds = %377
  %397 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %398 = load i32, i32* @IP6T_SRH_INV_NSID, align 4
  %399 = load %struct.in6_addr*, %struct.in6_addr** %13, align 8
  %400 = bitcast %struct.in6_addr* %399 to %struct.ipv6_sr_hdr*
  %401 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %402 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %401, i32 0, i32 9
  %403 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %404 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %403, i32 0, i32 8
  %405 = call i32 @ipv6_masked_addr_cmp(%struct.ipv6_sr_hdr* %400, i32* %402, i32* %404)
  %406 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %397, i32 %398, i32 %405)
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %396
  store i32 0, i32* %3, align 4
  br label %445

409:                                              ; preds = %396
  br label %410

410:                                              ; preds = %409, %364
  %411 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %412 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* @IP6T_SRH_LSID, align 4
  %415 = and i32 %413, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %444

417:                                              ; preds = %410
  %418 = load i32, i32* %10, align 4
  %419 = sext i32 %418 to i64
  %420 = add i64 %419, 48
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %9, align 4
  %422 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %423 = load i32, i32* %9, align 4
  %424 = bitcast %struct.in6_addr* %17 to %struct.ipv6_sr_hdr*
  %425 = call %struct.ipv6_sr_hdr* @skb_header_pointer(%struct.sk_buff* %422, i32 %423, i32 48, %struct.ipv6_sr_hdr* %424)
  %426 = bitcast %struct.ipv6_sr_hdr* %425 to %struct.in6_addr*
  store %struct.in6_addr* %426, %struct.in6_addr** %14, align 8
  %427 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %428 = icmp ne %struct.in6_addr* %427, null
  br i1 %428, label %430, label %429

429:                                              ; preds = %417
  store i32 0, i32* %3, align 4
  br label %445

430:                                              ; preds = %417
  %431 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %432 = load i32, i32* @IP6T_SRH_INV_LSID, align 4
  %433 = load %struct.in6_addr*, %struct.in6_addr** %14, align 8
  %434 = bitcast %struct.in6_addr* %433 to %struct.ipv6_sr_hdr*
  %435 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %436 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %435, i32 0, i32 7
  %437 = load %struct.ip6t_srh1*, %struct.ip6t_srh1** %11, align 8
  %438 = getelementptr inbounds %struct.ip6t_srh1, %struct.ip6t_srh1* %437, i32 0, i32 6
  %439 = call i32 @ipv6_masked_addr_cmp(%struct.ipv6_sr_hdr* %434, i32* %436, i32* %438)
  %440 = call i64 @NF_SRH_INVF(%struct.ip6t_srh1* %431, i32 %432, i32 %439)
  %441 = icmp ne i64 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %430
  store i32 0, i32* %3, align 4
  br label %445

443:                                              ; preds = %430
  br label %444

444:                                              ; preds = %443, %410
  store i32 1, i32* %3, align 4
  br label %445

445:                                              ; preds = %444, %442, %429, %408, %395, %376, %362, %349, %330, %313, %290, %267, %244, %221, %198, %175, %152, %129, %106, %83, %61, %52, %45, %34, %27
  %446 = load i32, i32* %3, align 4
  ret i32 %446
}

declare dso_local i64 @ipv6_find_hdr(%struct.sk_buff*, i32*, i32, i32*, i32*) #1

declare dso_local %struct.ipv6_sr_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.ipv6_sr_hdr*) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_sr_hdr*) #1

declare dso_local i64 @NF_SRH_INVF(%struct.ip6t_srh1*, i32, i32) #1

declare dso_local i32 @ipv6_masked_addr_cmp(%struct.ipv6_sr_hdr*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
