; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_ctx_get_by_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_ctx_get_by_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lowpan_iphc_ctx = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.lowpan_iphc_ctx* }

@LOWPAN_IPHC_CTX_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.lowpan_iphc_ctx* (%struct.net_device*, %struct.in6_addr*)* @lowpan_iphc_ctx_get_by_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.lowpan_iphc_ctx* @lowpan_iphc_ctx_get_by_addr(%struct.net_device* %0, %struct.in6_addr* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  %5 = alloca %struct.lowpan_iphc_ctx*, align 8
  %6 = alloca %struct.lowpan_iphc_ctx*, align 8
  %7 = alloca %struct.in6_addr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.TYPE_4__* @lowpan_dev(%struct.net_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %13, align 8
  store %struct.lowpan_iphc_ctx* %14, %struct.lowpan_iphc_ctx** %5, align 8
  store %struct.lowpan_iphc_ctx* null, %struct.lowpan_iphc_ctx** %6, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %93, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @LOWPAN_IPHC_CTX_TABLE_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %15
  %20 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %20, i64 %22
  %24 = call i32 @lowpan_iphc_ctx_is_active(%struct.lowpan_iphc_ctx* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %27, i64 %29
  %31 = call i32 @lowpan_iphc_ctx_is_compression(%struct.lowpan_iphc_ctx* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26, %19
  br label %93

34:                                               ; preds = %26
  %35 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8
  %36 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %36, i64 %38
  %40 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ipv6_addr_prefix(%struct.in6_addr* %7, %struct.in6_addr* %35, i32 %41)
  %43 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %43, i64 %45
  %47 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %48, 64
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  store i32 64, i32* %8, align 4
  br label %58

51:                                               ; preds = %34
  %52 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %52, i64 %54
  %56 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %51, %50
  %59 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %59, i64 %61
  %63 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %62, i32 0, i32 1
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @ipv6_prefix_equal(%struct.in6_addr* %7, i32* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %58
  %68 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %6, align 8
  %69 = icmp ne %struct.lowpan_iphc_ctx* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %71, i64 %73
  store %struct.lowpan_iphc_ctx* %74, %struct.lowpan_iphc_ctx** %6, align 8
  br label %93

75:                                               ; preds = %67
  %76 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %76, i64 %78
  %80 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %6, align 8
  %83 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.lowpan_iphc_ctx, %struct.lowpan_iphc_ctx* %87, i64 %89
  store %struct.lowpan_iphc_ctx* %90, %struct.lowpan_iphc_ctx** %6, align 8
  br label %91

91:                                               ; preds = %86, %75
  br label %92

92:                                               ; preds = %91, %58
  br label %93

93:                                               ; preds = %92, %70, %33
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %15

96:                                               ; preds = %15
  %97 = load %struct.lowpan_iphc_ctx*, %struct.lowpan_iphc_ctx** %6, align 8
  ret %struct.lowpan_iphc_ctx* %97
}

declare dso_local %struct.TYPE_4__* @lowpan_dev(%struct.net_device*) #1

declare dso_local i32 @lowpan_iphc_ctx_is_active(%struct.lowpan_iphc_ctx*) #1

declare dso_local i32 @lowpan_iphc_ctx_is_compression(%struct.lowpan_iphc_ctx*) #1

declare dso_local i32 @ipv6_addr_prefix(%struct.in6_addr*, %struct.in6_addr*, i32) #1

declare dso_local i64 @ipv6_prefix_equal(%struct.in6_addr*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
