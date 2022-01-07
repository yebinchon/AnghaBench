; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_immediate.c_nft_immediate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_immediate_expr = type { i32, i32, i32 }
%struct.nft_data_desc = type { i32, i32 }

@NFTA_IMMEDIATE_DREG = common dso_local global i64 0, align 8
@NFTA_IMMEDIATE_DATA = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_immediate_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_immediate_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_immediate_expr*, align 8
  %9 = alloca %struct.nft_data_desc, align 4
  %10 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %12 = call %struct.nft_immediate_expr* @nft_expr_priv(%struct.nft_expr* %11)
  store %struct.nft_immediate_expr* %12, %struct.nft_immediate_expr** %8, align 8
  %13 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %14 = load i64, i64* @NFTA_IMMEDIATE_DREG, align 8
  %15 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %14
  %16 = load %struct.nlattr*, %struct.nlattr** %15, align 8
  %17 = icmp eq %struct.nlattr* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %20 = load i64, i64* @NFTA_IMMEDIATE_DATA, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp eq %struct.nlattr* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %74

27:                                               ; preds = %18
  %28 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %29 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %8, align 8
  %30 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %29, i32 0, i32 0
  %31 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %32 = load i64, i64* @NFTA_IMMEDIATE_DATA, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nft_data_init(%struct.nft_ctx* %28, i32* %30, i32 4, %struct.nft_data_desc* %9, %struct.nlattr* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %74

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %8, align 8
  %44 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %46 = load i64, i64* @NFTA_IMMEDIATE_DREG, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %45, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call i32 @nft_parse_register(%struct.nlattr* %48)
  %50 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %8, align 8
  %51 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.nft_ctx*, %struct.nft_ctx** %5, align 8
  %53 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %8, align 8
  %54 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %8, align 8
  %57 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nft_validate_register_store(%struct.nft_ctx* %52, i32 %55, i32* %57, i32 %59, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %40
  br label %67

66:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %74

67:                                               ; preds = %65
  %68 = load %struct.nft_immediate_expr*, %struct.nft_immediate_expr** %8, align 8
  %69 = getelementptr inbounds %struct.nft_immediate_expr, %struct.nft_immediate_expr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.nft_data_desc, %struct.nft_data_desc* %9, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @nft_data_release(i32* %69, i32 %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %67, %66, %38, %24
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.nft_immediate_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i32 @nft_data_init(%struct.nft_ctx*, i32*, i32, %struct.nft_data_desc*, %struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i32) #1

declare dso_local i32 @nft_data_release(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
