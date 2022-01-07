; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_lookup.c_nft_lookup_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_lookup = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@NFT_LOOKUP_F_INV = common dso_local global i32 0, align 4
@NFTA_LOOKUP_SET = common dso_local global i32 0, align 4
@NFTA_LOOKUP_SREG = common dso_local global i32 0, align 4
@NFT_SET_MAP = common dso_local global i32 0, align 4
@NFTA_LOOKUP_DREG = common dso_local global i32 0, align 4
@NFTA_LOOKUP_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_lookup_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_lookup_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_lookup*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %8 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %9 = call %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr* %8)
  store %struct.nft_lookup* %9, %struct.nft_lookup** %6, align 8
  %10 = load %struct.nft_lookup*, %struct.nft_lookup** %6, align 8
  %11 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @NFT_LOOKUP_F_INV, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %7, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @NFTA_LOOKUP_SET, align 4
  %21 = load %struct.nft_lookup*, %struct.nft_lookup** %6, align 8
  %22 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @nla_put_string(%struct.sk_buff* %19, i32 %20, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %66

29:                                               ; preds = %17
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* @NFTA_LOOKUP_SREG, align 4
  %32 = load %struct.nft_lookup*, %struct.nft_lookup** %6, align 8
  %33 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @nft_dump_register(%struct.sk_buff* %30, i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %66

38:                                               ; preds = %29
  %39 = load %struct.nft_lookup*, %struct.nft_lookup** %6, align 8
  %40 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NFT_SET_MAP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %38
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = load i32, i32* @NFTA_LOOKUP_DREG, align 4
  %50 = load %struct.nft_lookup*, %struct.nft_lookup** %6, align 8
  %51 = getelementptr inbounds %struct.nft_lookup, %struct.nft_lookup* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @nft_dump_register(%struct.sk_buff* %48, i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %66

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %38
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = load i32, i32* @NFTA_LOOKUP_FLAGS, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @htonl(i32 %60)
  %62 = call i64 @nla_put_be32(%struct.sk_buff* %58, i32 %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %66

65:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %67

66:                                               ; preds = %64, %55, %37, %28
  store i32 -1, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.nft_lookup* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
