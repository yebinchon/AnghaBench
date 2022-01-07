; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_build_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_datapath.c_ovs_flow_cmd_build_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sw_flow = type { i32, i32 }
%struct.genl_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sw_flow*, i32, %struct.genl_info*, i32, i32, i32)* @ovs_flow_cmd_build_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ovs_flow_cmd_build_info(%struct.sw_flow* %0, i32 %1, %struct.genl_info* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sw_flow*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.genl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  store %struct.sw_flow* %0, %struct.sw_flow** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.genl_info* %2, %struct.genl_info** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.sw_flow*, %struct.sw_flow** %8, align 8
  %17 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ovsl_dereference(i32 %18)
  %20 = load %struct.sw_flow*, %struct.sw_flow** %8, align 8
  %21 = getelementptr inbounds %struct.sw_flow, %struct.sw_flow* %20, i32 0, i32 0
  %22 = load %struct.genl_info*, %struct.genl_info** %10, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call %struct.sk_buff* @ovs_flow_cmd_alloc_info(i32 %19, i32* %21, %struct.genl_info* %22, i32 %23, i32 %24)
  store %struct.sk_buff* %25, %struct.sk_buff** %14, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %27 = call i64 @IS_ERR_OR_NULL(%struct.sk_buff* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %6
  %30 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %7, align 8
  br label %49

31:                                               ; preds = %6
  %32 = load %struct.sw_flow*, %struct.sw_flow** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %35 = load %struct.genl_info*, %struct.genl_info** %10, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.genl_info*, %struct.genl_info** %10, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @ovs_flow_cmd_fill_info(%struct.sw_flow* %32, i32 %33, %struct.sk_buff* %34, i32 %37, i32 %40, i32 0, i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %7, align 8
  br label %49

49:                                               ; preds = %31, %29
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %50
}

declare dso_local %struct.sk_buff* @ovs_flow_cmd_alloc_info(i32, i32*, %struct.genl_info*, i32, i32) #1

declare dso_local i32 @ovsl_dereference(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.sk_buff*) #1

declare dso_local i32 @ovs_flow_cmd_fill_info(%struct.sw_flow*, i32, %struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
