; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nft_rhash = type { i32 }
%struct.nft_rhash_elem = type opaque
%struct.nft_rhash_cmp_arg = type { i32, %struct.nft_set*, i32 }

@nft_rhash_params = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*, i32)* @nft_rhash_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nft_rhash_get(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.nft_set*, align 8
  %8 = alloca %struct.nft_set_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nft_rhash*, align 8
  %11 = alloca %struct.nft_rhash_elem*, align 8
  %12 = alloca %struct.nft_rhash_cmp_arg, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.nft_set* %1, %struct.nft_set** %7, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  %14 = call %struct.nft_rhash* @nft_set_priv(%struct.nft_set* %13)
  store %struct.nft_rhash* %14, %struct.nft_rhash** %10, align 8
  %15 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %12, i32 0, i32 0
  %16 = load %struct.nft_set_elem*, %struct.nft_set_elem** %8, align 8
  %17 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %15, align 8
  %21 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %12, i32 0, i32 1
  %22 = load %struct.nft_set*, %struct.nft_set** %7, align 8
  store %struct.nft_set* %22, %struct.nft_set** %21, align 8
  %23 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %12, i32 0, i32 2
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = call i32 @nft_genmask_cur(%struct.net* %24)
  store i32 %25, i32* %23, align 8
  %26 = load %struct.nft_rhash*, %struct.nft_rhash** %10, align 8
  %27 = getelementptr inbounds %struct.nft_rhash, %struct.nft_rhash* %26, i32 0, i32 0
  %28 = load i32, i32* @nft_rhash_params, align 4
  %29 = call i8* @rhashtable_lookup(i32* %27, %struct.nft_rhash_cmp_arg* %12, i32 %28)
  %30 = bitcast i8* %29 to %struct.nft_rhash_elem*
  store %struct.nft_rhash_elem* %30, %struct.nft_rhash_elem** %11, align 8
  %31 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %11, align 8
  %32 = icmp ne %struct.nft_rhash_elem* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %11, align 8
  %35 = bitcast %struct.nft_rhash_elem* %34 to i8*
  store i8* %35, i8** %5, align 8
  br label %40

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = call i8* @ERR_PTR(i32 %38)
  store i8* %39, i8** %5, align 8
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i8*, i8** %5, align 8
  ret i8* %41
}

declare dso_local %struct.nft_rhash* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i8* @rhashtable_lookup(i32*, %struct.nft_rhash_cmp_arg*, i32) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
