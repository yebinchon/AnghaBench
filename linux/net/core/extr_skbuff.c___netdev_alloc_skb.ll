; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___netdev_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c___netdev_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.page_frag_cache = type { i32 }

@NET_SKB_PAD = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@__GFP_DIRECT_RECLAIM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@SKB_ALLOC_RX = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@__GFP_MEMALLOC = common dso_local global i32 0, align 4
@netdev_alloc_cache = common dso_local global i32 0, align 4
@napi_alloc_cache = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @__netdev_alloc_skb(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.page_frag_cache*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @NET_SKB_PAD, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @SKB_WITH_OVERHEAD(i32 %18)
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @__GFP_DIRECT_RECLAIM, align 4
  %24 = load i32, i32* @GFP_DMA, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21, %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SKB_ALLOC_RX, align 4
  %32 = load i32, i32* @NUMA_NO_NODE, align 4
  %33 = call %struct.sk_buff* @__alloc_skb(i32 %29, i32 %30, i32 %31, i32 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %9, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %113

37:                                               ; preds = %28
  br label %106

38:                                               ; preds = %21
  %39 = call i32 @SKB_DATA_ALIGN(i32 4)
  %40 = load i32, i32* %6, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @SKB_DATA_ALIGN(i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = call i64 (...) @sk_memalloc_socks()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* @__GFP_MEMALLOC, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = call i64 (...) @in_irq()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call i64 (...) @irqs_disabled()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53, %50
  %57 = call %struct.page_frag_cache* @this_cpu_ptr(i32* @netdev_alloc_cache)
  store %struct.page_frag_cache* %57, %struct.page_frag_cache** %8, align 8
  %58 = load %struct.page_frag_cache*, %struct.page_frag_cache** %8, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @page_frag_alloc(%struct.page_frag_cache* %58, i32 %59, i32 %60)
  store i8* %61, i8** %11, align 8
  %62 = load %struct.page_frag_cache*, %struct.page_frag_cache** %8, align 8
  %63 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  br label %76

65:                                               ; preds = %53
  %66 = call i32 (...) @local_bh_disable()
  %67 = call %struct.page_frag_cache* @this_cpu_ptr(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @napi_alloc_cache, i32 0, i32 0))
  store %struct.page_frag_cache* %67, %struct.page_frag_cache** %8, align 8
  %68 = load %struct.page_frag_cache*, %struct.page_frag_cache** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @page_frag_alloc(%struct.page_frag_cache* %68, i32 %69, i32 %70)
  store i8* %71, i8** %11, align 8
  %72 = load %struct.page_frag_cache*, %struct.page_frag_cache** %8, align 8
  %73 = getelementptr inbounds %struct.page_frag_cache, %struct.page_frag_cache* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %10, align 4
  %75 = call i32 (...) @local_bh_enable()
  br label %76

76:                                               ; preds = %65, %56
  %77 = load i8*, i8** %11, align 8
  %78 = icmp ne i8* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %115

84:                                               ; preds = %76
  %85 = load i8*, i8** %11, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call %struct.sk_buff* @__build_skb(i8* %85, i32 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %9, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = icmp ne %struct.sk_buff* %88, null
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %84
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @skb_free_frag(i8* %95)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %115

97:                                               ; preds = %84
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %37
  %107 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %108 = load i64, i64* @NET_SKB_PAD, align 8
  %109 = call i32 @skb_reserve(%struct.sk_buff* %107, i64 %108)
  %110 = load %struct.net_device*, %struct.net_device** %5, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 2
  store %struct.net_device* %110, %struct.net_device** %112, align 8
  br label %113

113:                                              ; preds = %106, %36
  %114 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %114, %struct.sk_buff** %4, align 8
  br label %115

115:                                              ; preds = %113, %94, %83
  %116 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %116
}

declare dso_local i32 @SKB_WITH_OVERHEAD(i32) #1

declare dso_local %struct.sk_buff* @__alloc_skb(i32, i32, i32, i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i64 @sk_memalloc_socks(...) #1

declare dso_local i64 @in_irq(...) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local %struct.page_frag_cache* @this_cpu_ptr(i32*) #1

declare dso_local i8* @page_frag_alloc(%struct.page_frag_cache*, i32, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

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
