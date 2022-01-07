; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_payload.c_nft_payload_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_ctx = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nlattr = type { i32 }
%struct.nft_payload = type { i8*, i32, i8*, i8* }

@NFTA_PAYLOAD_BASE = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_OFFSET = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_LEN = common dso_local global i64 0, align 8
@NFTA_PAYLOAD_DREG = common dso_local global i64 0, align 8
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_ctx*, %struct.nft_expr*, %struct.nlattr**)* @nft_payload_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_payload_init(%struct.nft_ctx* %0, %struct.nft_expr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca %struct.nft_ctx*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nft_payload*, align 8
  store %struct.nft_ctx* %0, %struct.nft_ctx** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %6, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %9 = call %struct.nft_payload* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_payload* %9, %struct.nft_payload** %7, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = load i64, i64* @NFTA_PAYLOAD_BASE, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = call i32 @nla_get_be32(%struct.nlattr* %13)
  %15 = call i8* @ntohl(i32 %14)
  %16 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %17 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %19 = load i64, i64* @NFTA_PAYLOAD_OFFSET, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i32 @nla_get_be32(%struct.nlattr* %21)
  %23 = call i8* @ntohl(i32 %22)
  %24 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %25 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %27 = load i64, i64* @NFTA_PAYLOAD_LEN, align 8
  %28 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %26, i64 %27
  %29 = load %struct.nlattr*, %struct.nlattr** %28, align 8
  %30 = call i32 @nla_get_be32(%struct.nlattr* %29)
  %31 = call i8* @ntohl(i32 %30)
  %32 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %33 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %35 = load i64, i64* @NFTA_PAYLOAD_DREG, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i32 @nft_parse_register(%struct.nlattr* %37)
  %39 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %40 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nft_ctx*, %struct.nft_ctx** %4, align 8
  %42 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %43 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NFT_DATA_VALUE, align 4
  %46 = load %struct.nft_payload*, %struct.nft_payload** %7, align 8
  %47 = getelementptr inbounds %struct.nft_payload, %struct.nft_payload* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @nft_validate_register_store(%struct.nft_ctx* %41, i32 %44, i32* null, i32 %45, i8* %48)
  ret i32 %49
}

declare dso_local %struct.nft_payload* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_parse_register(%struct.nlattr*) #1

declare dso_local i32 @nft_validate_register_store(%struct.nft_ctx*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
