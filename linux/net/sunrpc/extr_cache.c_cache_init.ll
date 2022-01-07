; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_head = type { i64, i64, i32, i64, i32 }
%struct.cache_detail = type { i64 }

@CACHE_NEW_EXPIRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_head*, %struct.cache_detail*)* @cache_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_init(%struct.cache_head* %0, %struct.cache_detail* %1) #0 {
  %3 = alloca %struct.cache_head*, align 8
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca i64, align 8
  store %struct.cache_head* %0, %struct.cache_head** %3, align 8
  store %struct.cache_detail* %1, %struct.cache_detail** %4, align 8
  %6 = call i64 (...) @seconds_since_boot()
  store i64 %6, i64* %5, align 8
  %7 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %8 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %7, i32 0, i32 4
  %9 = call i32 @INIT_HLIST_NODE(i32* %8)
  %10 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %11 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %13 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %12, i32 0, i32 2
  %14 = call i32 @kref_init(i32* %13)
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @CACHE_NEW_EXPIRY, align 8
  %17 = add nsw i64 %15, %16
  %18 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %19 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %22 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %27 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %33 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  ret void
}

declare dso_local i64 @seconds_since_boot(...) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
