; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c_nft_target_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i64* }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_target* }
%struct.xt_target = type { i32 }
%struct.nlattr = type { i32 }
%struct.xt_tgchk_param = type { i32 }
%union.nft_entry = type { i32 }

@NFTA_TARGET_INFO = common dso_local global i64 0, align 8
@NFTA_RULE_COMPAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_target_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_target_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.xt_target*, align 8
  %10 = alloca %struct.xt_tgchk_param, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %union.nft_entry, align 4
  %15 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %16 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %17 = call i8* @nft_expr_priv(%struct.nft_expr* %16)
  store i8* %17, i8** %8, align 8
  %18 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %19 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.xt_target*, %struct.xt_target** %21, align 8
  store %struct.xt_target* %22, %struct.xt_target** %9, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %24 = load i64, i64* @NFTA_TARGET_INFO, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_len(%struct.nlattr* %26)
  %28 = call i64 @XT_ALIGN(i32 %27)
  store i64 %28, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = bitcast %union.nft_entry* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %31 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %32 = load i64, i64* @NFTA_TARGET_INFO, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_data(%struct.nlattr* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @target_compat_from_user(%struct.xt_target* %30, i32 %35, i8* %36)
  %38 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %39 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @NFTA_RULE_COMPAT, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %3
  %46 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @NFTA_RULE_COMPAT, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @nft_parse_compat(i64 %51, i32* %12, i32* %13)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %4, align 4
  br label %82

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %3
  %59 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %60 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @nft_target_set_tgchk_param(%struct.xt_tgchk_param* %10, %struct.nft_ctx* %59, %struct.xt_target* %60, i8* %61, %union.nft_entry* %14, i32 %62, i32 %63)
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @xt_check_target(%struct.xt_tgchk_param* %10, i64 %65, i32 %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %58
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %4, align 4
  br label %82

73:                                               ; preds = %58
  %74 = load %struct.xt_target*, %struct.xt_target** %9, align 8
  %75 = getelementptr inbounds %struct.xt_target, %struct.xt_target* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %71, %55
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i8* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @XT_ALIGN(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @target_compat_from_user(%struct.xt_target*, i32, i8*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_compat(i64, i32*, i32*) #1

declare dso_local i32 @nft_target_set_tgchk_param(%struct.xt_tgchk_param*, %struct.nft_ctx*, %struct.xt_target*, i8*, %union.nft_entry*, i32, i32) #1

declare dso_local i32 @xt_check_target(%struct.xt_tgchk_param*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
