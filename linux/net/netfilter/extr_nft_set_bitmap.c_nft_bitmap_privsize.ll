; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_privsize.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nft_set_bitmap.c_nft_bitmap_privsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nft_set_desc = type { i32 }

@NFTA_SET_KEY_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nft_set_desc*)* @nft_bitmap_privsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_bitmap_privsize(%struct.nlattr** %0, %struct.nft_set_desc* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.nft_set_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.nft_set_desc* %1, %struct.nft_set_desc** %4, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %7 = load i64, i64* @NFTA_SET_KEY_LEN, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = call i32 @nla_get_be32(%struct.nlattr* %9)
  %11 = call i32 @ntohl(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @nft_bitmap_total_size(i32 %12)
  ret i32 %13
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local i32 @nft_bitmap_total_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
