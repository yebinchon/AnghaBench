; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_range.c_nft_range_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_range.c_nft_range_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_range_expr = type { i32, i32, i32, i32, i32 }

@NFTA_RANGE_SREG = common dso_local global i32 0, align 4
@NFTA_RANGE_OP = common dso_local global i32 0, align 4
@NFTA_RANGE_FROM_DATA = common dso_local global i32 0, align 4
@NFT_DATA_VALUE = common dso_local global i32 0, align 4
@NFTA_RANGE_TO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_range_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_range_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_range_expr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_range_expr* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_range_expr* %8, %struct.nft_range_expr** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_RANGE_SREG, align 4
  %11 = load %struct.nft_range_expr*, %struct.nft_range_expr** %6, align 8
  %12 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_RANGE_OP, align 4
  %20 = load %struct.nft_range_expr*, %struct.nft_range_expr** %6, align 8
  %21 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @htonl(i32 %22)
  %24 = call i64 @nla_put_be32(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %51

27:                                               ; preds = %17
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* @NFTA_RANGE_FROM_DATA, align 4
  %30 = load %struct.nft_range_expr*, %struct.nft_range_expr** %6, align 8
  %31 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %30, i32 0, i32 2
  %32 = load i32, i32* @NFT_DATA_VALUE, align 4
  %33 = load %struct.nft_range_expr*, %struct.nft_range_expr** %6, align 8
  %34 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nft_data_dump(%struct.sk_buff* %28, i32 %29, i32* %31, i32 %32, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %27
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* @NFTA_RANGE_TO_DATA, align 4
  %41 = load %struct.nft_range_expr*, %struct.nft_range_expr** %6, align 8
  %42 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %41, i32 0, i32 1
  %43 = load i32, i32* @NFT_DATA_VALUE, align 4
  %44 = load %struct.nft_range_expr*, %struct.nft_range_expr** %6, align 8
  %45 = getelementptr inbounds %struct.nft_range_expr, %struct.nft_range_expr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @nft_data_dump(%struct.sk_buff* %39, i32 %40, i32* %42, i32 %43, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %38, %27
  br label %51

50:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %52

51:                                               ; preds = %49, %26, %16
  store i32 -1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %50
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.nft_range_expr* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @nft_data_dump(%struct.sk_buff*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
