; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_get_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_tunnel.c_nft_tunnel_get_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_tunnel = type { i32, i64, i32 }

@NFTA_TUNNEL_KEY = common dso_local global i64 0, align 8
@NFTA_TUNNEL_DREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFTA_TUNNEL_MODE = common dso_local global i64 0, align 8
@NFT_TUNNEL_MODE_MAX = common dso_local global i64 0, align 8
@NFT_TUNNEL_MODE_NONE = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_tunnel_get_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_tunnel_get_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_tunnel*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_tunnel* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_tunnel* %11, %struct.nft_tunnel** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_TUNNEL_KEY, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %3
  %18 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %19 = load i64, i64* @NFTA_TUNNEL_DREG, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = icmp ne %struct.nlattr* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %17, %3
  %27 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %28 = load i64, i64* @NFTA_TUNNEL_KEY, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @nla_get_be32(%struct.nlattr* %30)
  %32 = call i8* @ntohl(i32 %31)
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.nft_tunnel*, %struct.nft_tunnel** %8, align 8
  %35 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.nft_tunnel*, %struct.nft_tunnel** %8, align 8
  %37 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %41 [
    i32 128, label %39
    i32 129, label %40
  ]

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
  br label %88

44:                                               ; preds = %40, %39
  %45 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %46 = load i64, i64* @NFTA_TUNNEL_DREG, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nft_parse_register(%struct.nlattr* %48)
  %50 = load %struct.nft_tunnel*, %struct.nft_tunnel** %8, align 8
  %51 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %53 = load i64, i64* @NFTA_TUNNEL_MODE, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = icmp ne %struct.nlattr* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %44
  %58 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %59 = load i64, i64* @NFTA_TUNNEL_MODE, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %58, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nla_get_be32(%struct.nlattr* %61)
  %63 = call i8* @ntohl(i32 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = load %struct.nft_tunnel*, %struct.nft_tunnel** %8, align 8
  %66 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.nft_tunnel*, %struct.nft_tunnel** %8, align 8
  %68 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NFT_TUNNEL_MODE_MAX, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %57
  %73 = load i32, i32* @EOPNOTSUPP, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %88

75:                                               ; preds = %57
  br label %80

76:                                               ; preds = %44
  %77 = load i64, i64* @NFT_TUNNEL_MODE_NONE, align 8
  %78 = load %struct.nft_tunnel*, %struct.nft_tunnel** %8, align 8
  %79 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %75
  %81 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %82 = load %struct.nft_tunnel*, %struct.nft_tunnel** %8, align 8
  %83 = getelementptr inbounds %struct.nft_tunnel, %struct.nft_tunnel* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @NFT_DATA_VALUE, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @nft_validate_register_store(%struct.nft_ctx* %81, i32 %84, i32* null, i32 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %72, %41, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.nft_tunnel* @nft_expr_priv(%struct.nft_expr*) #1

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
