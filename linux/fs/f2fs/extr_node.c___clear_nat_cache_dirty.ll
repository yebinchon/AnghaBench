; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___clear_nat_cache_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___clear_nat_cache_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_nm_info = type { i32, i32, i32 }
%struct.nat_entry_set = type { i32 }
%struct.nat_entry = type { i32 }

@IS_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_nm_info*, %struct.nat_entry_set*, %struct.nat_entry*)* @__clear_nat_cache_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clear_nat_cache_dirty(%struct.f2fs_nm_info* %0, %struct.nat_entry_set* %1, %struct.nat_entry* %2) #0 {
  %4 = alloca %struct.f2fs_nm_info*, align 8
  %5 = alloca %struct.nat_entry_set*, align 8
  %6 = alloca %struct.nat_entry*, align 8
  store %struct.f2fs_nm_info* %0, %struct.f2fs_nm_info** %4, align 8
  store %struct.nat_entry_set* %1, %struct.nat_entry_set** %5, align 8
  store %struct.nat_entry* %2, %struct.nat_entry** %6, align 8
  %7 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %8 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %7, i32 0, i32 1
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.nat_entry*, %struct.nat_entry** %6, align 8
  %11 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %10, i32 0, i32 0
  %12 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %13 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %12, i32 0, i32 2
  %14 = call i32 @list_move_tail(i32* %11, i32* %13)
  %15 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %16 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %15, i32 0, i32 1
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.nat_entry*, %struct.nat_entry** %6, align 8
  %19 = load i32, i32* @IS_DIRTY, align 4
  %20 = call i32 @set_nat_flag(%struct.nat_entry* %18, i32 %19, i32 0)
  %21 = load %struct.nat_entry_set*, %struct.nat_entry_set** %5, align 8
  %22 = getelementptr inbounds %struct.nat_entry_set, %struct.nat_entry_set* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %4, align 8
  %26 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_nat_flag(%struct.nat_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
