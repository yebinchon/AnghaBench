; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_indr_block_call.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tc_indr_block_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.net_device = type { i32 }
%struct.tcf_block_ext_info = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.flow_block_offload = type { i32, i32, %struct.netlink_ext_ack*, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcf_block*, %struct.net_device*, %struct.tcf_block_ext_info*, i32, %struct.netlink_ext_ack*)* @tc_indr_block_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tc_indr_block_call(%struct.tcf_block* %0, %struct.net_device* %1, %struct.tcf_block_ext_info* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca %struct.tcf_block*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.tcf_block_ext_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.flow_block_offload, align 8
  store %struct.tcf_block* %0, %struct.tcf_block** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.tcf_block_ext_info* %2, %struct.tcf_block_ext_info** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %10, align 8
  %12 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 0
  %13 = load i32, i32* %9, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 2
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  store %struct.netlink_ext_ack* %16, %struct.netlink_ext_ack** %15, align 8
  %17 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 3
  %18 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %19 = call i32 @tcf_block_shared(%struct.tcf_block* %18)
  store i32 %19, i32* %17, align 8
  %20 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 4
  %21 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %22 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %21, i32 0, i32 0
  store i32* %22, i32** %20, align 8
  %23 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 5
  %24 = load %struct.net_device*, %struct.net_device** %7, align 8
  %25 = call i32 @dev_net(%struct.net_device* %24)
  store i32 %25, i32* %23, align 8
  %26 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 6
  %27 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %8, align 8
  %28 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %11, i32 0, i32 1
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @flow_indr_block_call(%struct.net_device* %32, %struct.flow_block_offload* %11, i32 %33)
  %35 = load %struct.tcf_block*, %struct.tcf_block** %6, align 8
  %36 = call i32 @tcf_block_setup(%struct.tcf_block* %35, %struct.flow_block_offload* %11)
  ret void
}

declare dso_local i32 @tcf_block_shared(%struct.tcf_block*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @flow_indr_block_call(%struct.net_device*, %struct.flow_block_offload*, i32) #1

declare dso_local i32 @tcf_block_setup(%struct.tcf_block*, %struct.flow_block_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
