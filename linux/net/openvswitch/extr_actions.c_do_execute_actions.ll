; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_do_execute_actions.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_actions.c_do_execute_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i64 }
%struct.sw_flow_key = type { i32 }
%struct.nlattr = type { i32 }
%struct.ovs_action_trunc = type { i64 }
%struct.nshhdr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NSH_HDR_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32)* @do_execute_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_execute_actions(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, %struct.nlattr* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.datapath*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sw_flow_key*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.ovs_action_trunc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.nshhdr*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %9, align 8
  store %struct.nlattr* %3, %struct.nlattr** %10, align 8
  store i32 %4, i32* %11, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  store %struct.nlattr* %26, %struct.nlattr** %12, align 8
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %294, %5
  %29 = load i32, i32* %13, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %297

31:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  %32 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %33 = call i32 @nla_type(%struct.nlattr* %32)
  switch i32 %33, label %285 [
    i32 143, label %34
    i32 129, label %63
    i32 128, label %85
    i32 145, label %100
    i32 137, label %105
    i32 141, label %111
    i32 135, label %117
    i32 139, label %123
    i32 134, label %127
    i32 132, label %142
    i32 131, label %148
    i32 130, label %148
    i32 133, label %154
    i32 147, label %169
    i32 146, label %203
    i32 138, label %207
    i32 142, label %213
    i32 136, label %217
    i32 140, label %239
    i32 144, label %243
    i32 148, label %255
    i32 149, label %270
  ]

34:                                               ; preds = %31
  %35 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %36 = call i32 @nla_get_u32(%struct.nlattr* %35)
  store i32 %36, i32* %15, align 4
  %37 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @nla_is_last(%struct.nlattr* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.datapath*, %struct.datapath** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %46 = call i32 @do_output(%struct.datapath* %42, %struct.sk_buff* %43, i32 %44, %struct.sw_flow_key* %45)
  store i32 0, i32* %6, align 4
  br label %300

47:                                               ; preds = %34
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = load i32, i32* @GFP_ATOMIC, align 4
  %50 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %48, i32 %49)
  store %struct.sk_buff* %50, %struct.sk_buff** %16, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %52 = icmp ne %struct.sk_buff* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.datapath*, %struct.datapath** %7, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %58 = call i32 @do_output(%struct.datapath* %54, %struct.sk_buff* %55, i32 %56, %struct.sw_flow_key* %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %61 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %285

63:                                               ; preds = %31
  %64 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %65 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %64)
  store %struct.ovs_action_trunc* %65, %struct.ovs_action_trunc** %17, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ovs_action_trunc*, %struct.ovs_action_trunc** %17, align 8
  %70 = getelementptr inbounds %struct.ovs_action_trunc, %struct.ovs_action_trunc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %68, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %63
  %74 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.ovs_action_trunc*, %struct.ovs_action_trunc** %17, align 8
  %78 = getelementptr inbounds %struct.ovs_action_trunc, %struct.ovs_action_trunc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %82 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %81)
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %73, %63
  br label %285

85:                                               ; preds = %31
  %86 = load %struct.datapath*, %struct.datapath** %7, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %88 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %89 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %90 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @output_userspace(%struct.datapath* %86, %struct.sk_buff* %87, %struct.sw_flow_key* %88, %struct.nlattr* %89, %struct.nlattr* %90, i32 %91, i64 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %285

100:                                              ; preds = %31
  %101 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %102 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %103 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %104 = call i32 @execute_hash(%struct.sk_buff* %101, %struct.sw_flow_key* %102, %struct.nlattr* %103)
  br label %285

105:                                              ; preds = %31
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %108 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %109 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %108)
  %110 = call i32 @push_mpls(%struct.sk_buff* %106, %struct.sw_flow_key* %107, %struct.ovs_action_trunc* %109)
  store i32 %110, i32* %14, align 4
  br label %285

111:                                              ; preds = %31
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %114 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %115 = call i32 @nla_get_be16(%struct.nlattr* %114)
  %116 = call i32 @pop_mpls(%struct.sk_buff* %112, %struct.sw_flow_key* %113, i32 %115)
  store i32 %116, i32* %14, align 4
  br label %285

117:                                              ; preds = %31
  %118 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %119 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %120 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %121 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %120)
  %122 = call i32 @push_vlan(%struct.sk_buff* %118, %struct.sw_flow_key* %119, %struct.ovs_action_trunc* %121)
  store i32 %122, i32* %14, align 4
  br label %285

123:                                              ; preds = %31
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %126 = call i32 @pop_vlan(%struct.sk_buff* %124, %struct.sw_flow_key* %125)
  store i32 %126, i32* %14, align 4
  br label %285

127:                                              ; preds = %31
  %128 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @nla_is_last(%struct.nlattr* %128, i32 %129)
  store i32 %130, i32* %18, align 4
  %131 = load %struct.datapath*, %struct.datapath** %7, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %133 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %134 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @execute_recirc(%struct.datapath* %131, %struct.sk_buff* %132, %struct.sw_flow_key* %133, %struct.nlattr* %134, i32 %135)
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %18, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i32, i32* %14, align 4
  store i32 %140, i32* %6, align 4
  br label %300

