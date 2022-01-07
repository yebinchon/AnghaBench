; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_remove.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_elem = type { %struct.nft_bitmap_elem* }
%struct.nft_bitmap_elem = type { i32, i32 }
%struct.nft_bitmap = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*, %struct.nft_set*, %struct.nft_set_elem*)* @nft_bitmap_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nft_bitmap_remove(%struct.net* %0, %struct.nft_set* %1, %struct.nft_set_elem* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nft_set_elem*, align 8
  %7 = alloca %struct.nft_bitmap*, align 8
  %8 = alloca %struct.nft_bitmap_elem*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nft_set* %1, %struct.nft_set** %5, align 8
  store %struct.nft_set_elem* %2, %struct.nft_set_elem** %6, align 8
  %12 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %13 = call %struct.nft_bitmap* @nft_set_priv(%struct.nft_set* %12)
  store %struct.nft_bitmap* %13, %struct.nft_bitmap** %7, align 8
  %14 = load %struct.nft_set_elem*, %struct.nft_set_elem** %6, align 8
  %15 = getelementptr inbounds %struct.nft_set_elem, %struct.nft_set_elem* %14, i32 0, i32 0
  %16 = load %struct.nft_bitmap_elem*, %struct.nft_bitmap_elem** %15, align 8
  store %struct.nft_bitmap_elem* %16, %struct.nft_bitmap_elem** %8, align 8
  %17 = load %struct.net*, %struct.net** %4, align 8
  %18 = call i64 @nft_genmask_next(%struct.net* %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %20 = load %struct.nft_bitmap_elem*, %struct.nft_bitmap_elem** %8, align 8
  %21 = getelementptr inbounds %struct.nft_bitmap_elem, %struct.nft_bitmap_elem* %20, i32 0, i32 1
  %22 = call i32 @nft_set_ext_key(i32* %21)
  %23 = call i32 @nft_bitmap_location(%struct.nft_set* %19, i32 %22, i64* %10, i64* %11)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %11, align 8
  %26 = shl i64 %24, %25
  %27 = xor i64 %26, -1
  %28 = load %struct.nft_bitmap*, %struct.nft_bitmap** %7, align 8
  %29 = getelementptr inbounds %struct.nft_bitmap, %struct.nft_bitmap* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds i64, i64* %30, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %33, %27
  store i64 %34, i64* %32, align 8
  %35 = load %struct.nft_bitmap_elem*, %struct.nft_bitmap_elem** %8, align 8
  %36 = getelementptr inbounds %struct.nft_bitmap_elem, %struct.nft_bitmap_elem* %35, i32 0, i32 0
  %37 = call i32 @list_del_rcu(i32* %36)
  ret void
}

declare dso_local %struct.nft_bitmap* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i64 @nft_genmask_next(%struct.net*) #1

declare dso_local i32 @nft_bitmap_location(%struct.nft_set*, i32, i64*, i64*) #1

declare dso_local i32 @nft_set_ext_key(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
