; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_meta_bridge.c_nft_meta_bridge_get_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_meta_bridge.c_nft_meta_bridge_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_meta = type { i32, i32 }

@NFTA_META_KEY = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@NFTA_META_DREG = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_meta_bridge_get_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_meta_bridge_get_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_meta*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_meta* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_meta* %11, %struct.nft_meta** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_META_KEY, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = call i32 @nla_get_be32(%struct.nlattr* %15)
  %17 = call i32 @ntohl(i32 %16)
  %18 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %19 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %21 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %26 [
    i32 131, label %23
    i32 128, label %23
    i32 130, label %25
    i32 129, label %25
  ]

23:                                               ; preds = %3, %3
  %24 = load i32, i32* @IFNAMSIZ, align 4
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %3, %3
  store i32 4, i32* %9, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %28 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %30 = call i32 @nft_meta_get_init(%struct.nft_ctx* %27, %struct.nft_expr* %28, %struct.nlattr** %29)
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %25, %23
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = load i64, i64* @NFTA_META_DREG, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nft_parse_register(%struct.nlattr* %35)
  %37 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %38 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %40 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %41 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NFT_DATA_VALUE, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @nft_validate_register_store(%struct.nft_ctx* %39, i32 %42, i32* null, i32 %43, i32 %44)
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %31, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.nft_meta* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_meta_get_init(%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
