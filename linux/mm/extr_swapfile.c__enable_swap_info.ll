; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_swapfile.c__enable_swap_info.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_swapfile.c__enable_swap_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_info_struct = type { i32, i32, i64 }

@SWP_WRITEOK = common dso_local global i32 0, align 4
@SWP_VALID = common dso_local global i32 0, align 4
@nr_swap_pages = common dso_local global i32 0, align 4
@total_swap_pages = common dso_local global i32 0, align 4
@swap_lock = common dso_local global i32 0, align 4
@swap_active_head = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.swap_info_struct*)* @_enable_swap_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_enable_swap_info(%struct.swap_info_struct* %0) #0 {
  %2 = alloca %struct.swap_info_struct*, align 8
  store %struct.swap_info_struct* %0, %struct.swap_info_struct** %2, align 8
  %3 = load i32, i32* @SWP_WRITEOK, align 4
  %4 = load i32, i32* @SWP_VALID, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %7 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %11 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @atomic_long_add(i64 %12, i32* @nr_swap_pages)
  %14 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %15 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @total_swap_pages, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @total_swap_pages, align 4
  %21 = call i32 @assert_spin_locked(i32* @swap_lock)
  %22 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %23 = getelementptr inbounds %struct.swap_info_struct, %struct.swap_info_struct* %22, i32 0, i32 1
  %24 = call i32 @plist_add(i32* %23, i32* @swap_active_head)
  %25 = load %struct.swap_info_struct*, %struct.swap_info_struct** %2, align 8
  %26 = call i32 @add_to_avail_list(%struct.swap_info_struct* %25)
  ret void
}

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @plist_add(i32*, i32*) #1

declare dso_local i32 @add_to_avail_list(%struct.swap_info_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
