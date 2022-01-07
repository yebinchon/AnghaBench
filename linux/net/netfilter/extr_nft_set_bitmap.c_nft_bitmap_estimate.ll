; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_estimate.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_estimate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set_desc = type { i32 }
%struct.nft_set_estimate = type { i8*, i8*, i32 }

@NFT_SET_CLASS_O_1 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set_desc*, i32, %struct.nft_set_estimate*)* @nft_bitmap_estimate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_bitmap_estimate(%struct.nft_set_desc* %0, i32 %1, %struct.nft_set_estimate* %2) #0 {
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
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

13:                                               ; preds = %3
  %14 = load %struct.nft_set_desc*, %struct.nft_set_desc** %5, align 8
  %15 = getelementptr inbounds %struct.nft_set_desc, %struct.nft_set_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nft_bitmap_total_size(i32 %16)
  %18 = load %struct.nft_set_estimate*, %struct.nft_set_estimate** %7, align 8
  %19 = getelementptr inbounds %struct.nft_set_estimate, %struct.nft_set_estimate* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @NFT_SET_CLASS_O_1, align 8
  %21 = load %struct.nft_set_estimate*, %struct.nft_set_estimate** %7, align 8
  %22 = getelementptr inbounds %struct.nft_set_estimate, %struct.nft_set_estimate* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @NFT_SET_CLASS_O_1, align 8
  %24 = load %struct.nft_set_estimate*, %struct.nft_set_estimate** %7, align 8
  %25 = getelementptr inbounds %struct.nft_set_estimate, %struct.nft_set_estimate* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  store i32 1, i32* %4, align 4
  br label %26

26:                                               ; preds = %13, %12
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @nft_bitmap_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
