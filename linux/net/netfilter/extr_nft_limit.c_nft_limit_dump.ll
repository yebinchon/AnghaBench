; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_limit.c_nft_limit_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_limit.c_nft_limit_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_limit = type { i32, i32, i32, i64 }

@NFT_LIMIT_F_INV = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@NFTA_LIMIT_RATE = common dso_local global i32 0, align 4
@NFTA_LIMIT_PAD = common dso_local global i32 0, align 4
@NFTA_LIMIT_UNIT = common dso_local global i32 0, align 4
@NFTA_LIMIT_BURST = common dso_local global i32 0, align 4
@NFTA_LIMIT_TYPE = common dso_local global i32 0, align 4
@NFTA_LIMIT_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_limit*, i32)* @nft_limit_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_limit_dump(%struct.sk_buff* %0, %struct.nft_limit* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nft_limit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nft_limit* %1, %struct.nft_limit** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nft_limit*, %struct.nft_limit** %6, align 8
  %11 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @NFT_LIMIT_F_INV, align 4
  br label %17

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nft_limit*, %struct.nft_limit** %6, align 8
  %20 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @NSEC_PER_SEC, align 4
  %23 = call i32 @div_u64(i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* @NFTA_LIMIT_RATE, align 4
  %26 = load %struct.nft_limit*, %struct.nft_limit** %6, align 8
  %27 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cpu_to_be64(i32 %28)
  %30 = load i32, i32* @NFTA_LIMIT_PAD, align 4
  %31 = call i64 @nla_put_be64(%struct.sk_buff* %24, i32 %25, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %64, label %33

33:                                               ; preds = %17
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* @NFTA_LIMIT_UNIT, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @cpu_to_be64(i32 %36)
  %38 = load i32, i32* @NFTA_LIMIT_PAD, align 4
  %39 = call i64 @nla_put_be64(%struct.sk_buff* %34, i32 %35, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %64, label %41

41:                                               ; preds = %33
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = load i32, i32* @NFTA_LIMIT_BURST, align 4
  %44 = load %struct.nft_limit*, %struct.nft_limit** %6, align 8
  %45 = getelementptr inbounds %struct.nft_limit, %struct.nft_limit* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @htonl(i32 %46)
  %48 = call i64 @nla_put_be32(%struct.sk_buff* %42, i32 %43, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = load i32, i32* @NFTA_LIMIT_TYPE, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @htonl(i32 %53)
  %55 = call i64 @nla_put_be32(%struct.sk_buff* %51, i32 %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* @NFTA_LIMIT_FLAGS, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @htonl(i32 %60)
  %62 = call i64 @nla_put_be32(%struct.sk_buff* %58, i32 %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %50, %41, %33, %17
  br label %66

65:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %67

66:                                               ; preds = %64
  store i32 -1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
