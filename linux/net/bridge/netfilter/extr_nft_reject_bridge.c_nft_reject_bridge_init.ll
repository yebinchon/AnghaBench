; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_bridge_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_nft_reject_bridge.c_nft_reject_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_reject = type { i32, i32 }

@NFTA_REJECT_TYPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_REJECT_ICMP_CODE = common dso_local global i64 0, align 8
@NFT_REJECT_ICMPX_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_reject_bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_reject_bridge_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_reject*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_reject* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_reject* %11, %struct.nft_reject** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_REJECT_TYPE, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp eq %struct.nlattr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %67

20:                                               ; preds = %3
  %21 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %22 = load i64, i64* @NFTA_REJECT_TYPE, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i32 @nla_get_be32(%struct.nlattr* %24)
  %26 = call i32 @ntohl(i32 %25)
  %27 = load %struct.nft_reject*, %struct.nft_reject** %8, align 8
  %28 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.nft_reject*, %struct.nft_reject** %8, align 8
  %30 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %63 [
    i32 129, label %32
    i32 130, label %32
    i32 128, label %62
  ]

32:                                               ; preds = %20, %20
  %33 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %34 = load i64, i64* @NFTA_REJECT_ICMP_CODE, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp eq %struct.nlattr* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %67

41:                                               ; preds = %32
  %42 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %43 = load i64, i64* @NFTA_REJECT_ICMP_CODE, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @nla_get_u8(%struct.nlattr* %45)
  store i32 %46, i32* %9, align 4
  %47 = load %struct.nft_reject*, %struct.nft_reject** %8, align 8
  %48 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 130
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @NFT_REJECT_ICMPX_MAX, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %67

58:                                               ; preds = %51, %41
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.nft_reject*, %struct.nft_reject** %8, align 8
  %61 = getelementptr inbounds %struct.nft_reject, %struct.nft_reject* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %66

62:                                               ; preds = %20
  br label %66

63:                                               ; preds = %20
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %62, %58
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %63, %55, %38, %17
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.nft_reject* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
