; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_me_swapcache_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_memory-failure.c_me_swapcache_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@MF_DELAYED = common dso_local global i32 0, align 4
@MF_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i64)* @me_swapcache_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me_swapcache_dirty(%struct.page* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.page*, %struct.page** %4, align 8
  %7 = call i32 @ClearPageDirty(%struct.page* %6)
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = call i32 @ClearPageUptodate(%struct.page* %8)
  %10 = load %struct.page*, %struct.page** %4, align 8
  %11 = call i32 @delete_from_lru_cache(%struct.page* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MF_DELAYED, align 4
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @MF_FAILED, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @ClearPageDirty(%struct.page*) #1

declare dso_local i32 @ClearPageUptodate(%struct.page*) #1

declare dso_local i32 @delete_from_lru_cache(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
