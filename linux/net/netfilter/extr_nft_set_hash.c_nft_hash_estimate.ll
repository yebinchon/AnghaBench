; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_hash_estimate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_hash_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set_desc = type { i32, i32 }
%struct.nft_set_estimate = type { i32, i32, i32 }

@NFT_SET_CLASS_O_1 = common dso_local global i32 0, align 4
@NFT_SET_CLASS_O_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set_desc*, i32, %struct.nft_set_estimate*)* @nft_hash_estimate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_hash_estimate(%struct.nft_set_desc* %0, i32 %1, %struct.nft_set_estimate* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_set_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nft_set_estimate*, align 8
  store %struct.nft_set_desc* %0, %struct.nft_set_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nft_set_estimate* %2, %struct.nft_set_estimate** %7, align 8
  %8 = load %struct.nft_set_desc*, %struct.nft_set_desc** %5, align 8
  %9 = getelementptr inbounds %struct.nft_set_desc, %struct.nft_set_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

13:                                               ; preds = %3
  %14 = load %struct.nft_set_desc*, %struct.nft_set_desc** %5, align 8
  %15 = getelementptr inbounds %struct.nft_set_desc, %struct.nft_set_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %42

19:                                               ; preds = %13
  %20 = load %struct.nft_set_desc*, %struct.nft_set_desc** %5, align 8
  %21 = getelementptr inbounds %struct.nft_set_desc, %struct.nft_set_desc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nft_hash_buckets(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = add i64 4, %25
  %27 = load %struct.nft_set_desc*, %struct.nft_set_desc** %5, align 8
  %28 = getelementptr inbounds %struct.nft_set_desc, %struct.nft_set_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = add i64 %26, %31
  %33 = trunc i64 %32 to i32
  %34 = load %struct.nft_set_estimate*, %struct.nft_set_estimate** %7, align 8
  %35 = getelementptr inbounds %struct.nft_set_estimate, %struct.nft_set_estimate* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @NFT_SET_CLASS_O_1, align 4
  %37 = load %struct.nft_set_estimate*, %struct.nft_set_estimate** %7, align 8
  %38 = getelementptr inbounds %struct.nft_set_estimate, %struct.nft_set_estimate* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @NFT_SET_CLASS_O_N, align 4
  %40 = load %struct.nft_set_estimate*, %struct.nft_set_estimate** %7, align 8
  %41 = getelementptr inbounds %struct.nft_set_estimate, %struct.nft_set_estimate* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %19, %18, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @nft_hash_buckets(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
