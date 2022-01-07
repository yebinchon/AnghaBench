; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_fresh_locked.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_fresh_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_head = type { i32, i64, i64 }
%struct.cache_detail = type { i64 }

@CACHE_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_head*, i64, %struct.cache_detail*)* @cache_fresh_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_fresh_locked(%struct.cache_head* %0, i64 %1, %struct.cache_detail* %2) #0 {
  %4 = alloca %struct.cache_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cache_detail*, align 8
  %7 = alloca i64, align 8
  store %struct.cache_head* %0, %struct.cache_head** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cache_detail* %2, %struct.cache_detail** %6, align 8
  %8 = call i64 (...) @seconds_since_boot()
  store i64 %8, i64* %7, align 8
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %11 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.cache_detail*, %struct.cache_detail** %6, align 8
  %16 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %14, %3
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %22 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %25 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = call i32 (...) @smp_wmb()
  %27 = load i32, i32* @CACHE_VALID, align 4
  %28 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %29 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  ret void
}

declare dso_local i64 @seconds_since_boot(...) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
