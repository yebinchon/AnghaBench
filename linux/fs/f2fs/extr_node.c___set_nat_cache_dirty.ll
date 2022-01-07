; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___set_nat_cache_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___set_nat_cache_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_nm_info = type { i32, i32 }
%struct.nat_entry = type { i32 }
%struct.nat_entry_set = type { i32, i32 }

@NEW_ADDR = common dso_local global i64 0, align 8
@IS_PREALLOC = common dso_local global i32 0, align 4
@IS_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_nm_info*, %struct.nat_entry*)* @__set_nat_cache_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__set_nat_cache_dirty(%struct.f2fs_nm_info* %0, %struct.nat_entry* %1) #0 {
  %3 = alloca %struct.f2fs_nm_info*, align 8
  %4 = alloca %struct.nat_entry*, align 8
  %5 = alloca %struct.nat_entry_set*, align 8
  %6 = alloca i32, align 4
  store %struct.f2fs_nm_info* %0, %struct.f2fs_nm_info** %3, align 8
  store %struct.nat_entry* %1, %struct.nat_entry** %4, align 8
  %7 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %8 = call i64 @nat_get_blkaddr(%struct.nat_entry* %7)
  %9 = load i64, i64* @NEW_ADDR, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %16 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %17 = call %struct.nat_entry_set* @__grab_nat_entry_set(%struct.f2fs_nm_info* %15, %struct.nat_entry* %16)
  store %struct.nat_entry_set* %17, %struct.nat_entry_set** %5, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %23 = load i32, i32* @IS_PREALLOC, align 4
  %24 = call i64 @get_nat_flag(%struct.nat_entry* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %28 = load i32, i32* @IS_DIRTY, align 4
  %29 = call i64 @get_nat_flag(%struct.nat_entry* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.nat_entry_set*, %struct.nat_entry_set** %5, align 8
  %33 = getelementptr inbounds %struct.nat_entry_set, %struct.nat_entry_set* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %31, %26, %18
  %37 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %38 = load i32, i32* @IS_PREALLOC, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @set_nat_flag(%struct.nat_entry* %37, i32 %38, i32 %39)
  %41 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %42 = load i32, i32* @IS_DIRTY, align 4
  %43 = call i64 @get_nat_flag(%struct.nat_entry* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %54

46:                                               ; preds = %36
  %47 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %48 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %52 = load i32, i32* @IS_DIRTY, align 4
  %53 = call i32 @set_nat_flag(%struct.nat_entry* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %46, %45
  %55 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %56 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %55, i32 0, i32 0
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %62 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %61, i32 0, i32 0
  %63 = call i32 @list_del_init(i32* %62)
  br label %70

64:                                               ; preds = %54
  %65 = load %struct.nat_entry*, %struct.nat_entry** %4, align 8
  %66 = getelementptr inbounds %struct.nat_entry, %struct.nat_entry* %65, i32 0, i32 0
  %67 = load %struct.nat_entry_set*, %struct.nat_entry_set** %5, align 8
  %68 = getelementptr inbounds %struct.nat_entry_set, %struct.nat_entry_set* %67, i32 0, i32 0
  %69 = call i32 @list_move_tail(i32* %66, i32* %68)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %72 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  ret void
}

declare dso_local i64 @nat_get_blkaddr(%struct.nat_entry*) #1

declare dso_local %struct.nat_entry_set* @__grab_nat_entry_set(%struct.f2fs_nm_info*, %struct.nat_entry*) #1

declare dso_local i64 @get_nat_flag(%struct.nat_entry*, i32) #1

declare dso_local i32 @set_nat_flag(%struct.nat_entry*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
