; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_uncompress_multicast_daddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_uncompress_multicast_daddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.in6_addr = type { i32* }

@.str = private unnamed_addr constant [35 x i8] c"DAM value has a wrong value: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to fetch skb data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Reconstructed ipv6 multicast addr is\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.in6_addr*, i32)* @lowpan_uncompress_multicast_daddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_uncompress_multicast_daddr(%struct.sk_buff* %0, %struct.in6_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  switch i32 %9, label %69 [
    i32 131, label %10
    i32 130, label %16
    i32 129, label %35
    i32 128, label %54
  ]

10:                                               ; preds = %3
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %13 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %11, i32* %14, i32 16)
  store i32 %15, i32* %8, align 4
  br label %74

16:                                               ; preds = %3
  %17 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %18 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 255, i32* %20, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %23 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %21, i32* %25, i32 1)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 11
  %32 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %27, i32* %31, i32 5)
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %74

35:                                               ; preds = %3
  %36 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 255, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %40, i32* %44, i32 1)
  store i32 %45, i32* %8, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %48 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 13
  %51 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %46, i32* %50, i32 3)
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %74

54:                                               ; preds = %3
  %55 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %56 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 255, i32* %58, align 4
  %59 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %60 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 2, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %64 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %65 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 15
  %68 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %63, i32* %67, i32 1)
  store i32 %68, i32* %8, align 4
  br label %74

69:                                               ; preds = %3
  %70 = load i32, i32* %7, align 4
  %71 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %86

74:                                               ; preds = %54, %35, %16, %10
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %74
  %82 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %83 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @raw_dump_inline(i32* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %84, i32 16)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %77, %69
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @lowpan_fetch_skb(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @raw_dump_inline(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
