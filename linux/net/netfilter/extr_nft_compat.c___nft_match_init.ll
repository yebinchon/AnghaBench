; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_compat.c___nft_match_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i64* }
%struct.nft_expr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.xt_match* }
%struct.xt_match = type { i32 }
%struct.nlattr = type { i32 }
%struct.xt_mtchk_param = type { i32 }
%union.nft_entry = type { i32 }

@NFTA_MATCH_INFO = common dso_local global i64 0, align 8
@NFTA_RULE_COMPAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**, i8*)* @__nft_match_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nft_match_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nft_ctx*, align 8
  %7 = alloca %struct.nft_expr*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.xt_match*, align 8
  %11 = alloca %struct.xt_mtchk_param, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.nft_entry, align 4
  %16 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %6, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load %struct.nft_expr*, %struct.nft_expr** %7, align 8
  %18 = getelementptr inbounds %struct.nft_expr, %struct.nft_expr* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.xt_match*, %struct.xt_match** %20, align 8
  store %struct.xt_match* %21, %struct.xt_match** %10, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %23 = load i64, i64* @NFTA_MATCH_INFO, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = call i32 @nla_len(%struct.nlattr* %25)
  %27 = call i64 @XT_ALIGN(i32 %26)
  store i64 %27, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %28 = bitcast %union.nft_entry* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %28, i8 0, i64 4, i1 false)
  %29 = load %struct.xt_match*, %struct.xt_match** %10, align 8
  %30 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %31 = load i64, i64* @NFTA_MATCH_INFO, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nla_data(%struct.nlattr* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @match_compat_from_user(%struct.xt_match* %29, i32 %34, i8* %35)
  %37 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @NFTA_RULE_COMPAT, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %4
  %45 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.nft_ctx, %struct.nft_ctx* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @NFTA_RULE_COMPAT, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @nft_parse_compat(i64 %50, i32* %13, i32* %14)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %16, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %16, align 4
  store i32 %55, i32* %5, align 4
  br label %68

56:                                               ; preds = %44
  br label %57

57:                                               ; preds = %56, %4
  %58 = load %struct.nft_ctx*, %struct.nft_ctx** %6, align 8
  %59 = load %struct.xt_match*, %struct.xt_match** %10, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @nft_match_set_mtchk_param(%struct.xt_mtchk_param* %11, %struct.nft_ctx* %58, %struct.xt_match* %59, i8* %60, %union.nft_entry* %15, i32 %61, i32 %62)
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @xt_check_match(%struct.xt_mtchk_param* %11, i64 %64, i32 %65, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %57, %54
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @XT_ALIGN(i32) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @match_compat_from_user(%struct.xt_match*, i32, i8*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_compat(i64, i32*, i32*) #1

declare dso_local i32 @nft_match_set_mtchk_param(%struct.xt_mtchk_param*, %struct.nft_ctx*, %struct.xt_match*, i8*, %union.nft_entry*, i32, i32) #1

declare dso_local i32 @xt_check_match(%struct.xt_mtchk_param*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
