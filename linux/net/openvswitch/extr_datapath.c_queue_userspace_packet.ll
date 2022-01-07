; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_queue_userspace_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_queue_userspace_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i64, i64, i64 }
%struct.sw_flow_key = type { i32 }
%struct.dp_upcall_info = type { i32, i64, i64, i32, i32, i64, i32 }
%struct.ovs_header = type { i32 }
%struct.nlattr = type { i64 }
%struct.TYPE_2__ = type { i32 }
%struct.nlmsghdr = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@OVS_DP_F_UNALIGNED = common dso_local global i32 0, align 4
@dp_packet_genl_family = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_KEY = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_USERDATA = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_EGRESS_TUN_KEY = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_ACTIONS = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_MRU = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_LEN = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_key*, %struct.dp_upcall_info*, i64)* @queue_userspace_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_userspace_packet(%struct.datapath* %0, %struct.sk_buff* %1, %struct.sw_flow_key* %2, %struct.dp_upcall_info* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.datapath*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sw_flow_key*, align 8
  %10 = alloca %struct.dp_upcall_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ovs_header*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.nlattr*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.sw_flow_key* %2, %struct.sw_flow_key** %9, align 8
  store %struct.dp_upcall_info* %3, %struct.dp_upcall_info** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  %20 = load %struct.datapath*, %struct.datapath** %7, align 8
  %21 = call i32 @get_dpifindex(%struct.datapath* %20)
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %19, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %306

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %32, i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %13, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %36 = icmp ne %struct.sk_buff* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %306

40:                                               ; preds = %31
  %41 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %42 = call %struct.sk_buff* @__vlan_hwaccel_push_inside(%struct.sk_buff* %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %13, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %306

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %8, align 8
  br label %50

50:                                               ; preds = %48, %27
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @nla_attr_size(i64 %53)
  %55 = load i64, i64* @USHRT_MAX, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EFBIG, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %18, align 4
  br label %294

60:                                               ; preds = %50
  %61 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %68 = call i32 @skb_csum_hwoffload_help(%struct.sk_buff* %67, i32 0)
  store i32 %68, i32* %18, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %294

71:                                               ; preds = %66, %60
  %72 = load %struct.datapath*, %struct.datapath** %7, align 8
  %73 = getelementptr inbounds %struct.datapath, %struct.datapath* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @OVS_DP_F_UNALIGNED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = call i32 @skb_zerocopy_headlen(%struct.sk_buff* %79)
  store i32 %80, i32* %17, align 4
  br label %86

81:                                               ; preds = %71
  %82 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %17, align 4
  br label %86

86:                                               ; preds = %81, %78
  %87 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %88 = load i32, i32* %17, align 4
  %89 = zext i32 %88 to i64
  %90 = load i64, i64* %11, align 8
  %91 = sub nsw i64 %89, %90
  %92 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %93 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @upcall_msg_size(%struct.dp_upcall_info* %87, i64 %91, i32 %95)
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call %struct.sk_buff* @genlmsg_new(i64 %97, i32 %98)
  store %struct.sk_buff* %99, %struct.sk_buff** %14, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %101 = icmp ne %struct.sk_buff* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %86
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %18, align 4
  br label %294

105:                                              ; preds = %86
  %106 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %107 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %108 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = call %struct.ovs_header* @genlmsg_put(%struct.sk_buff* %106, i32 0, i32 0, i32* @dp_packet_genl_family, i32 0, i32 %109)
  store %struct.ovs_header* %110, %struct.ovs_header** %12, align 8
  %111 = load %struct.ovs_header*, %struct.ovs_header** %12, align 8
  %112 = icmp ne %struct.ovs_header* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %105
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %18, align 4
  br label %294

116:                                              ; preds = %105
  %117 = load i32, i32* %19, align 4
  %118 = load %struct.ovs_header*, %struct.ovs_header** %12, align 8
  %119 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %121 = load %struct.sw_flow_key*, %struct.sw_flow_key** %9, align 8
  %122 = load i32, i32* @OVS_PACKET_ATTR_KEY, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %124 = call i32 @ovs_nla_put_key(%struct.sw_flow_key* %120, %struct.sw_flow_key* %121, i32 %122, i32 0, %struct.sk_buff* %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  br label %294

128:                                              ; preds = %116
  %129 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %130 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %135 = load i32, i32* @OVS_PACKET_ATTR_USERDATA, align 4
  %136 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %137 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @nla_len(i64 %138)
  %140 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %141 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @nla_data(i64 %142)
  %144 = call i32 @__nla_put(%struct.sk_buff* %134, i32 %135, i32 %139, i32 %143)
  br label %145

145:                                              ; preds = %133, %128
  %146 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %147 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %172

150:                                              ; preds = %145
  %151 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %152 = load i32, i32* @OVS_PACKET_ATTR_EGRESS_TUN_KEY, align 4
  %153 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %151, i32 %152)
  store %struct.nlattr* %153, %struct.nlattr** %15, align 8
  %154 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %155 = icmp ne %struct.nlattr* %154, null
  br i1 %155, label %159, label %156

156:                                              ; preds = %150
  %157 = load i32, i32* @EMSGSIZE, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %18, align 4
  br label %294

159:                                              ; preds = %150
  %160 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %161 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %162 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ovs_nla_put_tunnel_info(%struct.sk_buff* %160, i32 %163)
  store i32 %164, i32* %18, align 4
  %165 = load i32, i32* %18, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %294

168:                                              ; preds = %159
  %169 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %170 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %171 = call i32 @nla_nest_end(%struct.sk_buff* %169, %struct.nlattr* %170)
  br label %172

172:                                              ; preds = %168, %145
  %173 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %174 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %206

177:                                              ; preds = %172
  %178 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %179 = load i32, i32* @OVS_PACKET_ATTR_ACTIONS, align 4
  %180 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %178, i32 %179)
  store %struct.nlattr* %180, %struct.nlattr** %15, align 8
  %181 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %182 = icmp ne %struct.nlattr* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %177
  %184 = load i32, i32* @EMSGSIZE, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %18, align 4
  br label %294

186:                                              ; preds = %177
  %187 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %188 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %191 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %194 = call i32 @ovs_nla_put_actions(i32 %189, i64 %192, %struct.sk_buff* %193)
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %186
  %198 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %199 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %200 = call i32 @nla_nest_end(%struct.sk_buff* %198, %struct.nlattr* %199)
  br label %205

201:                                              ; preds = %186
  %202 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %203 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %204 = call i32 @nla_nest_cancel(%struct.sk_buff* %202, %struct.nlattr* %203)
  br label %205

205:                                              ; preds = %201, %197
  br label %206

206:                                              ; preds = %205, %172
  %207 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %208 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %206
  %212 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %213 = load i32, i32* @OVS_PACKET_ATTR_MRU, align 4
  %214 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %215 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = call i64 @nla_put_u16(%struct.sk_buff* %212, i32 %213, i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %211
  %220 = load i32, i32* @ENOBUFS, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %18, align 4
  br label %294

222:                                              ; preds = %211
  %223 = load %struct.datapath*, %struct.datapath** %7, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %225 = call i32 @pad_packet(%struct.datapath* %223, %struct.sk_buff* %224)
  br label %226

226:                                              ; preds = %222, %206
  %227 = load i64, i64* %11, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %245

229:                                              ; preds = %226
  %230 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %231 = load i32, i32* @OVS_PACKET_ATTR_LEN, align 4
  %232 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = trunc i64 %234 to i32
  %236 = call i64 @nla_put_u32(%struct.sk_buff* %230, i32 %231, i32 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %229
  %239 = load i32, i32* @ENOBUFS, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %18, align 4
  br label %294

241:                                              ; preds = %229
  %242 = load %struct.datapath*, %struct.datapath** %7, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %244 = call i32 @pad_packet(%struct.datapath* %242, %struct.sk_buff* %243)
  br label %245

245:                                              ; preds = %241, %226
  %246 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %247 = load i32, i32* @OVS_PACKET_ATTR_PACKET, align 4
  %248 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %246, i32 %247, i32 0)
  store %struct.nlattr* %248, %struct.nlattr** %15, align 8
  %249 = icmp ne %struct.nlattr* %248, null
  br i1 %249, label %253, label %250

250:                                              ; preds = %245
  %251 = load i32, i32* @ENOBUFS, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %18, align 4
  br label %294

253:                                              ; preds = %245
  %254 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %11, align 8
  %258 = sub nsw i64 %256, %257
  %259 = call i64 @nla_attr_size(i64 %258)
  %260 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %261 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %260, i32 0, i32 0
  store i64 %259, i64* %261, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %265 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* %11, align 8
  %268 = sub nsw i64 %266, %267
  %269 = load i32, i32* %17, align 4
  %270 = call i32 @skb_zerocopy(%struct.sk_buff* %262, %struct.sk_buff* %263, i64 %268, i32 %269)
  store i32 %270, i32* %18, align 4
  %271 = load i32, i32* %18, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %253
  br label %294

274:                                              ; preds = %253
  %275 = load %struct.datapath*, %struct.datapath** %7, align 8
  %276 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %277 = call i32 @pad_packet(%struct.datapath* %275, %struct.sk_buff* %276)
  %278 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %279 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %283 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = inttoptr i64 %284 to %struct.nlmsghdr*
  %286 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %285, i32 0, i32 0
  store i32 %281, i32* %286, align 4
  %287 = load %struct.datapath*, %struct.datapath** %7, align 8
  %288 = call i32 @ovs_dp_get_net(%struct.datapath* %287)
  %289 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %290 = load %struct.dp_upcall_info*, %struct.dp_upcall_info** %10, align 8
  %291 = getelementptr inbounds %struct.dp_upcall_info, %struct.dp_upcall_info* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @genlmsg_unicast(i32 %288, %struct.sk_buff* %289, i32 %292)
  store i32 %293, i32* %18, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %14, align 8
  br label %294

294:                                              ; preds = %274, %273, %250, %238, %219, %183, %167, %156, %127, %113, %102, %70, %57
  %295 = load i32, i32* %18, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %299 = call i32 @skb_tx_error(%struct.sk_buff* %298)
  br label %300

300:                                              ; preds = %297, %294
  %301 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %302 = call i32 @kfree_skb(%struct.sk_buff* %301)
  %303 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %304 = call i32 @kfree_skb(%struct.sk_buff* %303)
  %305 = load i32, i32* %18, align 4
  store i32 %305, i32* %6, align 4
  br label %306

306:                                              ; preds = %300, %45, %37, %24
  %307 = load i32, i32* %6, align 4
  ret i32 %307
}

declare dso_local i32 @get_dpifindex(%struct.datapath*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @__vlan_hwaccel_push_inside(%struct.sk_buff*) #1

declare dso_local i64 @nla_attr_size(i64) #1

declare dso_local i32 @skb_csum_hwoffload_help(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_zerocopy_headlen(%struct.sk_buff*) #1

declare dso_local i64 @upcall_msg_size(%struct.dp_upcall_info*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i64, i32) #1

declare dso_local %struct.ovs_header* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ovs_nla_put_key(%struct.sw_flow_key*, %struct.sw_flow_key*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @__nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_len(i64) #1

declare dso_local i32 @nla_data(i64) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @ovs_nla_put_tunnel_info(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @ovs_nla_put_actions(i32, i64, %struct.sk_buff*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @pad_packet(%struct.datapath*, %struct.sk_buff*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_zerocopy(%struct.sk_buff*, %struct.sk_buff*, i64, i32) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @ovs_dp_get_net(%struct.datapath*) #1

declare dso_local i32 @skb_tx_error(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
