; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_get_offload.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_get_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_offload_ctx = type { %struct.nft_offload_reg* }
%struct.nft_offload_reg = type { i32 }
%struct.nft_flow_rule = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_meta = type { i64, i32 }

@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@basic = common dso_local global i32 0, align 4
@n_proto = common dso_local global i32 0, align 4
@NFT_OFFLOAD_DEP_NETWORK = common dso_local global i32 0, align 4
@ip_proto = common dso_local global i32 0, align 4
@NFT_OFFLOAD_DEP_TRANSPORT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_offload_ctx*, %struct.nft_flow_rule*, %struct.nft_expr*)* @nft_meta_get_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_meta_get_offload(%struct.nft_offload_ctx* %0, %struct.nft_flow_rule* %1, %struct.nft_expr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_offload_ctx*, align 8
  %6 = alloca %struct.nft_flow_rule*, align 8
  %7 = alloca %struct.nft_expr*, align 8
  %8 = alloca %struct.nft_meta*, align 8
  %9 = alloca %struct.nft_offload_reg*, align 8
  store %struct.nft_offload_ctx* %0, %struct.nft_offload_ctx** %5, align 8
  store %struct.nft_flow_rule* %1, %struct.nft_flow_rule** %6, align 8
  store %struct.nft_expr* %2, %struct.nft_expr** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %11 = call %struct.nft_meta* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_meta* %11, %struct.nft_meta** %8, align 8
  %12 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %13 = getelementptr inbounds %struct.nft_offload_ctx, %struct.nft_offload_ctx* %12, i32 0, i32 0
  %14 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %13, align 8
  %15 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %16 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.nft_offload_reg, %struct.nft_offload_reg* %14, i64 %17
  store %struct.nft_offload_reg* %18, %struct.nft_offload_reg** %9, align 8
  %19 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %20 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %40 [
    i32 128, label %22
    i32 129, label %31
  ]

22:                                               ; preds = %3
  %23 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %24 = load i32, i32* @basic, align 4
  %25 = load i32, i32* @n_proto, align 4
  %26 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %9, align 8
  %27 = call i32 @NFT_OFFLOAD_MATCH(i32 %23, i32 %24, i32 %25, i32 4, %struct.nft_offload_reg* %26)
  %28 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %29 = load i32, i32* @NFT_OFFLOAD_DEP_NETWORK, align 4
  %30 = call i32 @nft_offload_set_dependency(%struct.nft_offload_ctx* %28, i32 %29)
  br label %43

31:                                               ; preds = %3
  %32 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %33 = load i32, i32* @basic, align 4
  %34 = load i32, i32* @ip_proto, align 4
  %35 = load %struct.nft_offload_reg*, %struct.nft_offload_reg** %9, align 8
  %36 = call i32 @NFT_OFFLOAD_MATCH(i32 %32, i32 %33, i32 %34, i32 4, %struct.nft_offload_reg* %35)
  %37 = load %struct.nft_offload_ctx*, %struct.nft_offload_ctx** %5, align 8
  %38 = load i32, i32* @NFT_OFFLOAD_DEP_TRANSPORT, align 4
  %39 = call i32 @nft_offload_set_dependency(%struct.nft_offload_ctx* %37, i32 %38)
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %31, %22
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.nft_meta* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @NFT_OFFLOAD_MATCH(i32, i32, i32, i32, %struct.nft_offload_reg*) #1

declare dso_local i32 @nft_offload_set_dependency(%struct.nft_offload_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
