; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_dup_ipv6.c_nft_dup_ipv6_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/netfilter/extr_nft_dup_ipv6.c_nft_dup_ipv6_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_dup_ipv6 = type { i8*, i8* }

@NFTA_DUP_SREG_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NFTA_DUP_SREG_DEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_dup_ipv6_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_dup_ipv6_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_ctx*, align 8
  %6 = alloca %struct.nft_expr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_dup_ipv6*, align 8
  %9 = alloca i32, align 4
  store %struct.nft_ctx* %0, %struct.nft_ctx** %5, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %10 = load %struct.nft_expr*, %struct.nft_expr** %6, align 8
  %11 = call %struct.nft_dup_ipv6* @nft_expr_priv(%struct.nft_expr* %10)
  store %struct.nft_dup_ipv6* %11, %struct.nft_dup_ipv6** %8, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %13 = load i64, i64* @NFTA_DUP_SREG_ADDR, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp eq %struct.nlattr* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %22 = load i64, i64* @NFTA_DUP_SREG_ADDR, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i8* @nft_parse_register(%struct.nlattr* %24)
  %26 = load %struct.nft_dup_ipv6*, %struct.nft_dup_ipv6** %8, align 8
  %27 = getelementptr inbounds %struct.nft_dup_ipv6, %struct.nft_dup_ipv6* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.nft_dup_ipv6*, %struct.nft_dup_ipv6** %8, align 8
  %29 = getelementptr inbounds %struct.nft_dup_ipv6, %struct.nft_dup_ipv6* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @nft_validate_register_load(i8* %30, i32 4)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %55

36:                                               ; preds = %20
  %37 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %38 = load i64, i64* @NFTA_DUP_SREG_DEV, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %44 = load i64, i64* @NFTA_DUP_SREG_DEV, align 8
  %45 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %43, i64 %44
  %46 = load %struct.nlattr*, %struct.nlattr** %45, align 8
  %47 = call i8* @nft_parse_register(%struct.nlattr* %46)
  %48 = load %struct.nft_dup_ipv6*, %struct.nft_dup_ipv6** %8, align 8
  %49 = getelementptr inbounds %struct.nft_dup_ipv6, %struct.nft_dup_ipv6* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.nft_dup_ipv6*, %struct.nft_dup_ipv6** %8, align 8
  %51 = getelementptr inbounds %struct.nft_dup_ipv6, %struct.nft_dup_ipv6* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @nft_validate_register_load(i8* %52, i32 4)
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %42, %34, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.nft_dup_ipv6* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_load(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
