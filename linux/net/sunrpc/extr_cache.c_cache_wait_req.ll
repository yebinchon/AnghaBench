; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_wait_req.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_cache_wait_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_req = type { i32 }
%struct.cache_head = type { i32 }
%struct.thread_deferred_req = type { i32, %struct.cache_deferred_req }
%struct.cache_deferred_req = type { i32, i32 }

@cache_restart_thread = common dso_local global i32 0, align 4
@CACHE_PENDING = common dso_local global i32 0, align 4
@cache_defer_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_req*, %struct.cache_head*)* @cache_wait_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_wait_req(%struct.cache_req* %0, %struct.cache_head* %1) #0 {
  %3 = alloca %struct.cache_req*, align 8
  %4 = alloca %struct.cache_head*, align 8
  %5 = alloca %struct.thread_deferred_req, align 4
  %6 = alloca %struct.cache_deferred_req*, align 8
  store %struct.cache_req* %0, %struct.cache_req** %3, align 8
  store %struct.cache_head* %1, %struct.cache_head** %4, align 8
  %7 = getelementptr inbounds %struct.thread_deferred_req, %struct.thread_deferred_req* %5, i32 0, i32 1
  store %struct.cache_deferred_req* %7, %struct.cache_deferred_req** %6, align 8
  %8 = getelementptr inbounds %struct.thread_deferred_req, %struct.thread_deferred_req* %5, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @COMPLETION_INITIALIZER_ONSTACK(i32 %9)
  %11 = getelementptr inbounds %struct.thread_deferred_req, %struct.thread_deferred_req* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @cache_restart_thread, align 4
  %13 = load %struct.cache_deferred_req*, %struct.cache_deferred_req** %6, align 8
  %14 = getelementptr inbounds %struct.cache_deferred_req, %struct.cache_deferred_req* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.cache_deferred_req*, %struct.cache_deferred_req** %6, align 8
  %16 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %17 = call i32 @setup_deferral(%struct.cache_deferred_req* %15, %struct.cache_head* %16, i32 0)
  %18 = load i32, i32* @CACHE_PENDING, align 4
  %19 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %20 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %19, i32 0, i32 0
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.thread_deferred_req, %struct.thread_deferred_req* %5, i32 0, i32 0
  %25 = load %struct.cache_req*, %struct.cache_req** %3, align 8
  %26 = getelementptr inbounds %struct.cache_req, %struct.cache_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @wait_for_completion_interruptible_timeout(i32* %24, i32 %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %23, %2
  %31 = call i32 @spin_lock(i32* @cache_defer_lock)
  %32 = getelementptr inbounds %struct.thread_deferred_req, %struct.thread_deferred_req* %5, i32 0, i32 1
  %33 = getelementptr inbounds %struct.cache_deferred_req, %struct.cache_deferred_req* %32, i32 0, i32 0
  %34 = call i32 @hlist_unhashed(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.thread_deferred_req, %struct.thread_deferred_req* %5, i32 0, i32 1
  %38 = call i32 @__unhash_deferred_req(%struct.cache_deferred_req* %37)
  %39 = call i32 @spin_unlock(i32* @cache_defer_lock)
  br label %44

40:                                               ; preds = %30
  %41 = call i32 @spin_unlock(i32* @cache_defer_lock)
  %42 = getelementptr inbounds %struct.thread_deferred_req, %struct.thread_deferred_req* %5, i32 0, i32 0
  %43 = call i32 @wait_for_completion(i32* %42)
  br label %44

44:                                               ; preds = %40, %36
  br label %45

45:                                               ; preds = %44, %23
  ret void
}

declare dso_local i32 @COMPLETION_INITIALIZER_ONSTACK(i32) #1

declare dso_local i32 @setup_deferral(%struct.cache_deferred_req*, %struct.cache_head*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @__unhash_deferred_req(%struct.cache_deferred_req*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
