; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_listeners_exist.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_listeners_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*)* @cache_listeners_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_listeners_exist(%struct.cache_detail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cache_detail*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %3, align 8
  %4 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %5 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %4, i32 0, i32 1
  %6 = call i64 @atomic_read(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %11 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %25

15:                                               ; preds = %9
  %16 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %17 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (...) @seconds_since_boot()
  %20 = sub nsw i32 %19, 30
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %14, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @seconds_since_boot(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