141:                                              ; preds = %127
  br label %285

142:                                              ; preds = %31
  %143 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %144 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %145 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %146 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %145)
  %147 = call i32 @execute_set_action(%struct.sk_buff* %143, %struct.sw_flow_key* %144, %struct.ovs_action_trunc* %146)
  store i32 %147, i32* %14, align 4
  br label %285

148:                                              ; preds = %31, %31
  %149 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %150 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %151 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %152 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %151)
  %153 = call i32 @execute_masked_set_action(%struct.sk_buff* %149, %struct.sw_flow_key* %150, %struct.ovs_action_trunc* %152)
  store i32 %153, i32* %14, align 4
  br label %285

154:                                              ; preds = %31
  %155 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @nla_is_last(%struct.nlattr* %155, i32 %156)
  store i32 %157, i32* %19, align 4
  %158 = load %struct.datapath*, %struct.datapath** %7, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %160 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %161 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @sample(%struct.datapath* %158, %struct.sk_buff* %159, %struct.sw_flow_key* %160, %struct.nlattr* %161, i32 %162)
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %19, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = load i32, i32* %14, align 4
  store i32 %167, i32* %6, align 4
  br label %300

168:                                              ; preds = %154
  br label %285

169:                                              ; preds = %31
  %170 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %171 = call i32 @is_flow_key_valid(%struct.sw_flow_key* %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %182, label %173

173:                                              ; preds = %169
  %174 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %175 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %176 = call i32 @ovs_flow_key_update(%struct.sk_buff* %174, %struct.sw_flow_key* %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %6, align 4
  br label %300

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181, %169
  %183 = load %struct.datapath*, %struct.datapath** %7, align 8
  %184 = call i32 @ovs_dp_get_net(%struct.datapath* %183)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %186 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %187 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %188 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %187)
  %189 = call i32 @ovs_ct_execute(i32 %184, %struct.sk_buff* %185, %struct.sw_flow_key* %186, %struct.ovs_action_trunc* %188)
  store i32 %189, i32* %14, align 4
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %182
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @EINPROGRESS, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %200

198:                                              ; preds = %192
  %199 = load i32, i32* %14, align 4
  br label %200

200:                                              ; preds = %198, %197
  %201 = phi i32 [ 0, %197 ], [ %199, %198 ]
  store i32 %201, i32* %6, align 4
  br label %300

202:                                              ; preds = %182
  br label %285

203:                                              ; preds = %31
  %204 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %205 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %206 = call i32 @ovs_ct_clear(%struct.sk_buff* %204, %struct.sw_flow_key* %205)
  store i32 %206, i32* %14, align 4
  br label %285

207:                                              ; preds = %31
  %208 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %209 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %210 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %211 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %210)
  %212 = call i32 @push_eth(%struct.sk_buff* %208, %struct.sw_flow_key* %209, %struct.ovs_action_trunc* %211)
  store i32 %212, i32* %14, align 4
  br label %285

213:                                              ; preds = %31
  %214 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %215 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %216 = call i32 @pop_eth(%struct.sk_buff* %214, %struct.sw_flow_key* %215)
  store i32 %216, i32* %14, align 4
  br label %285

217:                                              ; preds = %31
  %218 = load i32, i32* @NSH_HDR_MAX_LEN, align 4
  %219 = zext i32 %218 to i64
  %220 = call i8* @llvm.stacksave()
  store i8* %220, i8** %20, align 8
  %221 = alloca i32, i64 %219, align 16
  store i64 %219, i64* %21, align 8
  %222 = bitcast i32* %221 to %struct.nshhdr*
  store %struct.nshhdr* %222, %struct.nshhdr** %22, align 8
  %223 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %224 = call %struct.ovs_action_trunc* @nla_data(%struct.nlattr* %223)
  %225 = load %struct.nshhdr*, %struct.nshhdr** %22, align 8
  %226 = load i32, i32* @NSH_HDR_MAX_LEN, align 4
  %227 = call i32 @nsh_hdr_from_nlattr(%struct.ovs_action_trunc* %224, %struct.nshhdr* %225, i32 %226)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = call i64 @unlikely(i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %217
  store i32 5, i32* %23, align 4
  br label %237

232:                                              ; preds = %217
  %233 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %234 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %235 = load %struct.nshhdr*, %struct.nshhdr** %22, align 8
  %236 = call i32 @push_nsh(%struct.sk_buff* %233, %struct.sw_flow_key* %234, %struct.nshhdr* %235)
  store i32 %236, i32* %14, align 4
  store i32 5, i32* %23, align 4
  br label %237

237:                                              ; preds = %232, %231
  %238 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %238)
  br label %285

239:                                              ; preds = %31
  %240 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %241 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %242 = call i32 @pop_nsh(%struct.sk_buff* %240, %struct.sw_flow_key* %241)
  store i32 %242, i32* %14, align 4
  br label %285

