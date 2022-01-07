; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_flow_offload.c_nft_flow_offload_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32, i32, i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_flow_offload = type { %struct.nft_flowtable* }
%struct.nft_flowtable = type { i32 }

@NFTA_FLOW_TABLE_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_flow_offload_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_flow_offload_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_flow_offload*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_flowtable*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %12 = call %struct.nft_flow_offload* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_flow_offload* %12, %struct.nft_flow_offload** %8, align 8
  %13 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nft_genmask_next(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %18 = load i64, i64* @NFTA_FLOW_TABLE_NAME, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %30 = load i64, i64* @NFTA_FLOW_TABLE_NAME, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.nft_flowtable* @nft_flowtable_lookup(i32 %28, %struct.nlattr* %32, i32 %33)
  store %struct.nft_flowtable* %34, %struct.nft_flowtable** %10, align 8
  %35 = load %struct.nft_flowtable*, %struct.nft_flowtable** %10, align 8
  %36 = call i64 @IS_ERR(%struct.nft_flowtable* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load %struct.nft_flowtable*, %struct.nft_flowtable** %10, align 8
  %40 = call i32 @PTR_ERR(%struct.nft_flowtable* %39)
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %25
  %42 = load %struct.nft_flowtable*, %struct.nft_flowtable** %10, align 8
  %43 = load %struct.nft_flow_offload*, %struct.nft_flow_offload** %8, align 8
  %44 = getelementptr inbounds %struct.nft_flow_offload, %struct.nft_flow_offload* %43, i32 0, i32 0
  store %struct.nft_flowtable* %42, %struct.nft_flowtable** %44, align 8
  %45 = load %struct.nft_flowtable*, %struct.nft_flowtable** %10, align 8
  %46 = getelementptr inbounds %struct.nft_flowtable, %struct.nft_flowtable* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nf_ct_netns_get(i32 %51, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %41, %38, %22
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.nft_flow_offload* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_genmask_next(i32) #1

declare dso_local %struct.nft_flowtable* @nft_flowtable_lookup(i32, %struct.nlattr*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nft_flowtable*) #1

declare dso_local i32 @PTR_ERR(%struct.nft_flowtable*) #1

declare dso_local i32 @nf_ct_netns_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
