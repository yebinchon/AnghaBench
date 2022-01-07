; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_osf.c_nft_osf_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_osf.c_nft_osf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_osf = type { i32, i32, i64 }

@NFTA_OSF_TTL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_OSF_FLAGS = common dso_local global i64 0, align 8
@NFT_OSF_F_VERSION = common dso_local global i64 0, align 8
@NFTA_OSF_DREG = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@NFT_OSF_MAXGENRELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_osf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_osf_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_osf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %13 = call %struct.nft_osf* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_osf* %13, %struct.nft_osf** %8, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %15 = load i64, i64* @NFTA_OSF_TTL, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load i64, i64* @NFTA_OSF_TTL, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = call i32 @nla_get_u8(%struct.nlattr* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %77

30:                                               ; preds = %19
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.nft_osf*, %struct.nft_osf** %8, align 8
  %33 = getelementptr inbounds %struct.nft_osf, %struct.nft_osf* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %30, %3
  %35 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %36 = load i64, i64* @NFTA_OSF_FLAGS, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %42 = load i64, i64* @NFTA_OSF_FLAGS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_be32(%struct.nlattr* %44)
  %46 = call i64 @ntohl(i32 %45)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @NFT_OSF_F_VERSION, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %77

53:                                               ; preds = %40
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.nft_osf*, %struct.nft_osf** %8, align 8
  %56 = getelementptr inbounds %struct.nft_osf, %struct.nft_osf* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %34
  %58 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %59 = load i64, i64* @NFTA_OSF_DREG, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nft_parse_register(%struct.nlattr* %61)
  %63 = load %struct.nft_osf*, %struct.nft_osf** %8, align 8
  %64 = getelementptr inbounds %struct.nft_osf, %struct.nft_osf* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %66 = load %struct.nft_osf*, %struct.nft_osf** %8, align 8
  %67 = getelementptr inbounds %struct.nft_osf, %struct.nft_osf* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NFT_DATA_VALUE, align 4
  %70 = load i32, i32* @NFT_OSF_MAXGENRELEN, align 4
  %71 = call i32 @nft_validate_register_store(%struct.nft_ctx* %65, i32 %68, i32* null, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %57
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %4, align 4
  br label %77

76:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %74, %50, %27
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.nft_osf* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
