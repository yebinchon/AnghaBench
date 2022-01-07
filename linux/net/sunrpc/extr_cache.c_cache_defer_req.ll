; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_defer_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_defer_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_req = type { %struct.cache_deferred_req* (%struct.cache_req*)*, i64 }
%struct.cache_deferred_req = type { i32 }
%struct.cache_head = type { i32 }

@CACHE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_req*, %struct.cache_head*)* @cache_defer_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_defer_req(%struct.cache_req* %0, %struct.cache_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_req*, align 8
  %5 = alloca %struct.cache_head*, align 8
  %6 = alloca %struct.cache_deferred_req*, align 8
  store %struct.cache_req* %0, %struct.cache_req** %4, align 8
  store %struct.cache_head* %1, %struct.cache_head** %5, align 8
  %7 = load %struct.cache_req*, %struct.cache_req** %4, align 8
  %8 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.cache_req*, %struct.cache_req** %4, align 8
  %13 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %14 = call i32 @cache_wait_req(%struct.cache_req* %12, %struct.cache_head* %13)
  %15 = load i32, i32* @CACHE_PENDING, align 4
  %16 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %17 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %16, i32 0, i32 0
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %45

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.cache_req*, %struct.cache_req** %4, align 8
  %24 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %23, i32 0, i32 0
  %25 = load %struct.cache_deferred_req* (%struct.cache_req*)*, %struct.cache_deferred_req* (%struct.cache_req*)** %24, align 8
  %26 = load %struct.cache_req*, %struct.cache_req** %4, align 8
  %27 = call %struct.cache_deferred_req* %25(%struct.cache_req* %26)
  store %struct.cache_deferred_req* %27, %struct.cache_deferred_req** %6, align 8
  %28 = load %struct.cache_deferred_req*, %struct.cache_deferred_req** %6, align 8
  %29 = icmp eq %struct.cache_deferred_req* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %45

31:                                               ; preds = %22
  %32 = load %struct.cache_deferred_req*, %struct.cache_deferred_req** %6, align 8
  %33 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %34 = call i32 @setup_deferral(%struct.cache_deferred_req* %32, %struct.cache_head* %33, i32 1)
  %35 = load i32, i32* @CACHE_PENDING, align 4
  %36 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %37 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %36, i32 0, i32 0
  %38 = call i32 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %42 = call i32 @cache_revisit_request(%struct.cache_head* %41)
  br label %43

43:                                               ; preds = %40, %31
  %44 = call i32 (...) @cache_limit_defers()
  store i32 1, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %30, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @cache_wait_req(%struct.cache_req*, %struct.cache_head*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @setup_deferral(%struct.cache_deferred_req*, %struct.cache_head*, i32) #1

declare dso_local i32 @cache_revisit_request(%struct.cache_head*) #1

declare dso_local i32 @cache_limit_defers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
