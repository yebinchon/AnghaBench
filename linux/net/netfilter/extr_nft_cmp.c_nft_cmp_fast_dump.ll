; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_fast_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_cmp.c_nft_cmp_fast_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_cmp_fast_expr = type { i32, i32, i32 }
%struct.nft_data = type { i32* }

@NFTA_CMP_SREG = common dso_local global i32 0, align 4
@NFTA_CMP_OP = common dso_local global i32 0, align 4
@NFT_CMP_EQ = common dso_local global i32 0, align 4
@NFTA_CMP_DATA = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_cmp_fast_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_cmp_fast_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_cmp_fast_expr*, align 8
  %7 = alloca %struct.nft_data, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %9 = call %struct.nft_cmp_fast_expr* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_cmp_fast_expr* %9, %struct.nft_cmp_fast_expr** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @NFTA_CMP_SREG, align 4
  %12 = load %struct.nft_cmp_fast_expr*, %struct.nft_cmp_fast_expr** %6, align 8
  %13 = getelementptr inbounds %struct.nft_cmp_fast_expr, %struct.nft_cmp_fast_expr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nft_dump_register(%struct.sk_buff* %10, i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @NFTA_CMP_OP, align 4
  %21 = load i32, i32* @NFT_CMP_EQ, align 4
  %22 = call i32 @htonl(i32 %21)
  %23 = call i64 @nla_put_be32(%struct.sk_buff* %19, i32 %20, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %45

26:                                               ; preds = %18
  %27 = load %struct.nft_cmp_fast_expr*, %struct.nft_cmp_fast_expr** %6, align 8
  %28 = getelementptr inbounds %struct.nft_cmp_fast_expr, %struct.nft_cmp_fast_expr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.nft_data, %struct.nft_data* %7, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* @NFTA_CMP_DATA, align 4
  %35 = load i32, i32* @NFT_DATA_VALUE, align 4
  %36 = load %struct.nft_cmp_fast_expr*, %struct.nft_cmp_fast_expr** %6, align 8
  %37 = getelementptr inbounds %struct.nft_cmp_fast_expr, %struct.nft_cmp_fast_expr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BITS_PER_BYTE, align 4
  %40 = sdiv i32 %38, %39
  %41 = call i64 @nft_data_dump(%struct.sk_buff* %33, i32 %34, %struct.nft_data* %7, i32 %35, i32 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %45

44:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %43, %25, %17
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.nft_cmp_fast_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nft_data_dump(%struct.sk_buff*, i32, %struct.nft_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
