; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_ctx_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_ctx_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.lowpan_iphc_ctx = type { i32, i32 }
%struct.in6_addr = type { i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Invalid sam value: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to fetch skb data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Reconstructed context based ipv6 src addr is\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.lowpan_iphc_ctx*, %struct.in6_addr*, i32, i8*)* @lowpan_iphc_uncompress_ctx_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowpan_iphc_uncompress_ctx_addr(%struct.sk_buff* %0, %struct.net_device* %1, %struct.lowpan_iphc_ctx* %2, %struct.in6_addr* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.lowpan_iphc_ctx*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store %struct.lowpan_iphc_ctx* %2, %struct.lowpan_iphc_ctx** %10, align 8
  store %struct.in6_addr* %3, %struct.in6_addr** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %12, align 4
  switch i32 %15, label %75 [
    i32 135, label %16
    i32 131, label %17
    i32 134, label %17
    i32 130, label %31
    i32 133, label %31
    i32 129, label %53
    i32 132, label %53
  ]

16:                                               ; preds = %6
  store i32 0, i32* %14, align 4
  br label %80

17:                                               ; preds = %6, %6
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %20 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 8
  %23 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %18, i32* %22, i32 8)
  store i32 %23, i32* %14, align 4
  %24 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %25 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %25, i32 0, i32 1
  %27 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ipv6_addr_prefix_copy(%struct.in6_addr* %24, i32* %26, i32 %29)
  br label %80

31:                                               ; preds = %6, %6
  %32 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %33 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 11
  store i32 255, i32* %35, align 4
  %36 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %37 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 12
  store i32 254, i32* %39, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 14
  %45 = call i32 @lowpan_fetch_skb(%struct.sk_buff* %40, i32* %44, i32 2)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %47 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %47, i32 0, i32 1
  %49 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %10, align 8
  %50 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ipv6_addr_prefix_copy(%struct.in6_addr* %46, i32* %48, i32 %51)
  br label %80

53:                                               ; preds = %6, %6
  store i32 0, i32* %14, align 4
  %54 = load %struct.net_device*, %struct.net_device** %9, align 8
  %55 = call %struct.TYPE_2__* @lowpan_dev(%struct.net_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %62 [
    i32 128, label %58
  ]

58:                                               ; preds = %53
  %59 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = call i32 @lowpan_iphc_uncompress_802154_lladdr(%struct.in6_addr* %59, i8* %60)
  br label %67

62:                                               ; preds = %53
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @lowpan_iphc_uncompress_lladdr(%struct.net_device* %63, %struct.in6_addr* %64, i8* %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %69 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %10, align 8
  %70 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %69, i32 0, i32 1
  %71 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %10, align 8
  %72 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ipv6_addr_prefix_copy(%struct.in6_addr* %68, i32* %70, i32 %73)
  br label %80

75:                                               ; preds = %6
  %76 = load i32, i32* %12, align 4
  %77 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %7, align 4
  br label %92

80:                                               ; preds = %67, %31, %17, %16
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %7, align 4
  br label %92

87:                                               ; preds = %80
  %88 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8
  %89 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @raw_dump_inline(i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32* %90, i32 16)
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %83, %75
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @lowpan_fetch_skb(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @ipv6_addr_prefix_copy(%struct.in6_addr*, i32*, i32) #1

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
