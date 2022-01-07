; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_compress_addr_64.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_compress_addr_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32* }
%struct.TYPE_2__ = type { i32 }

@LOWPAN_IPHC_DAM_01 = common dso_local global i64 0, align 8
@LOWPAN_IPHC_DAM_11 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"address compression 0 bits\0A\00", align 1
@LOWPAN_IPHC_DAM_10 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Compressed ipv6 addr is (16 bits)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Compressed ipv6 addr is (64 bits)\00", align 1
@lowpan_iphc_dam_to_sam_value = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64**, %struct.net_device*, %struct.in6_addr*, i8*, i32)* @lowpan_compress_addr_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lowpan_compress_addr_64(i64** %0, %struct.net_device* %1, %struct.in6_addr* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64**, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i64** %0, i64*** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* @LOWPAN_IPHC_DAM_01, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.TYPE_2__* @lowpan_dev(%struct.net_device* %14)
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %27 [
    i32 128, label %18
  ]

18:                                               ; preds = %5
  %19 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @lowpan_iphc_compress_802154_lladdr(%struct.in6_addr* %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i64, i64* @LOWPAN_IPHC_DAM_11, align 8
  store i64 %24, i64* %12, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

26:                                               ; preds = %18
  br label %37

27:                                               ; preds = %5
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = call i32 @lowpan_iphc_addr_equal(%struct.net_device* %28, i32* null, %struct.in6_addr* %29, i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* @LOWPAN_IPHC_DAM_11, align 8
  store i64 %34, i64* %12, align 8
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %26
  %38 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %39 = call i64 @lowpan_is_iid_16_bit_compressable(%struct.in6_addr* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i64**, i64*** %7, align 8
  %43 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %44 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 7
  %47 = call i32 @lowpan_push_hc_data(i64** %42, i32* %46, i32 2)
  %48 = load i64, i64* @LOWPAN_IPHC_DAM_10, align 8
  store i64 %48, i64* %12, align 8
  %49 = load i64**, i64*** %7, align 8
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 -2
  %52 = call i32 @raw_dump_inline(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64* %51, i32 2)
  br label %64

53:                                               ; preds = %37
  %54 = load i64**, i64*** %7, align 8
  %55 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8
  %56 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  %59 = call i32 @lowpan_push_hc_data(i64** %54, i32* %58, i32 8)
  %60 = load i64**, i64*** %7, align 8
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 -8
  %63 = call i32 @raw_dump_inline(i32* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64* %62, i32 8)
  br label %64

64:                                               ; preds = %53, %41, %33, %23
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i64*, i64** @lowpan_iphc_dam_to_sam_value, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %6, align 8
  br label %74

72:                                               ; preds = %64
  %73 = load i64, i64* %12, align 8
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local %struct.TYPE_2__* @lowpan_dev(%struct.net_device*) #1

declare dso_local i32 @lowpan_iphc_compress_802154_lladdr(%struct.in6_addr*, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @lowpan_iphc_addr_equal(%struct.net_device*, i32*, %struct.in6_addr*, i8*) #1

declare dso_local i64 @lowpan_is_iid_16_bit_compressable(%struct.in6_addr*) #1

declare dso_local i32 @lowpan_push_hc_data(i64**, i32*, i32) #1

declare dso_local i32 @raw_dump_inline(i32*, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
