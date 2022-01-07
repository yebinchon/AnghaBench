; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_packet_cmd_execute.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_packet_cmd_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.genl_info = type { %struct.nlattr**, %struct.ovs_header* }
%struct.nlattr = type { i32 }
%struct.ovs_header = type { i32 }
%struct.net = type { i32 }
%struct.sw_flow_actions = type { i32 }
%struct.sw_flow = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.datapath = type { i32 }
%struct.vport = type { i32 }
%struct.TYPE_8__ = type { %struct.vport*, i32 }

@OVS_PACKET_ATTR_PROBE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_PACKET = common dso_local global i64 0, align 8
@OVS_PACKET_ATTR_KEY = common dso_local global i64 0, align 8
@OVS_PACKET_ATTR_ACTIONS = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OVS_PACKET_ATTR_MRU = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@OVSP_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ovs_packet_cmd_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_packet_cmd_execute(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.ovs_header*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.sw_flow_actions*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sw_flow*, align 8
  %12 = alloca %struct.sw_flow_actions*, align 8
  %13 = alloca %struct.datapath*, align 8
  %14 = alloca %struct.vport*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %19, i32 0, i32 1
  %21 = load %struct.ovs_header*, %struct.ovs_header** %20, align 8
  store %struct.ovs_header* %21, %struct.ovs_header** %6, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.net* @sock_net(i32 %24)
  store %struct.net* %25, %struct.net** %7, align 8
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load %struct.nlattr**, %struct.nlattr*** %27, align 8
  store %struct.nlattr** %28, %struct.nlattr*** %8, align 8
  store i32 0, i32* %15, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i64, i64* @OVS_PACKET_ATTR_PROBE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %17, align 4
  %38 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %39 = load i64, i64* @OVS_PACKET_ATTR_PACKET, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %2
  %44 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %45 = load i64, i64* @OVS_PACKET_ATTR_KEY, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %51 = load i64, i64* @OVS_PACKET_ATTR_ACTIONS, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = icmp ne %struct.nlattr* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49, %43, %2
  br label %221

56:                                               ; preds = %49
  %57 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %58 = load i64, i64* @OVS_PACKET_ATTR_PACKET, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i32 @nla_len(%struct.nlattr* %60)
  store i32 %61, i32* %16, align 4
  %62 = load i64, i64* @NET_IP_ALIGN, align 8
  %63 = load i32, i32* %16, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.sk_buff* @__dev_alloc_skb(i64 %65, i32 %66)
  store %struct.sk_buff* %67, %struct.sk_buff** %10, align 8
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %17, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = icmp ne %struct.sk_buff* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %56
  br label %221

73:                                               ; preds = %56
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = load i64, i64* @NET_IP_ALIGN, align 8
  %76 = call i32 @skb_reserve(%struct.sk_buff* %74, i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @__skb_put(%struct.sk_buff* %77, i32 %78)
  %80 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %81 = load i64, i64* @OVS_PACKET_ATTR_PACKET, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %80, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @nla_memcpy(i32 %79, %struct.nlattr* %83, i32 %84)
  %86 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %87 = load i64, i64* @OVS_PACKET_ATTR_MRU, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = icmp ne %struct.nlattr* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %73
  %92 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %93 = load i64, i64* @OVS_PACKET_ATTR_MRU, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %92, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i32 @nla_get_u16(%struct.nlattr* %95)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %91, %73
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %102 = call %struct.TYPE_8__* @OVS_CB(%struct.sk_buff* %101)
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 8
  %104 = call %struct.sw_flow* (...) @ovs_flow_alloc()
  store %struct.sw_flow* %104, %struct.sw_flow** %11, align 8
  %105 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %106 = call i32 @PTR_ERR(%struct.sw_flow* %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %108 = call i64 @IS_ERR(%struct.sw_flow* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  br label %218

111:                                              ; preds = %99
  %112 = load %struct.net*, %struct.net** %7, align 8
  %113 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %114 = load i64, i64* @OVS_PACKET_ATTR_KEY, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %113, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %119 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %118, i32 0, i32 0
  %120 = load i32, i32* %18, align 4
  %121 = call i32 @ovs_flow_key_extract_userspace(%struct.net* %112, %struct.nlattr* %116, %struct.sk_buff* %117, %struct.TYPE_7__* %119, i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  br label %215

125:                                              ; preds = %111
  %126 = load %struct.net*, %struct.net** %7, align 8
  %127 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %128 = load i64, i64* @OVS_PACKET_ATTR_ACTIONS, align 8
  %129 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %127, i64 %128
  %130 = load %struct.nlattr*, %struct.nlattr** %129, align 8
  %131 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %132 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %131, i32 0, i32 0
  %133 = load i32, i32* %18, align 4
  %134 = call i32 @ovs_nla_copy_actions(%struct.net* %126, %struct.nlattr* %130, %struct.TYPE_7__* %132, %struct.sw_flow_actions** %9, i32 %133)
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %215

138:                                              ; preds = %125
  %139 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %140 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %9, align 8
  %143 = call i32 @rcu_assign_pointer(i32 %141, %struct.sw_flow_actions* %142)
  %144 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %145 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %152 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = call i32 (...) @rcu_read_lock()
  %159 = load %struct.net*, %struct.net** %7, align 8
  %160 = load %struct.ovs_header*, %struct.ovs_header** %6, align 8
  %161 = getelementptr inbounds %struct.ovs_header, %struct.ovs_header* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call %struct.datapath* @get_dp_rcu(%struct.net* %159, i32 %162)
  store %struct.datapath* %163, %struct.datapath** %13, align 8
  %164 = load i32, i32* @ENODEV, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %17, align 4
  %166 = load %struct.datapath*, %struct.datapath** %13, align 8
  %167 = icmp ne %struct.datapath* %166, null
  br i1 %167, label %169, label %168

168:                                              ; preds = %138
  br label %213

169:                                              ; preds = %138
  %170 = load %struct.datapath*, %struct.datapath** %13, align 8
  %171 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %172 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call %struct.vport* @ovs_vport_rcu(%struct.datapath* %170, i32 %175)
  store %struct.vport* %176, %struct.vport** %14, align 8
  %177 = load %struct.vport*, %struct.vport** %14, align 8
  %178 = icmp ne %struct.vport* %177, null
  br i1 %178, label %183, label %179

179:                                              ; preds = %169
  %180 = load %struct.datapath*, %struct.datapath** %13, align 8
  %181 = load i32, i32* @OVSP_LOCAL, align 4
  %182 = call %struct.vport* @ovs_vport_rcu(%struct.datapath* %180, i32 %181)
  store %struct.vport* %182, %struct.vport** %14, align 8
  br label %183

183:                                              ; preds = %179, %169
  %184 = load %struct.vport*, %struct.vport** %14, align 8
  %185 = icmp ne %struct.vport* %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  br label %213

187:                                              ; preds = %183
  %188 = load %struct.vport*, %struct.vport** %14, align 8
  %189 = getelementptr inbounds %struct.vport, %struct.vport* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 1
  store i32 %190, i32* %192, align 4
  %193 = load %struct.vport*, %struct.vport** %14, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %195 = call %struct.TYPE_8__* @OVS_CB(%struct.sk_buff* %194)
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  store %struct.vport* %193, %struct.vport** %196, align 8
  %197 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %198 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = call %struct.sw_flow_actions* @rcu_dereference(i32 %199)
  store %struct.sw_flow_actions* %200, %struct.sw_flow_actions** %12, align 8
  %201 = call i32 (...) @local_bh_disable()
  %202 = load %struct.datapath*, %struct.datapath** %13, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %204 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %12, align 8
  %205 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %206 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %205, i32 0, i32 0
  %207 = call i32 @ovs_execute_actions(%struct.datapath* %202, %struct.sk_buff* %203, %struct.sw_flow_actions* %204, %struct.TYPE_7__* %206)
  store i32 %207, i32* %17, align 4
  %208 = call i32 (...) @local_bh_enable()
  %209 = call i32 (...) @rcu_read_unlock()
  %210 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %211 = call i32 @ovs_flow_free(%struct.sw_flow* %210, i32 0)
  %212 = load i32, i32* %17, align 4
  store i32 %212, i32* %3, align 4
  br label %223

213:                                              ; preds = %186, %168
  %214 = call i32 (...) @rcu_read_unlock()
  br label %215

215:                                              ; preds = %213, %137, %124
  %216 = load %struct.sw_flow*, %struct.sw_flow** %11, align 8
  %217 = call i32 @ovs_flow_free(%struct.sw_flow* %216, i32 0)
  br label %218

218:                                              ; preds = %215, %110
  %219 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %220 = call i32 @kfree_skb(%struct.sk_buff* %219)
  br label %221

221:                                              ; preds = %218, %72, %55
  %222 = load i32, i32* %17, align 4
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %221, %187
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local %struct.sk_buff* @__dev_alloc_skb(i64, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @nla_memcpy(i32, %struct.nlattr*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local %struct.TYPE_8__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local %struct.sw_flow* @ovs_flow_alloc(...) #1

declare dso_local i32 @PTR_ERR(%struct.sw_flow*) #1

declare dso_local i64 @IS_ERR(%struct.sw_flow*) #1

declare dso_local i32 @ovs_flow_key_extract_userspace(%struct.net*, %struct.nlattr*, %struct.sk_buff*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @ovs_nla_copy_actions(%struct.net*, %struct.nlattr*, %struct.TYPE_7__*, %struct.sw_flow_actions**, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sw_flow_actions*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.datapath* @get_dp_rcu(%struct.net*, i32) #1

declare dso_local %struct.vport* @ovs_vport_rcu(%struct.datapath*, i32) #1

declare dso_local %struct.sw_flow_actions* @rcu_dereference(i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @ovs_execute_actions(%struct.datapath*, %struct.sk_buff*, %struct.sw_flow_actions*, %struct.TYPE_7__*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ovs_flow_free(%struct.sw_flow*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
