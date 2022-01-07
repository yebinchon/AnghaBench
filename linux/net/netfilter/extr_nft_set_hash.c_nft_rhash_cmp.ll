; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_hash.c_nft_rhash_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rhashtable_compare_arg = type { %struct.nft_rhash_cmp_arg* }
%struct.nft_rhash_cmp_arg = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nft_rhash_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rhashtable_compare_arg*, i8*)* @nft_rhash_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_rhash_cmp(%struct.rhashtable_compare_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rhashtable_compare_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nft_rhash_cmp_arg*, align 8
  %7 = alloca %struct.nft_rhash_elem*, align 8
  store %struct.rhashtable_compare_arg* %0, %struct.rhashtable_compare_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.rhashtable_compare_arg*, %struct.rhashtable_compare_arg** %4, align 8
  %9 = getelementptr inbounds %struct.rhashtable_compare_arg, %struct.rhashtable_compare_arg* %8, i32 0, i32 0
  %10 = load %struct.nft_rhash_cmp_arg*, %struct.nft_rhash_cmp_arg** %9, align 8
  store %struct.nft_rhash_cmp_arg* %10, %struct.nft_rhash_cmp_arg** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.nft_rhash_elem*
  store %struct.nft_rhash_elem* %12, %struct.nft_rhash_elem** %7, align 8
  %13 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %7, align 8
  %14 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %13, i32 0, i32 0
  %15 = call i32 @nft_set_ext_key(i32* %14)
  %16 = load %struct.nft_rhash_cmp_arg*, %struct.nft_rhash_cmp_arg** %6, align 8
  %17 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.nft_rhash_cmp_arg*, %struct.nft_rhash_cmp_arg** %6, align 8
  %20 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @memcmp(i32 %15, i32 %18, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

27:                                               ; preds = %2
  %28 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %7, align 8
  %29 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %28, i32 0, i32 0
  %30 = call i64 @nft_set_elem_expired(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %43

33:                                               ; preds = %27
  %34 = load %struct.nft_rhash_elem*, %struct.nft_rhash_elem** %7, align 8
  %35 = getelementptr inbounds %struct.nft_rhash_elem, %struct.nft_rhash_elem* %34, i32 0, i32 0
  %36 = load %struct.nft_rhash_cmp_arg*, %struct.nft_rhash_cmp_arg** %6, align 8
  %37 = getelementptr inbounds %struct.nft_rhash_cmp_arg, %struct.nft_rhash_cmp_arg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @nft_set_elem_active(i32* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %32, %26
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @nft_set_ext_key(i32*) #1

declare dso_local i64 @nft_set_elem_expired(i32*) #1

declare dso_local i32 @nft_set_elem_active(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
