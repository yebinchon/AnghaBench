; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_xmit2.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_xmit2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32 }
%struct.flowi = type { i32 }
%struct.xfrm_if = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.dst_entry = type { %struct.net_device*, %struct.xfrm_state* }
%struct.xfrm_state = type { i64 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"%s: Local routing loop detected!\0A\00", align 1
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IPV6_MIN_MTU = common dso_local global i32 0, align 4
@ICMPV6_PKT_TOOBIG = common dso_local global i32 0, align 4
@ICMP_DEST_UNREACH = common dso_local global i32 0, align 4
@ICMP_FRAG_NEEDED = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.flowi*)* @xfrmi_xmit2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrmi_xmit2(%struct.sk_buff* %0, %struct.net_device* %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.xfrm_if*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.dst_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.xfrm_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.xfrm_if* @netdev_priv(%struct.net_device* %17)
  store %struct.xfrm_if* %18, %struct.xfrm_if** %8, align 8
  %19 = load %struct.xfrm_if*, %struct.xfrm_if** %8, align 8
  %20 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.net_device_stats* %22, %struct.net_device_stats** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %23)
  store %struct.dst_entry* %24, %struct.dst_entry** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  store i32 -1, i32* %14, align 4
  %28 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %29 = icmp ne %struct.dst_entry* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %188

31:                                               ; preds = %3
  %32 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %33 = call i32 @dst_hold(%struct.dst_entry* %32)
  %34 = load %struct.xfrm_if*, %struct.xfrm_if** %8, align 8
  %35 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %38 = load %struct.flowi*, %struct.flowi** %7, align 8
  %39 = load %struct.xfrm_if*, %struct.xfrm_if** %8, align 8
  %40 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call %struct.dst_entry* @xfrm_lookup_with_ifid(i32 %36, %struct.dst_entry* %37, %struct.flowi* %38, i32* null, i32 0, i64 %42)
  store %struct.dst_entry* %43, %struct.dst_entry** %10, align 8
  %44 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %45 = call i64 @IS_ERR(%struct.dst_entry* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %49 = call i32 @PTR_ERR(%struct.dst_entry* %48)
  store i32 %49, i32* %14, align 4
  store %struct.dst_entry* null, %struct.dst_entry** %10, align 8
  br label %188

50:                                               ; preds = %31
  %51 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %52 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %51, i32 0, i32 1
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %52, align 8
  store %struct.xfrm_state* %53, %struct.xfrm_state** %13, align 8
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %55 = icmp ne %struct.xfrm_state* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  br label %188

57:                                               ; preds = %50
  %58 = load %struct.xfrm_state*, %struct.xfrm_state** %13, align 8
  %59 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.xfrm_if*, %struct.xfrm_if** %8, align 8
  %62 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %188

67:                                               ; preds = %57
  %68 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %69 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %68, i32 0, i32 0
  %70 = load %struct.net_device*, %struct.net_device** %69, align 8
  store %struct.net_device* %70, %struct.net_device** %12, align 8
  %71 = load %struct.net_device*, %struct.net_device** %12, align 8
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = icmp eq %struct.net_device* %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %76 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.net_device*, %struct.net_device** %6, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %195

83:                                               ; preds = %67
  %84 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %85 = call i32 @dst_mtu(%struct.dst_entry* %84)
  store i32 %85, i32* %15, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %129, label %90

90:                                               ; preds = %83
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %129

96:                                               ; preds = %90
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 @skb_dst_update_pmtu(%struct.sk_buff* %97, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* @ETH_P_IPV6, align 4
  %104 = call i64 @htons(i32 %103)
  %105 = icmp eq i64 %102, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %96
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @IPV6_MIN_MTU, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @IPV6_MIN_MTU, align 4
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %110, %106
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = load i32, i32* @ICMPV6_PKT_TOOBIG, align 4
  %115 = load i32, i32* %15, align 4
  %116 = call i32 @icmpv6_send(%struct.sk_buff* %113, i32 %114, i32 0, i32 %115)
  br label %124

117:                                              ; preds = %96
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = load i32, i32* @ICMP_DEST_UNREACH, align 4
  %120 = load i32, i32* @ICMP_FRAG_NEEDED, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @htonl(i32 %121)
  %123 = call i32 @icmp_send(%struct.sk_buff* %118, i32 %119, i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %117, %112
  %125 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %126 = call i32 @dst_release(%struct.dst_entry* %125)
  %127 = load i32, i32* @EMSGSIZE, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %199

129:                                              ; preds = %90, %83
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load %struct.xfrm_if*, %struct.xfrm_if** %8, align 8
  %132 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.net_device*, %struct.net_device** %6, align 8
  %135 = call i32 @dev_net(%struct.net_device* %134)
  %136 = call i32 @net_eq(i32 %133, i32 %135)
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 @xfrmi_scrub_packet(%struct.sk_buff* %130, i32 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %143 = call i32 @skb_dst_set(%struct.sk_buff* %141, %struct.dst_entry* %142)
  %144 = load %struct.net_device*, %struct.net_device** %12, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 3
  store %struct.net_device* %144, %struct.net_device** %146, align 8
  %147 = load %struct.xfrm_if*, %struct.xfrm_if** %8, align 8
  %148 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %154 = call i32 @dst_output(i32 %149, i32 %152, %struct.sk_buff* %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i64 @net_xmit_eval(i32 %155)
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %178

158:                                              ; preds = %129
  %159 = load %struct.net_device*, %struct.net_device** %6, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %161)
  store %struct.pcpu_sw_netstats* %162, %struct.pcpu_sw_netstats** %16, align 8
  %163 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %16, align 8
  %164 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %163, i32 0, i32 1
  %165 = call i32 @u64_stats_update_begin(i32* %164)
  %166 = load i32, i32* %11, align 4
  %167 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %16, align 8
  %168 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %16, align 8
  %172 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %16, align 8
  %176 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %175, i32 0, i32 1
  %177 = call i32 @u64_stats_update_end(i32* %176)
  br label %187

178:                                              ; preds = %129
  %179 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %180 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %184 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %178, %158
  store i32 0, i32* %4, align 4
  br label %199

188:                                              ; preds = %66, %56, %47, %30
  %189 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %190 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %194 = call i32 @dst_link_failure(%struct.sk_buff* %193)
  br label %195

195:                                              ; preds = %188, %74
  %196 = load %struct.dst_entry*, %struct.dst_entry** %10, align 8
  %197 = call i32 @dst_release(%struct.dst_entry* %196)
  %198 = load i32, i32* %14, align 4
  store i32 %198, i32* %4, align 4
  br label %199

199:                                              ; preds = %195, %187, %124
  %200 = load i32, i32* %4, align 4
  ret i32 %200
}

declare dso_local %struct.xfrm_if* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @dst_hold(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @xfrm_lookup_with_ifid(i32, %struct.dst_entry*, %struct.flowi*, i32*, i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32) #1

declare dso_local i32 @dst_mtu(%struct.dst_entry*) #1

declare dso_local i32 @skb_dst_update_pmtu(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @icmpv6_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @icmp_send(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

declare dso_local i32 @xfrmi_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, %struct.dst_entry*) #1

declare dso_local i32 @dst_output(i32, i32, %struct.sk_buff*) #1

declare dso_local i64 @net_xmit_eval(i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dst_link_failure(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
