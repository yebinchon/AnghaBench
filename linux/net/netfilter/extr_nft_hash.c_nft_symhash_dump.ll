; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_symhash_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_hash.c_nft_symhash_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nft_expr = type { i32 }
%struct.nft_symhash = type { i64, i64, i32 }

@NFTA_HASH_DREG = common dso_local global i32 0, align 4
@NFTA_HASH_MODULUS = common dso_local global i32 0, align 4
@NFTA_HASH_OFFSET = common dso_local global i32 0, align 4
@NFTA_HASH_TYPE = common dso_local global i32 0, align 4
@NFT_HASH_SYM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nft_expr*)* @nft_symhash_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_symhash_dump(%struct.sk_buff* %0, %struct.nft_expr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nft_expr*, align 8
  %6 = alloca %struct.nft_symhash*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nft_expr* %1, %struct.nft_expr** %5, align 8
  %7 = load %struct.nft_expr*, %struct.nft_expr** %5, align 8
  %8 = call %struct.nft_symhash* @nft_expr_priv(%struct.nft_expr* %7)
  store %struct.nft_symhash* %8, %struct.nft_symhash** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = load i32, i32* @NFTA_HASH_DREG, align 4
  %11 = load %struct.nft_symhash*, %struct.nft_symhash** %6, align 8
  %12 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @nft_dump_register(%struct.sk_buff* %9, i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @NFTA_HASH_MODULUS, align 4
  %20 = load %struct.nft_symhash*, %struct.nft_symhash** %6, align 8
  %21 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @htonl(i64 %22)
  %24 = call i64 @nla_put_be32(%struct.sk_buff* %18, i32 %19, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %52

27:                                               ; preds = %17
  %28 = load %struct.nft_symhash*, %struct.nft_symhash** %6, align 8
  %29 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* @NFTA_HASH_OFFSET, align 4
  %35 = load %struct.nft_symhash*, %struct.nft_symhash** %6, align 8
  %36 = getelementptr inbounds %struct.nft_symhash, %struct.nft_symhash* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @htonl(i64 %37)
  %39 = call i64 @nla_put_be32(%struct.sk_buff* %33, i32 %34, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %52

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load i32, i32* @NFTA_HASH_TYPE, align 4
  %46 = load i64, i64* @NFT_HASH_SYM, align 8
  %47 = call i32 @htonl(i64 %46)
  %48 = call i64 @nla_put_be32(%struct.sk_buff* %44, i32 %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %52

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %53

52:                                               ; preds = %50, %41, %26, %16
  store i32 -1, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.nft_symhash* @nft_expr_priv(%struct.nft_expr*) #1

declare dso_local i64 @nft_dump_register(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
