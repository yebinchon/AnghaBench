; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_flow_offload_rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_offload.c_nft_flow_offload_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain = type { i32 }
%struct.nft_rule = type { i32 }
%struct.nft_flow_rule = type { i32, i32 }
%struct.flow_cls_offload = type { i32, i64, i32, i32 }
%struct.nft_base_chain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@ETH_P_ALL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TC_SETUP_CLSFLOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_chain*, %struct.nft_rule*, %struct.nft_flow_rule*, i32)* @nft_flow_offload_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_flow_offload_rule(%struct.nft_chain* %0, %struct.nft_rule* %1, %struct.nft_flow_rule* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_chain*, align 8
  %7 = alloca %struct.nft_rule*, align 8
  %8 = alloca %struct.nft_flow_rule*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flow_cls_offload, align 8
  %11 = alloca %struct.nft_base_chain*, align 8
  %12 = alloca %struct.netlink_ext_ack, align 4
  %13 = alloca i32, align 4
  store %struct.nft_chain* %0, %struct.nft_chain** %6, align 8
  store %struct.nft_rule* %1, %struct.nft_rule** %7, align 8
  store %struct.nft_flow_rule* %2, %struct.nft_flow_rule** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = bitcast %struct.flow_cls_offload* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 24, i1 false)
  %15 = load i32, i32* @ETH_P_ALL, align 4
  store i32 %15, i32* %13, align 4
  %16 = load %struct.nft_chain*, %struct.nft_chain** %6, align 8
  %17 = call i32 @nft_is_base_chain(%struct.nft_chain* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %55

22:                                               ; preds = %4
  %23 = load %struct.nft_chain*, %struct.nft_chain** %6, align 8
  %24 = call %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain* %23)
  store %struct.nft_base_chain* %24, %struct.nft_base_chain** %11, align 8
  %25 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %8, align 8
  %26 = icmp ne %struct.nft_flow_rule* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %8, align 8
  %29 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 3
  %33 = load i32, i32* %13, align 4
  %34 = load %struct.nft_base_chain*, %struct.nft_base_chain** %11, align 8
  %35 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nft_flow_offload_common_init(i32* %32, i32 %33, i32 %37, %struct.netlink_ext_ack* %12)
  %39 = load i32, i32* %9, align 4
  %40 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.nft_rule*, %struct.nft_rule** %7, align 8
  %42 = ptrtoint %struct.nft_rule* %41 to i64
  %43 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 1
  store i64 %42, i64* %43, align 8
  %44 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %8, align 8
  %45 = icmp ne %struct.nft_flow_rule* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %31
  %47 = load %struct.nft_flow_rule*, %struct.nft_flow_rule** %8, align 8
  %48 = getelementptr inbounds %struct.nft_flow_rule, %struct.nft_flow_rule* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %10, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %31
  %52 = load %struct.nft_base_chain*, %struct.nft_base_chain** %11, align 8
  %53 = load i32, i32* @TC_SETUP_CLSFLOWER, align 4
  %54 = call i32 @nft_setup_cb_call(%struct.nft_base_chain* %52, i32 %53, %struct.flow_cls_offload* %10)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %19
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nft_is_base_chain(%struct.nft_chain*) #2

declare dso_local %struct.nft_base_chain* @nft_base_chain(%struct.nft_chain*) #2

declare dso_local i32 @nft_flow_offload_common_init(i32*, i32, i32, %struct.netlink_ext_ack*) #2

declare dso_local i32 @nft_setup_cb_call(%struct.nft_base_chain*, i32, %struct.flow_cls_offload*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
