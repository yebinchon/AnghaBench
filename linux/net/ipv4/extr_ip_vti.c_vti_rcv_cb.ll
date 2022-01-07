; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_rcv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_rcv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.net_device*, i32 }
%struct.net_device = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.xfrm_state = type { %struct.TYPE_9__, %struct.xfrm_mode }
%struct.TYPE_9__ = type { i64 }
%struct.xfrm_mode = type { i16 }
%struct.ip_tunnel = type { i32, %struct.TYPE_10__, %struct.net_device* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ip_tunnel* }
%struct.TYPE_12__ = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINSTATEMODEERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @vti_rcv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_rcv_cb(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.pcpu_sw_netstats*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.xfrm_mode*, align 8
  %11 = alloca %struct.ip_tunnel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.TYPE_11__* @XFRM_TUNNEL_SKB_CB(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.ip_tunnel*, %struct.ip_tunnel** %17, align 8
  store %struct.ip_tunnel* %18, %struct.ip_tunnel** %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  %23 = icmp ne %struct.ip_tunnel* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %135

25:                                               ; preds = %2
  %26 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  %27 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %26, i32 0, i32 2
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  store i32 0, i32* %3, align 4
  br label %135

42:                                               ; preds = %25
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %43)
  store %struct.xfrm_state* %44, %struct.xfrm_state** %9, align 8
  %45 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %46 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %45, i32 0, i32 1
  store %struct.xfrm_mode* %46, %struct.xfrm_mode** %10, align 8
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AF_UNSPEC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %42
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_12__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state* %54, i32 %58)
  store %struct.xfrm_mode* %59, %struct.xfrm_mode** %10, align 8
  %60 = load %struct.xfrm_mode*, %struct.xfrm_mode** %10, align 8
  %61 = icmp eq %struct.xfrm_mode* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 1
  %65 = load %struct.net_device*, %struct.net_device** %64, align 8
  %66 = call i32 @dev_net(%struct.net_device* %65)
  %67 = load i32, i32* @LINUX_MIB_XFRMINSTATEMODEERROR, align 4
  %68 = call i32 @XFRM_INC_STATS(i32 %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %135

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71, %42
  %73 = load %struct.xfrm_mode*, %struct.xfrm_mode** %10, align 8
  %74 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %73, i32 0, i32 0
  %75 = load i16, i16* %74, align 2
  store i16 %75, i16* %6, align 2
  %76 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  %77 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @XFRM_POLICY_IN, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load i16, i16* %6, align 2
  %86 = call i32 @xfrm_policy_check(i32* null, i32 %83, %struct.sk_buff* %84, i16 zeroext %85)
  store i32 %86, i32* %13, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %72
  %93 = load i32, i32* @EPERM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %135

95:                                               ; preds = %72
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = load %struct.ip_tunnel*, %struct.ip_tunnel** %11, align 8
  %98 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 1
  %102 = load %struct.net_device*, %struct.net_device** %101, align 8
  %103 = call i32 @dev_net(%struct.net_device* %102)
  %104 = call i32 @net_eq(i32 %99, i32 %103)
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = call i32 @skb_scrub_packet(%struct.sk_buff* %96, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %7, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  store %struct.net_device* %109, %struct.net_device** %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %114)
  store %struct.pcpu_sw_netstats* %115, %struct.pcpu_sw_netstats** %8, align 8
  %116 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %117 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %116, i32 0, i32 0
  %118 = call i32 @u64_stats_update_begin(i32* %117)
  %119 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %120 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %127 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %8, align 8
  %133 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %132, i32 0, i32 0
  %134 = call i32 @u64_stats_update_end(i32* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %95, %92, %62, %31, %24
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.TYPE_11__* @XFRM_TUNNEL_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state*, i32) #1

declare dso_local %struct.TYPE_12__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @XFRM_INC_STATS(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @xfrm_policy_check(i32*, i32, %struct.sk_buff*, i16 zeroext) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
