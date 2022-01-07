; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_try_to_negate_entry.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_cache.c_try_to_negate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.cache_head = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@CACHE_NEW_EXPIRY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.cache_head*)* @try_to_negate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_negate_entry(%struct.cache_detail* %0, %struct.cache_head* %1) #0 {
  %3 = alloca %struct.cache_detail*, align 8
  %4 = alloca %struct.cache_head*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %3, align 8
  store %struct.cache_head* %1, %struct.cache_head** %4, align 8
  %6 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %7 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %10 = call i32 @cache_is_valid(%struct.cache_head* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load i32, i32* @CACHE_NEGATIVE, align 4
  %17 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %18 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %21 = call i64 (...) @seconds_since_boot()
  %22 = load i64, i64* @CACHE_NEW_EXPIRY, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %25 = call i32 @cache_fresh_locked(%struct.cache_head* %20, i64 %23, %struct.cache_detail* %24)
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %15, %2
  %29 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %30 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %33 = load %struct.cache_detail*, %struct.cache_detail** %3, align 8
  %34 = call i32 @cache_fresh_unlocked(%struct.cache_head* %32, %struct.cache_detail* %33)
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cache_is_valid(%struct.cache_head*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cache_fresh_locked(%struct.cache_head*, i64, %struct.cache_detail*) #1

declare dso_local i64 @seconds_since_boot(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cache_fresh_unlocked(%struct.cache_head*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
