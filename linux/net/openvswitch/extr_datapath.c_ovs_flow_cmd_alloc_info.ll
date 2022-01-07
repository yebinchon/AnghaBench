; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_alloc_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_alloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow_actions = type { i32 }
%struct.sw_flow_id = type { i32 }
%struct.genl_info = type { i32 }

@dp_flow_genl_family = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sw_flow_actions*, %struct.sw_flow_id*, %struct.genl_info*, i32, i32)* @ovs_flow_cmd_alloc_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ovs_flow_cmd_alloc_info(%struct.sw_flow_actions* %0, %struct.sw_flow_id* %1, %struct.genl_info* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sw_flow_actions*, align 8
  %8 = alloca %struct.sw_flow_id*, align 8
  %9 = alloca %struct.genl_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i64, align 8
  store %struct.sw_flow_actions* %0, %struct.sw_flow_actions** %7, align 8
  store %struct.sw_flow_id* %1, %struct.sw_flow_id** %8, align 8
  store %struct.genl_info* %2, %struct.genl_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %5
  %17 = load %struct.genl_info*, %struct.genl_info** %9, align 8
  %18 = call i32 @ovs_must_notify(i32* @dp_flow_genl_family, %struct.genl_info* %17, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %37

21:                                               ; preds = %16, %5
  %22 = load %struct.sw_flow_actions*, %struct.sw_flow_actions** %7, align 8
  %23 = load %struct.sw_flow_id*, %struct.sw_flow_id** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i64 @ovs_flow_cmd_msg_size(%struct.sw_flow_actions* %22, %struct.sw_flow_id* %23, i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.sk_buff* @genlmsg_new(i64 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %21
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.sk_buff* @ERR_PTR(i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %6, align 8
  br label %37

35:                                               ; preds = %21
  %36 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  br label %37

37:                                               ; preds = %35, %31, %20
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %38
}

declare dso_local i32 @ovs_must_notify(i32*, %struct.genl_info*, i32) #1

declare dso_local i64 @ovs_flow_cmd_msg_size(%struct.sw_flow_actions*, %struct.sw_flow_id*, i32) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i64, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
