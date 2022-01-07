; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___napi_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___napi_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32 }
%struct.napi_struct = type { i32 }
%struct.napi_alloc_cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@napi_alloc_cache = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@SKB_ALLOC_RX = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@__GFP_MEMALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__napi_alloc_skb(%struct.napi_struct* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.napi_alloc_cache*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = call %struct.napi_alloc_cache* @this_cpu_ptr(i32* @napi_alloc_cache)
  store %struct.napi_alloc_cache* %11, %struct.napi_alloc_cache** %8, align 8
  %12 = load i64, i64* @NET_SKB_PAD, align 8
  %13 = load i64, i64* @NET_IP_ALIGN, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %16, %14
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @SKB_WITH_OVERHEAD(i32 %20)
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %26 = load i32, i32* @GFP_DMA, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23, %3
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SKB_ALLOC_RX, align 4
  %34 = load i32, i32* @NUMA_NO_NODE, align 4
  %35 = call %struct.sk_buff* @__alloc_skb(i32 %31, i32 %32, i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %9, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %101

39:                                               ; preds = %30
  br label %90

40:                                               ; preds = %23
  %41 = call i32 @SKB_DATA_ALIGN(i32 4)
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @SKB_DATA_ALIGN(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = call i64 (...) @sk_memalloc_socks()
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @__GFP_MEMALLOC, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.napi_alloc_cache*, %struct.napi_alloc_cache** %8, align 8
  %54 = getelementptr inbounds %struct.napi_alloc_cache, %struct.napi_alloc_cache* %53, i32 0, i32 0
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i8* @page_frag_alloc(%struct.TYPE_2__* %54, i32 %55, i32 %56)
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp ne i8* %58, null
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %103

65:                                               ; preds = %52
  %66 = load i8*, i8** %10, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call %struct.sk_buff* @__build_skb(i8* %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @skb_free_frag(i8* %76)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %103

78:                                               ; preds = %65
  %79 = load %struct.napi_alloc_cache*, %struct.napi_alloc_cache** %8, align 8
  %80 = getelementptr inbounds %struct.napi_alloc_cache, %struct.napi_alloc_cache* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %78
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %87, %39
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = load i64, i64* @NET_SKB_PAD, align 8
  %93 = load i64, i64* @NET_IP_ALIGN, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @skb_reserve(%struct.sk_buff* %91, i64 %94)
  %96 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %97 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  br label %101

101:                                              ; preds = %90, %38
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %102, %struct.sk_buff** %4, align 8
  br label %103

103:                                              ; preds = %101, %75, %64
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %104
}

declare dso_local %struct.napi_alloc_cache* @this_cpu_ptr(i32*) #1

declare dso_local i32 @SKB_WITH_OVERHEAD(i32) #1

declare dso_local %struct.sk_buff* @__alloc_skb(i32, i32, i32, i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i64 @sk_memalloc_socks(...) #1

declare dso_local i8* @page_frag_alloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @__build_skb(i8*, i32) #1

declare dso_local i32 @skb_free_frag(i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
