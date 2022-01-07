; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_xfrm.c_nft_xfrm_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_xfrm = type { i32, i32, i32, i64 }

@NFTA_XFRM_KEY = common dso_local global i64 0, align 8
@NFTA_XFRM_DIR = common dso_local global i64 0, align 8
@NFTA_XFRM_DREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_XFRM_SPNUM = common dso_local global i64 0, align 8
@XFRM_MAX_DEPTH = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_xfrm_get_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_xfrm_get_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_xfrm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %12 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %13 = call %struct.nft_xfrm* @nft_expr_priv(%struct.nft_expr* %12)
  store %struct.nft_xfrm* %13, %struct.nft_xfrm** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %15 = load i64, i64* @NFTA_XFRM_KEY, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %21 = load i64, i64* @NFTA_XFRM_DIR, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %27 = load i64, i64* @NFTA_XFRM_DREG, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = icmp ne %struct.nlattr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25, %19, %3
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %114

34:                                               ; preds = %25
  %35 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %36 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %39 [
    i32 137, label %38
    i32 136, label %38
    i32 138, label %38
  ]

38:                                               ; preds = %34, %34, %34
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EOPNOTSUPP, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %114

42:                                               ; preds = %38
  %43 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %44 = load i64, i64* @NFTA_XFRM_KEY, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i32 @nla_get_u32(%struct.nlattr* %46)
  %48 = call i8* @ntohl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.nft_xfrm*, %struct.nft_xfrm** %8, align 8
  %51 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nft_xfrm*, %struct.nft_xfrm** %8, align 8
  %53 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %58 [
    i32 133, label %55
    i32 130, label %55
    i32 135, label %56
    i32 132, label %56
    i32 134, label %57
    i32 131, label %57
  ]

55:                                               ; preds = %42, %42
  store i32 8, i32* %9, align 4
  br label %61

56:                                               ; preds = %42, %42
  store i32 4, i32* %9, align 4
  br label %61

57:                                               ; preds = %42, %42
  store i32 4, i32* %9, align 4
  br label %61

58:                                               ; preds = %42
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %114

61:                                               ; preds = %57, %56, %55
  %62 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %63 = load i64, i64* @NFTA_XFRM_DIR, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i32 @nla_get_u8(%struct.nlattr* %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  switch i32 %67, label %72 [
    i32 129, label %68
    i32 128, label %68
  ]

68:                                               ; preds = %61, %61
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.nft_xfrm*, %struct.nft_xfrm** %8, align 8
  %71 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %75

72:                                               ; preds = %61
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %114

75:                                               ; preds = %68
  %76 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %77 = load i64, i64* @NFTA_XFRM_SPNUM, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %76, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %83 = load i64, i64* @NFTA_XFRM_SPNUM, align 8
  %84 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %82, i64 %83
  %85 = load %struct.nlattr*, %struct.nlattr** %84, align 8
  %86 = call i32 @nla_get_be32(%struct.nlattr* %85)
  %87 = call i8* @ntohl(i32 %86)
  %88 = ptrtoint i8* %87 to i64
  store i64 %88, i64* %10, align 8
  br label %89

89:                                               ; preds = %81, %75
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* @XFRM_MAX_DEPTH, align 8
  %92 = icmp sge i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load i32, i32* @ERANGE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %114

96:                                               ; preds = %89
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.nft_xfrm*, %struct.nft_xfrm** %8, align 8
  %99 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %98, i32 0, i32 3
  store i64 %97, i64* %99, align 8
  %100 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %101 = load i64, i64* @NFTA_XFRM_DREG, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = call i32 @nft_parse_register(%struct.nlattr* %103)
  %105 = load %struct.nft_xfrm*, %struct.nft_xfrm** %8, align 8
  %106 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %108 = load %struct.nft_xfrm*, %struct.nft_xfrm** %8, align 8
  %109 = getelementptr inbounds %struct.nft_xfrm, %struct.nft_xfrm* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @NFT_DATA_VALUE, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @nft_validate_register_store(%struct.nft_ctx* %107, i32 %110, i32* null, i32 %111, i32 %112)
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %96, %93, %72, %58, %39, %31
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local %struct.nft_xfrm* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
