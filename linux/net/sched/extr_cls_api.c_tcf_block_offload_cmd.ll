; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_offload_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_cls_api.c_tcf_block_offload_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcf_block = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, %struct.flow_block_offload*)* }
%struct.flow_block_offload = type { i32, i32, %struct.netlink_ext_ack*, i32, i32*, i32, i32 }
%struct.tcf_block_ext_info = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@TC_SETUP_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcf_block*, %struct.net_device*, %struct.tcf_block_ext_info*, i32, %struct.netlink_ext_ack*)* @tcf_block_offload_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_block_offload_cmd(%struct.tcf_block* %0, %struct.net_device* %1, %struct.tcf_block_ext_info* %2, i32 %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcf_block*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.tcf_block_ext_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.flow_block_offload, align 8
  %13 = alloca i32, align 4
  store %struct.tcf_block* %0, %struct.tcf_block** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.tcf_block_ext_info* %2, %struct.tcf_block_ext_info** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = bitcast %struct.flow_block_offload* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call i32 @dev_net(%struct.net_device* %15)
  %17 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 6
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.tcf_block_ext_info*, %struct.tcf_block_ext_info** %9, align 8
  %21 = getelementptr inbounds %struct.tcf_block_ext_info, %struct.tcf_block_ext_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 5
  store i32 %22, i32* %23, align 8
  %24 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %25 = getelementptr inbounds %struct.tcf_block, %struct.tcf_block* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 4
  store i32* %25, i32** %26, align 8
  %27 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %28 = call i32 @tcf_block_shared(%struct.tcf_block* %27)
  %29 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %31 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 2
  store %struct.netlink_ext_ack* %30, %struct.netlink_ext_ack** %31, align 8
  %32 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %12, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32 (%struct.net_device*, i32, %struct.flow_block_offload*)*, i32 (%struct.net_device*, i32, %struct.flow_block_offload*)** %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = load i32, i32* @TC_SETUP_BLOCK, align 4
  %41 = call i32 %38(%struct.net_device* %39, i32 %40, %struct.flow_block_offload* %12)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %49

46:                                               ; preds = %5
  %47 = load %struct.tcf_block*, %struct.tcf_block** %7, align 8
  %48 = call i32 @tcf_block_setup(%struct.tcf_block* %47, %struct.flow_block_offload* %12)
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_net(%struct.net_device*) #2

declare dso_local i32 @tcf_block_shared(%struct.tcf_block*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @tcf_block_setup(%struct.tcf_block*, %struct.flow_block_offload*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
