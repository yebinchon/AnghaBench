; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_symhash_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_symhash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_symhash = type { i32, i32, i32 }

@NFTA_HASH_DREG = common dso_local global i64 0, align 8
@NFTA_HASH_MODULUS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_HASH_OFFSET = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_symhash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_symhash_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_symhash*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %9 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %10 = call %struct.nft_symhash* @nft_expr_priv(%struct.nft_expr* %9)
  store %struct.nft_symhash* %10, %struct.nft_symhash** %8, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %12 = load i64, i64* @NFTA_HASH_DREG, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %18 = load i64, i64* @NFTA_HASH_MODULUS, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %88

25:                                               ; preds = %16
  %26 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %27 = load i64, i64* @NFTA_HASH_OFFSET, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %33 = load i64, i64* @NFTA_HASH_OFFSET, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i32 @nla_get_be32(%struct.nlattr* %35)
  %37 = call i8* @ntohl(i32 %36)
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %40 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %31, %25
  %42 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %43 = load i64, i64* @NFTA_HASH_DREG, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @nft_parse_register(%struct.nlattr* %45)
  %47 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %48 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %50 = load i64, i64* @NFTA_HASH_MODULUS, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_get_be32(%struct.nlattr* %52)
  %54 = call i8* @ntohl(i32 %53)
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %57 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %59 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %41
  %63 = load i32, i32* @ERANGE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %88

65:                                               ; preds = %41
  %66 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %67 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %70 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %75 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %65
  %79 = load i32, i32* @EOVERFLOW, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %88

81:                                               ; preds = %65
  %82 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %83 = load %struct.nft_symhash*, %struct.nft_symhash** %8, align 8
  %84 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NFT_DATA_VALUE, align 4
  %87 = call i32 @nft_validate_register_store(%struct.nft_ctx* %82, i32 %85, i32* null, i32 %86, i32 4)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %81, %78, %62, %22
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.nft_symhash* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
