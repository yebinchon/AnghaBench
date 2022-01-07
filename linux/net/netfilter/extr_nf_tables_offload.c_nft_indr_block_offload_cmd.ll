; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_indr_block_offload_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_indr_block_offload_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_base_chain = type { i32 }
%struct.net_device = type { i32 }
%struct.flow_block_offload = type { i32, i32, %struct.netlink_ext_ack*, i32, i32*, i32 }
%struct.netlink_ext_ack = type { i32 }

@FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_base_chain*, %struct.net_device*, i32)* @nft_indr_block_offload_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_indr_block_offload_cmd(%struct.nft_base_chain* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_base_chain*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flow_block_offload, align 8
  %9 = alloca %struct.netlink_ext_ack, align 4
  store %struct.nft_base_chain* %0, %struct.nft_base_chain** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.flow_block_offload* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 40, i1 false)
  %11 = bitcast %struct.netlink_ext_ack* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call i32 @dev_net(%struct.net_device* %12)
  %14 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 5
  store i32 %13, i32* %14, align 8
  %15 = load %struct.nft_base_chain*, %struct.nft_base_chain** %5, align 8
  %16 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 4
  store i32* %16, i32** %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS, align 4
  %21 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 3
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 2
  store %struct.netlink_ext_ack* %9, %struct.netlink_ext_ack** %22, align 8
  %23 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @flow_indr_block_call(%struct.net_device* %25, %struct.flow_block_offload* %8, i32 %26)
  %28 = getelementptr inbounds %struct.flow_block_offload, %struct.flow_block_offload* %8, i32 0, i32 1
  %29 = call i64 @list_empty(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %3
  %35 = load %struct.nft_base_chain*, %struct.nft_base_chain** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @nft_block_setup(%struct.nft_base_chain* %35, %struct.flow_block_offload* %8, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_net(%struct.net_device*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @flow_indr_block_call(%struct.net_device*, %struct.flow_block_offload*, i32) #2

declare dso_local i64 @list_empty(i32*) #2

declare dso_local i32 @nft_block_setup(%struct.nft_base_chain*, %struct.flow_block_offload*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
