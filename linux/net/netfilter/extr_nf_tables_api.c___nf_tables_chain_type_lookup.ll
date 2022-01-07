; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c___nf_tables_chain_type_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c___nf_tables_chain_type_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_chain_type = type { i32 }
%struct.nlattr = type { i32 }

@NFT_CHAIN_T_MAX = common dso_local global i32 0, align 4
@chain_type = common dso_local global %struct.nft_chain_type*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nft_chain_type* (%struct.nlattr*, i64)* @__nf_tables_chain_type_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nft_chain_type* @__nf_tables_chain_type_lookup(%struct.nlattr* %0, i64 %1) #0 {
  %3 = alloca %struct.nft_chain_type*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %45, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NFT_CHAIN_T_MAX, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = load %struct.nft_chain_type***, %struct.nft_chain_type**** @chain_type, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.nft_chain_type**, %struct.nft_chain_type*** %12, i64 %13
  %15 = load %struct.nft_chain_type**, %struct.nft_chain_type*** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.nft_chain_type*, %struct.nft_chain_type** %15, i64 %17
  %19 = load %struct.nft_chain_type*, %struct.nft_chain_type** %18, align 8
  %20 = icmp ne %struct.nft_chain_type* %19, null
  br i1 %20, label %21, label %44

21:                                               ; preds = %11
  %22 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %23 = load %struct.nft_chain_type***, %struct.nft_chain_type**** @chain_type, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.nft_chain_type**, %struct.nft_chain_type*** %23, i64 %24
  %26 = load %struct.nft_chain_type**, %struct.nft_chain_type*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nft_chain_type*, %struct.nft_chain_type** %26, i64 %28
  %30 = load %struct.nft_chain_type*, %struct.nft_chain_type** %29, align 8
  %31 = getelementptr inbounds %struct.nft_chain_type, %struct.nft_chain_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nla_strcmp(%struct.nlattr* %22, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %21
  %36 = load %struct.nft_chain_type***, %struct.nft_chain_type**** @chain_type, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.nft_chain_type**, %struct.nft_chain_type*** %36, i64 %37
  %39 = load %struct.nft_chain_type**, %struct.nft_chain_type*** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nft_chain_type*, %struct.nft_chain_type** %39, i64 %41
  %43 = load %struct.nft_chain_type*, %struct.nft_chain_type** %42, align 8
  store %struct.nft_chain_type* %43, %struct.nft_chain_type** %3, align 8
  br label %49

44:                                               ; preds = %21, %11
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %7

48:                                               ; preds = %7
  store %struct.nft_chain_type* null, %struct.nft_chain_type** %3, align 8
  br label %49

49:                                               ; preds = %48, %35
  %50 = load %struct.nft_chain_type*, %struct.nft_chain_type** %3, align 8
  ret %struct.nft_chain_type* %50
}

declare dso_local i32 @nla_strcmp(%struct.nlattr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
