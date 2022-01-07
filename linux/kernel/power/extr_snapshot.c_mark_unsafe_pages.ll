; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_mark_unsafe_pages.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_snapshot.c_mark_unsafe_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memory_bitmap = type { i32 }

@free_pages_map = common dso_local global i32 0, align 4
@BM_END_OF_MAP = common dso_local global i64 0, align 8
@allocated_unsafe_pages = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memory_bitmap*)* @mark_unsafe_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_unsafe_pages(%struct.memory_bitmap* %0) #0 {
  %2 = alloca %struct.memory_bitmap*, align 8
  %3 = alloca i64, align 8
  store %struct.memory_bitmap* %0, %struct.memory_bitmap** %2, align 8
  %4 = load i32, i32* @free_pages_map, align 4
  %5 = call i32 @memory_bm_position_reset(i32 %4)
  %6 = load i32, i32* @free_pages_map, align 4
  %7 = call i64 @memory_bm_next_pfn(i32 %6)
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %12, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @BM_END_OF_MAP, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %8
  %13 = load i32, i32* @free_pages_map, align 4
  %14 = call i32 @memory_bm_clear_current(i32 %13)
  %15 = load i32, i32* @free_pages_map, align 4
  %16 = call i64 @memory_bm_next_pfn(i32 %15)
  store i64 %16, i64* %3, align 8
  br label %8

17:                                               ; preds = %8
  %18 = load i32, i32* @free_pages_map, align 4
  %19 = load %struct.memory_bitmap*, %struct.memory_bitmap** %2, align 8
  %20 = call i32 @duplicate_memory_bitmap(i32 %18, %struct.memory_bitmap* %19)
  store i64 0, i64* @allocated_unsafe_pages, align 8
  ret void
}

declare dso_local i32 @memory_bm_position_reset(i32) #1

declare dso_local i64 @memory_bm_next_pfn(i32) #1

declare dso_local i32 @memory_bm_clear_current(i32) #1

declare dso_local i32 @duplicate_memory_bitmap(i32, %struct.memory_bitmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
