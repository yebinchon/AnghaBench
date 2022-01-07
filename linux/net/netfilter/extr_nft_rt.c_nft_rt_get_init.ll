; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_rt.c_nft_rt_get_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_rt.c_nft_rt_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_rt = type { i32, i32 }

@NFTA_RT_KEY = common dso_local global i64 0, align 8
@NFTA_RT_DREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_rt_get_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rt_get_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_rt*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_rt* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_rt* %11, %struct.nft_rt** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_RT_KEY, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp eq %struct.nlattr* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %19 = load i64, i64* @NFTA_RT_DREG, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp eq %struct.nlattr* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %17
  %27 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %28 = load i64, i64* @NFTA_RT_KEY, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_get_be32(%struct.nlattr* %30)
  %32 = call i32 @ntohl(i32 %31)
  %33 = load %struct.nft_rt*, %struct.nft_rt** %8, align 8
  %34 = getelementptr inbounds %struct.nft_rt, %struct.nft_rt* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nft_rt*, %struct.nft_rt** %8, align 8
  %36 = getelementptr inbounds %struct.nft_rt, %struct.nft_rt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %41 [
    i32 131, label %38
    i32 130, label %39
    i32 129, label %40
  ]

38:                                               ; preds = %26
  store i32 4, i32* %9, align 4
  br label %44

39:                                               ; preds = %26
  store i32 4, i32* %9, align 4
  br label %44

40:                                               ; preds = %26
  store i32 4, i32* %9, align 4
  br label %44

41:                                               ; preds = %26
  %42 = load i32, i32* @EOPNOTSUPP, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %59

44:                                               ; preds = %40, %39, %38
  %45 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %46 = load i64, i64* @NFTA_RT_DREG, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nft_parse_register(%struct.nlattr* %48)
  %50 = load %struct.nft_rt*, %struct.nft_rt** %8, align 8
  %51 = getelementptr inbounds %struct.nft_rt, %struct.nft_rt* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %53 = load %struct.nft_rt*, %struct.nft_rt** %8, align 8
  %54 = getelementptr inbounds %struct.nft_rt, %struct.nft_rt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @NFT_DATA_VALUE, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @nft_validate_register_store(%struct.nft_ctx* %52, i32 %55, i32* null, i32 %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %44, %41, %23
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.nft_rt* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
