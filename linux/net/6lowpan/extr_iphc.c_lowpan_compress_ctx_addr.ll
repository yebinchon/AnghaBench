; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_compress_ctx_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_compress_ctx_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32* }
%struct.lowpan_iphc_ctx = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LOWPAN_IPHC_DAM_11 = common dso_local global i64 0, align 8
@LOWPAN_IPHC_DAM_10 = common dso_local global i64 0, align 8
@LOWPAN_IPHC_DAM_01 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"context found but no address mode matched\0A\00", align 1
@LOWPAN_IPHC_DAM_00 = common dso_local global i64 0, align 8
@lowpan_iphc_dam_to_sam_value = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64**, %struct.net_device*, %struct.in6_addr*, %struct.lowpan_iphc_ctx*, i8*, i32)* @lowpan_compress_ctx_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lowpan_compress_ctx_addr(i64** %0, %struct.net_device* %1, %struct.in6_addr* %2, %struct.lowpan_iphc_ctx* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64**, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.in6_addr*, align 8
  %11 = alloca %struct.lowpan_iphc_ctx*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.in6_addr, align 8
  %15 = alloca i64, align 8
  store i64** %0, i64*** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %10, align 8
  store %struct.lowpan_iphc_ctx* %3, %struct.lowpan_iphc_ctx** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = bitcast %struct.in6_addr* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 8, i1 false)
  %17 = load %struct.net_device*, %struct.net_device** %9, align 8
  %18 = call %struct.TYPE_2__* @lowpan_dev(%struct.net_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %30 [
    i32 128, label %21
  ]

21:                                               ; preds = %6
  %22 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %23 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @lowpan_iphc_compress_ctx_802154_lladdr(%struct.in6_addr* %22, %struct.lowpan_iphc_ctx* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i64, i64* @LOWPAN_IPHC_DAM_11, align 8
  store i64 %28, i64* %15, align 8
  br label %103

29:                                               ; preds = %21
  br label %40

30:                                               ; preds = %6
  %31 = load %struct.net_device*, %struct.net_device** %9, align 8
  %32 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %11, align 8
  %33 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @lowpan_iphc_addr_equal(%struct.net_device* %31, %struct.lowpan_iphc_ctx* %32, %struct.in6_addr* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i64, i64* @LOWPAN_IPHC_DAM_11, align 8
  store i64 %38, i64* %15, align 8
  br label %103

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %29
  %41 = call i32 @memset(%struct.in6_addr* %14, i32 0, i32 8)
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %14, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 11
  store i32 255, i32* %44, align 4
  %45 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %14, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 12
  store i32 254, i32* %47, align 4
  %48 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %14, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 14
  %51 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %52 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 14
  %55 = call i32 @memcpy(i32* %50, i32* %54, i32 2)
  %56 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %11, align 8
  %57 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %56, i32 0, i32 1
  %58 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %11, align 8
  %59 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ipv6_addr_prefix_copy(%struct.in6_addr* %14, i32* %57, i32 %60)
  %62 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %63 = call i64 @ipv6_addr_equal(%struct.in6_addr* %14, %struct.in6_addr* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %40
  %66 = load i64**, i64*** %8, align 8
  %67 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %68 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 14
  %71 = call i32 @lowpan_push_hc_data(i64** %66, i32* %70, i32 2)
  %72 = load i64, i64* @LOWPAN_IPHC_DAM_10, align 8
  store i64 %72, i64* %15, align 8
  br label %103

73:                                               ; preds = %40
  %74 = call i32 @memset(%struct.in6_addr* %14, i32 0, i32 8)
  %75 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %14, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 8
  %78 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %79 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 8
  %82 = call i32 @memcpy(i32* %77, i32* %81, i32 8)
  %83 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %11, align 8
  %84 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %83, i32 0, i32 1
  %85 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %11, align 8
  %86 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ipv6_addr_prefix_copy(%struct.in6_addr* %14, i32* %84, i32 %87)
  %89 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %90 = call i64 @ipv6_addr_equal(%struct.in6_addr* %14, %struct.in6_addr* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %73
  %93 = load i64**, i64*** %8, align 8
  %94 = load %struct.in6_addr*, %struct.in6_addr** %10, align 8
  %95 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = call i32 @lowpan_push_hc_data(i64** %93, i32* %97, i32 8)
  %99 = load i64, i64* @LOWPAN_IPHC_DAM_01, align 8
  store i64 %99, i64* %15, align 8
  br label %103

100:                                              ; preds = %73
  %101 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %102 = load i64, i64* @LOWPAN_IPHC_DAM_00, align 8
  store i64 %102, i64* %7, align 8
  br label %113

103:                                              ; preds = %92, %65, %37, %27
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i64*, i64** @lowpan_iphc_dam_to_sam_value, align 8
  %108 = load i64, i64* %15, align 8
  %109 = getelementptr inbounds i64, i64* %107, i64 %108
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %7, align 8
  br label %113

111:                                              ; preds = %103
  %112 = load i64, i64* %15, align 8
  store i64 %112, i64* %7, align 8
  br label %113

113:                                              ; preds = %111, %106, %100
  %114 = load i64, i64* %7, align 8
  ret i64 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_2__* @lowpan_dev(%struct.net_device*) #2

declare dso_local i32 @lowpan_iphc_compress_ctx_802154_lladdr(%struct.in6_addr*, %struct.lowpan_iphc_ctx*, i8*) #2

declare dso_local i32 @lowpan_iphc_addr_equal(%struct.net_device*, %struct.lowpan_iphc_ctx*, %struct.in6_addr*, i8*) #2

declare dso_local i32 @memset(%struct.in6_addr*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @ipv6_addr_prefix_copy(%struct.in6_addr*, i32*, i32) #2

declare dso_local i64 @ipv6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #2

declare dso_local i32 @lowpan_push_hc_data(i64**, i32*, i32) #2

declare dso_local i32 @WARN_ONCE(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
