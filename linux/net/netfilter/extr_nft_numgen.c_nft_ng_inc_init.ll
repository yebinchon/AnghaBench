; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_inc_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_numgen.c_nft_ng_inc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_ng_inc = type { i32, i32, i32, i32 }

@NFTA_NG_OFFSET = common dso_local global i64 0, align 8
@NFTA_NG_MODULUS = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@NFTA_NG_DREG = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_ng_inc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_ng_inc_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_ng_inc*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %9 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %10 = call %struct.nft_ng_inc* @nft_expr_priv(%struct.nft_expr* %9)
  store %struct.nft_ng_inc* %10, %struct.nft_ng_inc** %8, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %12 = load i64, i64* @NFTA_NG_OFFSET, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %18 = load i64, i64* @NFTA_NG_OFFSET, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = call i32 @nla_get_be32(%struct.nlattr* %20)
  %22 = call i8* @ntohl(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %25 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %16, %3
  %27 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %28 = load i64, i64* @NFTA_NG_MODULUS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_get_be32(%struct.nlattr* %30)
  %32 = call i8* @ntohl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %35 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %37 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @ERANGE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %80

43:                                               ; preds = %26
  %44 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %45 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %48 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %46, %49
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %53 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %43
  %57 = load i32, i32* @EOVERFLOW, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %80

59:                                               ; preds = %43
  %60 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %61 = load i64, i64* @NFTA_NG_DREG, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = call i32 @nft_parse_register(%struct.nlattr* %63)
  %65 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %66 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %68 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %67, i32 0, i32 3
  %69 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %70 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 @atomic_set(i32* %68, i32 %72)
  %74 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %75 = load %struct.nft_ng_inc*, %struct.nft_ng_inc** %8, align 8
  %76 = getelementptr inbounds %struct.nft_ng_inc, %struct.nft_ng_inc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NFT_DATA_VALUE, align 4
  %79 = call i32 @nft_validate_register_store(%struct.nft_ctx* %74, i32 %77, i32* null, i32 %78, i32 4)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %59, %56, %40
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.nft_ng_inc* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
