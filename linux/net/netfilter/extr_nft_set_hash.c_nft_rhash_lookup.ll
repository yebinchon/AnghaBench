; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_rhash = type { i32 }
%struct.nft_rhash_elem = type { %struct.nft_set_ext }
%struct.nft_rhash_cmp_arg = type { i32*, %struct.nft_set*, i32 }

@nft_rhash_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nft_set*, i32*, %struct.nft_set_ext**)* @nft_rhash_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rhash_lookup(%struct.net* %0, %struct.nft_set* %1, i32* %2, %struct.nft_set_ext** %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nft_set_ext**, align 8
  %9 = alloca %struct.nft_rhash*, align 8
  %10 = alloca %struct.nft_rhash_elem*, align 8
  %11 = alloca %struct.nft_rhash_cmp_arg, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.nft_set_ext** %3, %struct.nft_set_ext*** %8, align 8
  %12 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %13 = call %struct.nft_rhash* @nft_set_priv(%struct.nft_set* %12)
  store %struct.nft_rhash* %13, %struct.nft_rhash** %9, align 8
  %14 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %11, i32 0, i32 0
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %14, align 8
  %16 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %11, i32 0, i32 1
  %17 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  store %struct.nft_set* %17, %struct.nft_set** %16, align 8
  %18 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %11, i32 0, i32 2
  %19 = load %struct.net*, %struct.net** %5, align 8
  %20 = call i32 @nft_genmask_cur(%struct.net* %19)
  store i32 %20, i32* %18, align 8
  %21 = load %struct.nft_rhash*, %struct.nft_rhash** %9, align 8
  %22 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %21, i32 0, i32 0
  %23 = load i32, i32* @nft_rhash_params, align 4
  %24 = call %struct.nft_rhash_elem* @rhashtable_lookup(i32* %22, %struct.nft_rhash_cmp_arg* %11, i32 %23)
  store %struct.nft_rhash_elem* %24, %struct.nft_rhash_elem** %10, align 8
  %25 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %10, align 8
  %26 = icmp ne %struct.nft_rhash_elem* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %10, align 8
  %29 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %28, i32 0, i32 0
  %30 = load %struct.nft_set_ext**, %struct.nft_set_ext*** %8, align 8
  store %struct.nft_set_ext* %29, %struct.nft_set_ext** %30, align 8
  br label %31

31:                                               ; preds = %27, %4
  %32 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %10, align 8
  %33 = icmp ne %struct.nft_rhash_elem* %32, null
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local %struct.nft_rhash* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local %struct.nft_rhash_elem* @rhashtable_lookup(i32*, %struct.nft_rhash_cmp_arg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
