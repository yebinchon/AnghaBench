; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_fast_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_fast_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_cmp_fast_expr = type { i32, i32, i32 }
%struct.nft_data_desc = type { i32 }
%struct.nft_data = type { i32* }

@NFTA_CMP_DATA = common dso_local global i64 0, align 8
@NFTA_CMP_SREG = common dso_local global i64 0, align 8
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_cmp_fast_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_cmp_fast_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_cmp_fast_expr*, align 8
  %9 = alloca %struct.nft_data_desc, align 4
  %10 = alloca %struct.nft_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %13 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %14 = call %struct.nft_cmp_fast_expr* @nft_expr_priv(%struct.nft_expr* %13)
  store %struct.nft_cmp_fast_expr* %14, %struct.nft_cmp_fast_expr** %8, align 8
  %15 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %16 = load i64, i64* @NFTA_CMP_DATA, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = call i32 @nft_data_init(i32* null, %struct.nft_data* %10, i32 8, %struct.nft_data_desc* %9, %struct.nlattr* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %26 = load i64, i64* @NFTA_CMP_SREG, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nft_parse_register(%struct.nlattr* %28)
  %30 = load %struct.nft_cmp_fast_expr*, %struct.nft_cmp_fast_expr** %8, align 8
  %31 = getelementptr inbounds %struct.nft_cmp_fast_expr, %struct.nft_cmp_fast_expr* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nft_cmp_fast_expr*, %struct.nft_cmp_fast_expr** %8, align 8
  %33 = getelementptr inbounds %struct.nft_cmp_fast_expr, %struct.nft_cmp_fast_expr* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nft_validate_register_load(i32 %34, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %62

42:                                               ; preds = %24
  %43 = load i32, i32* @BITS_PER_BYTE, align 4
  %44 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, %43
  store i32 %46, i32* %44, align 4
  %47 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nft_cmp_fast_mask(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %10, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.nft_cmp_fast_expr*, %struct.nft_cmp_fast_expr** %8, align 8
  %57 = getelementptr inbounds %struct.nft_cmp_fast_expr, %struct.nft_cmp_fast_expr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.nft_cmp_fast_expr*, %struct.nft_cmp_fast_expr** %8, align 8
  %61 = getelementptr inbounds %struct.nft_cmp_fast_expr, %struct.nft_cmp_fast_expr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %42, %40, %22
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.nft_cmp_fast_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_data_init(i32*, %struct.nft_data*, i32, %struct.nft_data_desc*, %struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i32, i32) #1

declare dso_local i32 @nft_cmp_fast_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
