; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_params = type { i32, i32 }
%struct.nft_set = type { i32, i32 }
%struct.nft_set_desc = type { i64 }
%struct.nlattr = type { i32 }
%struct.nft_rhash = type { i32, i32 }

@nft_rhash_params = common dso_local global %struct.rhashtable_params zeroinitializer, align 4
@NFT_RHASH_ELEMENT_HINT = common dso_local global i32 0, align 4
@nft_rhash_gc = common dso_local global i32 0, align 4
@NFT_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set*, %struct.nft_set_desc*, %struct.nlattr**)* @nft_rhash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rhash_init(%struct.nft_set* %0, %struct.nft_set_desc* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_set_desc*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nft_rhash*, align 8
  %9 = alloca %struct.rhashtable_params, align 4
  %10 = alloca i32, align 4
  store %struct.nft_set* %0, %struct.nft_set** %5, align 8
  store %struct.nft_set_desc* %1, %struct.nft_set_desc** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %11 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %12 = call %struct.nft_rhash* @nft_set_priv(%struct.nft_set* %11)
  store %struct.nft_rhash* %12, %struct.nft_rhash** %8, align 8
  %13 = bitcast %struct.rhashtable_params* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.rhashtable_params* @nft_rhash_params to i8*), i64 8, i1 false)
  %14 = load %struct.nft_set_desc*, %struct.nft_set_desc** %6, align 8
  %15 = getelementptr inbounds %struct.nft_set_desc, %struct.nft_set_desc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @NFT_RHASH_ELEMENT_HINT, align 4
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %19, %18
  %23 = phi i64 [ %16, %18 ], [ %21, %19 ]
  %24 = trunc i64 %23 to i32
  %25 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %9, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %27 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.rhashtable_params, %struct.rhashtable_params* %9, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.nft_rhash*, %struct.nft_rhash** %8, align 8
  %31 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %30, i32 0, i32 1
  %32 = call i32 @rhashtable_init(i32* %31, %struct.rhashtable_params* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %52

37:                                               ; preds = %22
  %38 = load %struct.nft_rhash*, %struct.nft_rhash** %8, align 8
  %39 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %38, i32 0, i32 0
  %40 = load i32, i32* @nft_rhash_gc, align 4
  %41 = call i32 @INIT_DEFERRABLE_WORK(i32* %39, i32 %40)
  %42 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %43 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NFT_SET_TIMEOUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %50 = call i32 @nft_rhash_gc_init(%struct.nft_set* %49)
  br label %51

51:                                               ; preds = %48, %37
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.nft_rhash* @nft_set_priv(%struct.nft_set*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rhashtable_init(i32*, %struct.rhashtable_params*) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @nft_rhash_gc_init(%struct.nft_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
