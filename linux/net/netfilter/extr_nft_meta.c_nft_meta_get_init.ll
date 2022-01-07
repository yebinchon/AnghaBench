; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_get_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_meta.c_nft_meta_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_meta = type { i32, i32 }

@NFTA_META_KEY = common dso_local global i64 0, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@nft_prandom_state = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_META_DREG = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nft_meta_get_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
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
  switch i32 %22, label %32 [
    i32 136, label %23
    i32 149, label %23
    i32 140, label %23
    i32 145, label %24
    i32 148, label %24
    i32 147, label %24
    i32 137, label %24
    i32 146, label %24
    i32 153, label %24
    i32 144, label %24
    i32 131, label %24
    i32 132, label %24
    i32 139, label %24
    i32 154, label %24
    i32 152, label %24
    i32 143, label %24
    i32 150, label %25
    i32 141, label %25
    i32 151, label %25
    i32 142, label %25
    i32 138, label %27
    i32 128, label %29
    i32 130, label %30
    i32 129, label %31
  ]

23:                                               ; preds = %3, %3, %3
  store i32 4, i32* %9, align 4
  br label %35

24:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  store i32 4, i32* %9, align 4
  br label %35

25:                                               ; preds = %3, %3, %3, %3
  %26 = load i32, i32* @IFNAMSIZ, align 4
  store i32 %26, i32* %9, align 4
  br label %35

27:                                               ; preds = %3
  %28 = call i32 @prandom_init_once(i32* @nft_prandom_state)
  store i32 4, i32* %9, align 4
  br label %35

29:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %35

30:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %35

31:                                               ; preds = %3
  store i32 4, i32* %9, align 4
  br label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %50

35:                                               ; preds = %31, %30, %29, %27, %25, %24, %23
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = load i64, i64* @NFTA_META_DREG, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %36, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = call i32 @nft_parse_register(%struct.nlattr* %39)
  %41 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %42 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %44 = load %struct.nft_meta*, %struct.nft_meta** %8, align 8
  %45 = getelementptr inbounds %struct.nft_meta, %struct.nft_meta* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NFT_DATA_VALUE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @nft_validate_register_store(%struct.nft_ctx* %43, i32 %46, i32* null, i32 %47, i32 %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %35, %32
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nft_meta* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @prandom_init_once(i32*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
