; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_block_offload_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_block_offload_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_base_chain = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32, %struct.flow_block_offload*)* }
%struct.flow_block_offload = type { i32, i32, %struct.netlink_ext_ack*, i32, i32*, i32 }
%struct.netlink_ext_ack = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i32 0, align 4
@TC_SETUP_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_base_chain*, %struct.net_device*, i32)* @nft_block_offload_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_block_offload_cmd(%struct.nft_base_chain* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_base_chain*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.netlink_ext_ack, align 4
  %9 = alloca %struct.flow_block_offload, align 8
  %10 = alloca i32, align 4
  store %struct.nft_base_chain* %0, %struct.nft_base_chain** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast %struct.netlink_ext_ack* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.flow_block_offload* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call i32 @dev_net(%struct.net_device* %13)
  %15 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %9, i32 0, i32 5
  store i32 %14, i32* %15, align 8
  %16 = load %struct.nft_base_chain*, %struct.nft_base_chain** %5, align 8
  %17 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %9, i32 0, i32 4
  store i32* %17, i32** %18, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 4
  %22 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %9, i32 0, i32 3
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %9, i32 0, i32 2
  store %struct.netlink_ext_ack* %8, %struct.netlink_ext_ack** %23, align 8
  %24 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %9, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.net_device*, i32, %struct.flow_block_offload*)*, i32 (%struct.net_device*, i32, %struct.flow_block_offload*)** %29, align 8
  %31 = load %struct.net_device*, %struct.net_device** %6, align 8
  %32 = load i32, i32* @TC_SETUP_BLOCK, align 4
  %33 = call i32 %30(%struct.net_device* %31, i32 %32, %struct.flow_block_offload* %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %3
  %39 = load %struct.nft_base_chain*, %struct.nft_base_chain** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @nft_block_setup(%struct.nft_base_chain* %39, %struct.flow_block_offload* %9, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_net(%struct.net_device*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @nft_block_setup(%struct.nft_base_chain*, %struct.flow_block_offload*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
