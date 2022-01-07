; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c__kfree_skb_defer.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c__kfree_skb_defer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.napi_alloc_cache = type { i64, %struct.sk_buff** }

@napi_alloc_cache = common dso_local global i32 0, align 4
@NAPI_SKB_CACHE_SIZE = common dso_local global i64 0, align 8
@skbuff_head_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @_kfree_skb_defer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_kfree_skb_defer(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.napi_alloc_cache*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = call %struct.napi_alloc_cache* @this_cpu_ptr(i32* @napi_alloc_cache)
  store %struct.napi_alloc_cache* %4, %struct.napi_alloc_cache** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %6 = call i32 @skb_release_all(%struct.sk_buff* %5)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %8 = load %struct.napi_alloc_cache*, %struct.napi_alloc_cache** %3, align 8
  %9 = getelementptr inbounds %struct.napi_alloc_cache, %struct.napi_alloc_cache* %8, i32 0, i32 1
  %10 = load %struct.sk_buff**, %struct.sk_buff*** %9, align 8
  %11 = load %struct.napi_alloc_cache*, %struct.napi_alloc_cache** %3, align 8
  %12 = getelementptr inbounds %struct.napi_alloc_cache, %struct.napi_alloc_cache* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %10, i64 %13
  store %struct.sk_buff* %7, %struct.sk_buff** %15, align 8
  %16 = load %struct.napi_alloc_cache*, %struct.napi_alloc_cache** %3, align 8
  %17 = getelementptr inbounds %struct.napi_alloc_cache, %struct.napi_alloc_cache* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NAPI_SKB_CACHE_SIZE, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load i32, i32* @skbuff_head_cache, align 4
  %26 = load i64, i64* @NAPI_SKB_CACHE_SIZE, align 8
  %27 = load %struct.napi_alloc_cache*, %struct.napi_alloc_cache** %3, align 8
  %28 = getelementptr inbounds %struct.napi_alloc_cache, %struct.napi_alloc_cache* %27, i32 0, i32 1
  %29 = load %struct.sk_buff**, %struct.sk_buff*** %28, align 8
  %30 = call i32 @kmem_cache_free_bulk(i32 %25, i64 %26, %struct.sk_buff** %29)
  %31 = load %struct.napi_alloc_cache*, %struct.napi_alloc_cache** %3, align 8
  %32 = getelementptr inbounds %struct.napi_alloc_cache, %struct.napi_alloc_cache* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %24, %1
  ret void
}

declare dso_local %struct.napi_alloc_cache* @this_cpu_ptr(i32*) #1

declare dso_local i32 @skb_release_all(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kmem_cache_free_bulk(i32, i64, %struct.sk_buff**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
