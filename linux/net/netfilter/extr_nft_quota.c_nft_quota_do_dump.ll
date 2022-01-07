; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_do_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_quota.c_nft_quota_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_quota = type { i32, i32, i32 }

@NFT_QUOTA_F_DEPLETED = common dso_local global i32 0, align 4
@NFTA_QUOTA_BYTES = common dso_local global i32 0, align 4
@NFTA_QUOTA_PAD = common dso_local global i32 0, align 4
@NFTA_QUOTA_CONSUMED = common dso_local global i32 0, align 4
@NFTA_QUOTA_FLAGS = common dso_local global i32 0, align 4
@NFT_QUOTA_DEPLETED_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_quota*, i32)* @nft_quota_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_quota_do_dump(%struct.sk_buff* %0, %struct.nft_quota* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nft_quota*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nft_quota* %1, %struct.nft_quota** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nft_quota*, %struct.nft_quota** %6, align 8
  %13 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.nft_quota*, %struct.nft_quota** %6, align 8
  %16 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %15, i32 0, i32 1
  %17 = call i64 @atomic64_read(i32* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.nft_quota*, %struct.nft_quota** %6, align 8
  %19 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %18, i32 0, i32 2
  %20 = call i64 @atomic64_read(i32* %19)
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %9, align 8
  %26 = load i32, i32* @NFT_QUOTA_F_DEPLETED, align 4
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  br label %31

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  store i64 %30, i64* %9, align 8
  br label %31

31:                                               ; preds = %29, %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @NFTA_QUOTA_BYTES, align 4
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @cpu_to_be64(i64 %34)
  %36 = load i32, i32* @NFTA_QUOTA_PAD, align 4
  %37 = call i64 @nla_put_be64(%struct.sk_buff* %32, i32 %33, i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load i32, i32* @NFTA_QUOTA_CONSUMED, align 4
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @cpu_to_be64(i64 %42)
  %44 = load i32, i32* @NFTA_QUOTA_PAD, align 4
  %45 = call i64 @nla_put_be64(%struct.sk_buff* %40, i32 %41, i32 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* @NFTA_QUOTA_FLAGS, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @htonl(i32 %50)
  %52 = call i64 @nla_put_be32(%struct.sk_buff* %48, i32 %49, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %39, %31
  br label %68

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.nft_quota*, %struct.nft_quota** %6, align 8
  %61 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %60, i32 0, i32 1
  %62 = call i32 @atomic64_sub(i64 %59, i32* %61)
  %63 = load i32, i32* @NFT_QUOTA_DEPLETED_BIT, align 4
  %64 = load %struct.nft_quota*, %struct.nft_quota** %6, align 8
  %65 = getelementptr inbounds %struct.nft_quota, %struct.nft_quota* %64, i32 0, i32 0
  %66 = call i32 @clear_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %58, %55
  store i32 0, i32* %4, align 4
  br label %69

68:                                               ; preds = %54
  store i32 -1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i64 @nla_put_be64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @atomic64_sub(i64, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
