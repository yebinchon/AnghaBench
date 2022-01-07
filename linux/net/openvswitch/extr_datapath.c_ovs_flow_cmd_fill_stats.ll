; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_fill_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sw_flow = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ovs_flow_stats = type { i64 }

@OVS_FLOW_ATTR_USED = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_PAD = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_STATS = common dso_local global i32 0, align 4
@OVS_FLOW_ATTR_TCP_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sw_flow*, %struct.sk_buff*)* @ovs_flow_cmd_fill_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovs_flow_cmd_fill_stats(%struct.sw_flow* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sw_flow*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ovs_flow_stats, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.sw_flow* %0, %struct.sw_flow** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.sw_flow*, %struct.sw_flow** %4, align 8
  %10 = call i32 @ovs_flow_stats_get(%struct.sw_flow* %9, %struct.ovs_flow_stats* %6, i64* %8, i32* %7)
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = load i32, i32* @OVS_FLOW_ATTR_USED, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @ovs_flow_used_time(i64 %16)
  %18 = load i32, i32* @OVS_FLOW_ATTR_PAD, align 4
  %19 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %14, i32 %15, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @EMSGSIZE, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %52

24:                                               ; preds = %13, %2
  %25 = getelementptr inbounds %struct.ovs_flow_stats, %struct.ovs_flow_stats* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = load i32, i32* @OVS_FLOW_ATTR_STATS, align 4
  %31 = load i32, i32* @OVS_FLOW_ATTR_PAD, align 4
  %32 = call i64 @nla_put_64bit(%struct.sk_buff* %29, i32 %30, i32 8, %struct.ovs_flow_stats* %6, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @EMSGSIZE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %28, %24
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @ntohs(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* @OVS_FLOW_ATTR_TCP_FLAGS, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @ntohs(i32 %44)
  %46 = call i64 @nla_put_u8(%struct.sk_buff* %42, i32 %43, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %41, %37
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %48, %34, %21
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @ovs_flow_stats_get(%struct.sw_flow*, %struct.ovs_flow_stats*, i64*, i32*) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @ovs_flow_used_time(i64) #1

declare dso_local i64 @nla_put_64bit(%struct.sk_buff*, i32, i32, %struct.ovs_flow_stats*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
