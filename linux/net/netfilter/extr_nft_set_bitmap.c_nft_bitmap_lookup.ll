; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nft_set = type { i32 }
%struct.nft_set_ext = type { i32 }
%struct.nft_bitmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.nft_set*, i32*, %struct.nft_set_ext**)* @nft_bitmap_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_bitmap_lookup(%struct.net* %0, %struct.nft_set* %1, i32* %2, %struct.nft_set_ext** %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.nft_set*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nft_set_ext**, align 8
  %9 = alloca %struct.nft_bitmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.nft_set* %1, %struct.nft_set** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.nft_set_ext** %3, %struct.nft_set_ext*** %8, align 8
  %13 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %14 = call %struct.nft_bitmap* @nft_set_priv(%struct.nft_set* %13)
  store %struct.nft_bitmap* %14, %struct.nft_bitmap** %9, align 8
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = call i32 @nft_genmask_cur(%struct.net* %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.nft_set*, %struct.nft_set** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @nft_bitmap_location(%struct.nft_set* %17, i32* %18, i32* %11, i32* %12)
  %20 = load %struct.nft_bitmap*, %struct.nft_bitmap** %9, align 8
  %21 = getelementptr inbounds %struct.nft_bitmap, %struct.nft_bitmap* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @nft_bitmap_active(i32 %22, i32 %23, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local %struct.nft_bitmap* @nft_set_priv(%struct.nft_set*) #1

declare dso_local i32 @nft_genmask_cur(%struct.net*) #1

declare dso_local i32 @nft_bitmap_location(%struct.nft_set*, i32*, i32*, i32*) #1

declare dso_local i32 @nft_bitmap_active(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
