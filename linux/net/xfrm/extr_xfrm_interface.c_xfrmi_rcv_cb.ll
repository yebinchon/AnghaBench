; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_rcv_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_interface.c_xfrmi_rcv_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.net_device* }
%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xfrm_mode = type { i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }
%struct.xfrm_state = type { %struct.TYPE_5__, %struct.xfrm_mode }
%struct.TYPE_5__ = type { i64 }
%struct.xfrm_if = type { i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }

@AF_UNSPEC = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINSTATEMODEERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XFRM_POLICY_IN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @xfrmi_rcv_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrmi_rcv_cb(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_mode*, align 8
  %7 = alloca %struct.pcpu_sw_netstats*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.xfrm_if*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @secpath_exists(%struct.sk_buff* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %130

19:                                               ; preds = %14, %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff* %20)
  store %struct.xfrm_state* %21, %struct.xfrm_state** %9, align 8
  %22 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %23 = call i32 @xs_net(%struct.xfrm_state* %22)
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %25 = call %struct.xfrm_if* @xfrmi_lookup(i32 %23, %struct.xfrm_state* %24)
  store %struct.xfrm_if* %25, %struct.xfrm_if** %10, align 8
  %26 = load %struct.xfrm_if*, %struct.xfrm_if** %10, align 8
  %27 = icmp ne %struct.xfrm_if* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %130

29:                                               ; preds = %19
  %30 = load %struct.xfrm_if*, %struct.xfrm_if** %10, align 8
  %31 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %30, i32 0, i32 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %8, align 8
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  store %struct.net_device* %33, %struct.net_device** %35, align 8
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %130

49:                                               ; preds = %29
  %50 = load %struct.xfrm_if*, %struct.xfrm_if** %10, align 8
  %51 = getelementptr inbounds %struct.xfrm_if, %struct.xfrm_if* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load %struct.net_device*, %struct.net_device** %54, align 8
  %56 = call i32 @dev_net(%struct.net_device* %55)
  %57 = call i32 @net_eq(i32 %52, i32 %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %103

63:                                               ; preds = %49
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 1
  store %struct.xfrm_mode* %65, %struct.xfrm_mode** %6, align 8
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AF_UNSPEC, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %63
  %73 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = call %struct.TYPE_6__* @XFRM_MODE_SKB_CB(%struct.sk_buff* %74)
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state* %73, i32 %77)
  store %struct.xfrm_mode* %78, %struct.xfrm_mode** %6, align 8
  %79 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %80 = icmp eq %struct.xfrm_mode* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 1
  %84 = load %struct.net_device*, %struct.net_device** %83, align 8
  %85 = call i32 @dev_net(%struct.net_device* %84)
  %86 = load i32, i32* @LINUX_MIB_XFRMINSTATEMODEERROR, align 4
  %87 = call i32 @XFRM_INC_STATS(i32 %85, i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %130

90:                                               ; preds = %72
  br label %91

91:                                               ; preds = %90, %63
  %92 = load i32, i32* @XFRM_POLICY_IN, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load %struct.xfrm_mode*, %struct.xfrm_mode** %6, align 8
  %95 = getelementptr inbounds %struct.xfrm_mode, %struct.xfrm_mode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @xfrm_policy_check(i32* null, i32 %92, %struct.sk_buff* %93, i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* @EPERM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %130

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %49
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @xfrmi_scrub_packet(%struct.sk_buff* %104, i32 %105)
  %107 = load %struct.net_device*, %struct.net_device** %8, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %109)
  store %struct.pcpu_sw_netstats* %110, %struct.pcpu_sw_netstats** %7, align 8
  %111 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %112 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %111, i32 0, i32 0
  %113 = call i32 @u64_stats_update_begin(i32* %112)
  %114 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %115 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %122 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 4
  %127 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %7, align 8
  %128 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %127, i32 0, i32 0
  %129 = call i32 @u64_stats_update_end(i32* %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %103, %99, %81, %38, %28, %18
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @secpath_exists(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_state* @xfrm_input_state(%struct.sk_buff*) #1

declare dso_local %struct.xfrm_if* @xfrmi_lookup(i32, %struct.xfrm_state*) #1

declare dso_local i32 @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local %struct.xfrm_mode* @xfrm_ip2inner_mode(%struct.xfrm_state*, i32) #1

declare dso_local %struct.TYPE_6__* @XFRM_MODE_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @XFRM_INC_STATS(i32, i32) #1

declare dso_local i32 @xfrm_policy_check(i32*, i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @xfrmi_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
