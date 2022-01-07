; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_setelem_parse_flags.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_tables_api.c_nft_setelem_parse_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nft_set = type { i32 }
%struct.nlattr = type { i32 }

@NFT_SET_ELEM_INTERVAL_END = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFT_SET_INTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nft_set*, %struct.nlattr*, i32*)* @nft_setelem_parse_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nft_setelem_parse_flags(%struct.nft_set* %0, %struct.nlattr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nft_set*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca i32*, align 8
  store %struct.nft_set* %0, %struct.nft_set** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %9 = icmp eq %struct.nlattr* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %42

11:                                               ; preds = %3
  %12 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %13 = call i32 @nla_get_be32(%struct.nlattr* %12)
  %14 = call i32 @ntohl(i32 %13)
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NFT_SET_ELEM_INTERVAL_END, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %11
  %26 = load %struct.nft_set*, %struct.nft_set** %5, align 8
  %27 = getelementptr inbounds %struct.nft_set, %struct.nft_set* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NFT_SET_INTERVAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NFT_SET_ELEM_INTERVAL_END, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %42

41:                                               ; preds = %32, %25
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %22, %10
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