243:                                              ; preds = %31
  %244 = load %struct.datapath*, %struct.datapath** %7, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %246 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %247 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %248 = call i32 @nla_get_u32(%struct.nlattr* %247)
  %249 = call i32 @ovs_meter_execute(%struct.datapath* %244, %struct.sk_buff* %245, %struct.sw_flow_key* %246, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %243
  %252 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %253 = call i32 @consume_skb(%struct.sk_buff* %252)
  store i32 0, i32* %6, align 4
  br label %300

254:                                              ; preds = %243
  br label %285

255:                                              ; preds = %31
  %256 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @nla_is_last(%struct.nlattr* %256, i32 %257)
  store i32 %258, i32* %24, align 4
  %259 = load %struct.datapath*, %struct.datapath** %7, align 8
  %260 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %261 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %262 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %263 = load i32, i32* %24, align 4
  %264 = call i32 @clone(%struct.datapath* %259, %struct.sk_buff* %260, %struct.sw_flow_key* %261, %struct.nlattr* %262, i32 %263)
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* %24, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %255
  %268 = load i32, i32* %14, align 4
  store i32 %268, i32* %6, align 4
  br label %300

269:                                              ; preds = %255
  br label %285

270:                                              ; preds = %31
  %271 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %272 = load i32, i32* %13, align 4
  %273 = call i32 @nla_is_last(%struct.nlattr* %271, i32 %272)
  store i32 %273, i32* %25, align 4
  %274 = load %struct.datapath*, %struct.datapath** %7, align 8
  %275 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %276 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %277 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %278 = load i32, i32* %25, align 4
  %279 = call i32 @execute_check_pkt_len(%struct.datapath* %274, %struct.sk_buff* %275, %struct.sw_flow_key* %276, %struct.nlattr* %277, i32 %278)
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %25, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %270
  %283 = load i32, i32* %14, align 4
  store i32 %283, i32* %6, align 4
  br label %300

284:                                              ; preds = %270
  br label %285

285:                                              ; preds = %31, %284, %269, %254, %239, %237, %213, %207, %203, %202, %168, %148, %142, %141, %123, %117, %111, %105, %100, %85, %84, %59
  %286 = load i32, i32* %14, align 4
  %287 = call i64 @unlikely(i32 %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %291 = call i32 @kfree_skb(%struct.sk_buff* %290)
  %292 = load i32, i32* %14, align 4
  store i32 %292, i32* %6, align 4
  br label %300

293:                                              ; preds = %285
  br label %294

294:                                              ; preds = %293
  %295 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %296 = call %struct.nlattr* @nla_next(%struct.nlattr* %295, i32* %13)
  store %struct.nlattr* %296, %struct.nlattr** %12, align 8
  br label %28

297:                                              ; preds = %28
  %298 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %299 = call i32 @consume_skb(%struct.sk_buff* %298)
  store i32 0, i32* %6, align 4
  br label %300

300:                                              ; preds = %297, %289, %282, %267, %251, %200, %179, %166, %139, %41
  %301 = load i32, i32* %6, align 4
  ret i32 %301
}

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_is_last(%struct.nlattr*, i32) #1

declare dso_local i32 @do_output(%struct.datapath*, %struct.sk_buff*, i32, %struct.sw_flow_key*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local %struct.ovs_action_trunc* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @output_userspace(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, %struct.nlattr*, i32, i64) #1

declare dso_local i32 @execute_hash(%struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*) #1

declare dso_local i32 @push_mpls(%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_trunc*) #1

declare dso_local i32 @pop_mpls(%struct.sk_buff*, %struct.sw_flow_key*, i32) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @push_vlan(%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_trunc*) #1

declare dso_local i32 @pop_vlan(%struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local i32 @execute_recirc(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32) #1

declare dso_local i32 @execute_set_action(%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_trunc*) #1

declare dso_local i32 @execute_masked_set_action(%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_trunc*) #1

declare dso_local i32 @sample(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32) #1

declare dso_local i32 @is_flow_key_valid(%struct.sw_flow_key*) #1

declare dso_local i32 @ovs_flow_key_update(%struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local i32 @ovs_ct_execute(i32, %struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_trunc*) #1

declare dso_local i32 @ovs_dp_get_net(%struct.datapath*) #1

declare dso_local i32 @ovs_ct_clear(%struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local i32 @push_eth(%struct.sk_buff*, %struct.sw_flow_key*, %struct.ovs_action_trunc*) #1

declare dso_local i32 @pop_eth(%struct.sk_buff*, %struct.sw_flow_key*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nsh_hdr_from_nlattr(%struct.ovs_action_trunc*, %struct.nshhdr*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @push_nsh(%struct.sk_buff*, %struct.sw_flow_key*, %struct.nshhdr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @pop_nsh(%struct.sk_buff*, %struct.sw_flow_key*) #1

declare dso_local i32 @ovs_meter_execute(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @clone(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32) #1

declare dso_local i32 @execute_check_pkt_len(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.nlattr*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
