; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Invalid address mode value: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to fetch skb data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Reconstructed ipv6 addr is\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.in6_addr*, i32, i8*)* @lowpan_iphc_uncompress_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_iphc_uncompress_addr(%struct.sk_buff* %0, %struct.net_device* %1, %struct.in6_addr* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %13 = load i32, i32* %10, align 4
  switch i32 %13, label %73 [
    i32 135, label %14
    i32 131, label %20
    i32 134, label %20
    i32 130, label %35
    i32 133, label %35
    i32 129, label %58
    i32 132, label %58
  ]

14:                                               ; preds = %5
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %16 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %15, i32* %18, i32 16)
  store i32 %19, i32* %12, align 4
  br label %78

20:                                               ; preds = %5, %5
  %21 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %22 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 254, i32* %24, align 4
  %25 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %26 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 128, i32* %28, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %31 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 8
  %34 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %29, i32* %33, i32 8)
  store i32 %34, i32* %12, align 4
  br label %78

35:                                               ; preds = %5, %5
  %36 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 254, i32* %39, align 4
  %40 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 128, i32* %43, align 4
  %44 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 11
  store i32 255, i32* %47, align 4
  %48 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %49 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  store i32 254, i32* %51, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %54 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 14
  %57 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %52, i32* %56, i32 2)
  store i32 %57, i32* %12, align 4
  br label %78

58:                                               ; preds = %5, %5
  store i32 0, i32* %12, align 4
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = call %struct.TYPE_2__* @lowpan_dev(%struct.net_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %67 [
    i32 128, label %63
  ]

63:                                               ; preds = %58
  %64 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @lowpan_iphc_uncompress_802154_lladdr(%struct.in6_addr* %64, i8* %65)
  br label %72

67:                                               ; preds = %58
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @lowpan_iphc_uncompress_lladdr(%struct.net_device* %68, %struct.in6_addr* %69, i8* %70)
  br label %72

72:                                               ; preds = %67, %63
  br label %78

73:                                               ; preds = %5
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %6, align 4
  br label %90

78:                                               ; preds = %72, %35, %20, %14
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %90

85:                                               ; preds = %78
  %86 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %87 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @raw_dump_inline(i32* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32* %88, i32 16)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %81, %73
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @lowpan_fetch_skb(%struct.sk_buff*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @lowpan_dev(%struct.net_device*) #1

declare dso_local i32 @lowpan_iphc_uncompress_802154_lladdr(%struct.in6_addr*, i8*) #1

declare dso_local i32 @lowpan_iphc_uncompress_lladdr(%struct.net_device*, %struct.in6_addr*, i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @raw_dump_inline(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
