; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_warn_no_listener.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_warn_no_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i64, i64, i32 (%struct.cache_detail*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_detail*)* @warn_no_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @warn_no_listener(%struct.cache_detail* %0) #0 {
  %2 = alloca %struct.cache_detail*, align 8
  store %struct.cache_detail* %0, %struct.cache_detail** %2, align 8
  %3 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %4 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %7 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %5, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %12 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %15 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %17 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %16, i32 0, i32 2
  %18 = load i32 (%struct.cache_detail*, i32)*, i32 (%struct.cache_detail*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.cache_detail*, i32)* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %10
  %21 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %22 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %21, i32 0, i32 2
  %23 = load i32 (%struct.cache_detail*, i32)*, i32 (%struct.cache_detail*, i32)** %22, align 8
  %24 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %25 = load %struct.cache_detail*, %struct.cache_detail** %2, align 8
  %26 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 %23(%struct.cache_detail* %24, i32 %29)
  br label %31

31:                                               ; preds = %20, %10
  br label %32

32:                                               ; preds = %31, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
