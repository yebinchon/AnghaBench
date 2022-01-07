; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }
%struct.nft_rhash = type { i32 }
%struct.nft_rhash_cmp_arg = type { i32*, %struct.nft_set*, i32 }
%struct.nft_rhash_elem = type { i32 }

@NFT_GENMASK_ANY = common dso_local global i32 0, align 4
@nft_rhash_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set*, i32*)* @nft_rhash_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rhash_delete(%struct.nft_set* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nft_set*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.nft_rhash*, align 8
  %7 = alloca %struct.nft_rhash_cmp_arg, align 8
  %8 = alloca %struct.nft_rhash_elem*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  %10 = call %struct.nft_rhash* @nft_set_priv(%struct.nft_set* %9)
  store %struct.nft_rhash* %10, %struct.nft_rhash** %6, align 8
  %11 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %7, i32 0, i32 0
  %12 = load i32*, i32** %5, align 8
  store i32* %12, i32** %11, align 8
  %13 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %7, i32 0, i32 1
  %14 = load %struct.nft_set*, %struct.nft_set** %4, align 8
  store %struct.nft_set* %14, %struct.nft_set** %13, align 8
  %15 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %7, i32 0, i32 2
  %16 = load i32, i32* @NFT_GENMASK_ANY, align 4
  store i32 %16, i32* %15, align 8
  %17 = load %struct.nft_rhash*, %struct.nft_rhash** %6, align 8
  %18 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %17, i32 0, i32 0
  %19 = load i32, i32* @nft_rhash_params, align 4
  %20 = call %struct.nft_rhash_elem* @rhashtable_lookup(i32* %18, %struct.nft_rhash_cmp_arg* %7, i32 %19)
  store %struct.nft_rhash_elem* %20, %struct.nft_rhash_elem** %8, align 8
  %21 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %22 = icmp eq %struct.nft_rhash_elem* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.nft_rhash*, %struct.nft_rhash** %6, align 8
  %26 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %25, i32 0, i32 0
  %27 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %8, align 8
  %28 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %27, i32 0, i32 0
  %29 = load i32, i32* @nft_rhash_params, align 4
  %30 = call i64 @rhashtable_remove_fast(i32* %26, i32* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %24, %23
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.nft_rhash* @nft_set_priv(%struct.nft_set*) #1

declare dso_local %struct.nft_rhash_elem* @rhashtable_lookup(i32*, %struct.nft_rhash_cmp_arg*, i32) #1

declare dso_local i64 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
