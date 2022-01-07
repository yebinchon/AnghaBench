; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_chain_commit_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_chain_commit_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_trans = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.nft_base_chain = type { i32 }

@nft_chain_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nft_trans*)* @nft_chain_commit_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_chain_commit_update(%struct.nft_trans* %0) #0 {
  %2 = alloca %struct.nft_trans*, align 8
  %3 = alloca %struct.nft_base_chain*, align 8
  store %struct.nft_trans* %0, %struct.nft_trans** %2, align 8
  %4 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %5 = call i64 @nft_trans_chain_name(%struct.nft_trans* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %47

7:                                                ; preds = %1
  %8 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %9 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %14 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* @nft_chain_ht_params, align 4
  %19 = call i32 @rhltable_remove(i32* %12, i32* %17, i32 %18)
  %20 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %21 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %27 = call i64 @nft_trans_chain_name(%struct.nft_trans* %26)
  %28 = call i32 @swap(i32 %25, i64 %27)
  %29 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %30 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %35 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %41 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* @nft_chain_ht_params, align 4
  %46 = call i32 @rhltable_insert_key(i32* %33, i32 %39, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %7, %1
  %48 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %49 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = call i32 @nft_is_base_chain(%struct.TYPE_7__* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %70

55:                                               ; preds = %47
  %56 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %57 = call i32 @nft_chain_stats_replace(%struct.nft_trans* %56)
  %58 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %59 = getelementptr inbounds %struct.nft_trans, %struct.nft_trans* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = call %struct.nft_base_chain* @nft_base_chain(%struct.TYPE_7__* %61)
  store %struct.nft_base_chain* %62, %struct.nft_base_chain** %3, align 8
  %63 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %64 = call i32 @nft_trans_chain_policy(%struct.nft_trans* %63)
  switch i32 %64, label %70 [
    i32 128, label %65
    i32 129, label %65
  ]

65:                                               ; preds = %55, %55
  %66 = load %struct.nft_trans*, %struct.nft_trans** %2, align 8
  %67 = call i32 @nft_trans_chain_policy(%struct.nft_trans* %66)
  %68 = load %struct.nft_base_chain*, %struct.nft_base_chain** %3, align 8
  %69 = getelementptr inbounds %struct.nft_base_chain, %struct.nft_base_chain* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %54, %55, %65
  ret void
}

declare dso_local i64 @nft_trans_chain_name(%struct.nft_trans*) #1

declare dso_local i32 @rhltable_remove(i32*, i32*, i32) #1

declare dso_local i32 @swap(i32, i64) #1

declare dso_local i32 @rhltable_insert_key(i32*, i32, i32*, i32) #1

declare dso_local i32 @nft_is_base_chain(%struct.TYPE_7__*) #1

declare dso_local i32 @nft_chain_stats_replace(%struct.nft_trans*) #1

declare dso_local %struct.nft_base_chain* @nft_base_chain(%struct.TYPE_7__*) #1

declare dso_local i32 @nft_trans_chain_policy(%struct.nft_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
