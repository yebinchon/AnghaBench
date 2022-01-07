; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_remove_nats_in_journal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_remove_nats_in_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32, i32 }
%struct.curseg_info = type { i32, %struct.f2fs_journal* }
%struct.f2fs_journal = type { i32 }
%struct.nat_entry = type { i32 }
%struct.f2fs_nat_entry = type { i32 }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@IS_DIRTY = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @remove_nats_in_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_nats_in_journal(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_nm_info*, align 8
  %4 = alloca %struct.curseg_info*, align 8
  %5 = alloca %struct.f2fs_journal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nat_entry*, align 8
  %8 = alloca %struct.f2fs_nat_entry, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.f2fs_nat_entry, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %12 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %11)
  store %struct.f2fs_nm_info* %12, %struct.f2fs_nm_info** %3, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %14 = load i32, i32* @CURSEG_HOT_DATA, align 4
  %15 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %13, i32 %14)
  store %struct.curseg_info* %15, %struct.curseg_info** %4, align 8
  %16 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %17 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %16, i32 0, i32 1
  %18 = load %struct.f2fs_journal*, %struct.f2fs_journal** %17, align 8
  store %struct.f2fs_journal* %18, %struct.f2fs_journal** %5, align 8
  %19 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %20 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %19, i32 0, i32 0
  %21 = call i32 @down_write(i32* %20)
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %75, %1
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.f2fs_journal*, %struct.f2fs_journal** %5, align 8
  %25 = call i32 @nats_in_cursum(%struct.f2fs_journal* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %22
  %28 = load %struct.f2fs_journal*, %struct.f2fs_journal** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @nid_in_journal(%struct.f2fs_journal* %28, i32 %29)
  %31 = call i64 @le32_to_cpu(i32 %30)
  store i64 %31, i64* %9, align 8
  %32 = load %struct.f2fs_journal*, %struct.f2fs_journal** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @nat_in_journal(%struct.f2fs_journal* %32, i32 %33)
  %35 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %10, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = bitcast %struct.f2fs_nat_entry* %8 to i8*
  %37 = bitcast %struct.f2fs_nat_entry* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  %38 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info* %38, i64 %39)
  store %struct.nat_entry* %40, %struct.nat_entry** %7, align 8
  %41 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %42 = icmp ne %struct.nat_entry* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %27
  %44 = load i64, i64* %9, align 8
  %45 = call %struct.nat_entry* @__alloc_nat_entry(i64 %44, i32 1)
  store %struct.nat_entry* %45, %struct.nat_entry** %7, align 8
  %46 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %47 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %48 = call i32 @__init_nat_entry(%struct.f2fs_nm_info* %46, %struct.nat_entry* %47, %struct.f2fs_nat_entry* %8, i32 1)
  br label %49

49:                                               ; preds = %43, %27
  %50 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %51 = load i32, i32* @IS_DIRTY, align 4
  %52 = call i32 @get_nat_flag(%struct.nat_entry* %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %8, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @le32_to_cpu(i32 %56)
  %58 = load i64, i64* @NULL_ADDR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %62 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %61, i32 0, i32 0
  %63 = call i32 @spin_lock(i32* %62)
  %64 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %65 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %69 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  br label %71

71:                                               ; preds = %60, %54, %49
  %72 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %73 = load %struct.nat_entry*, %struct.nat_entry** %7, align 8
  %74 = call i32 @__set_nat_cache_dirty(%struct.f2fs_nm_info* %72, %struct.nat_entry* %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %6, align 4
  br label %22

78:                                               ; preds = %22
  %79 = load %struct.f2fs_journal*, %struct.f2fs_journal** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 0, %80
  %82 = call i32 @update_nats_in_cursum(%struct.f2fs_journal* %79, i32 %81)
  %83 = load %struct.curseg_info*, %struct.curseg_info** %4, align 8
  %84 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %83, i32 0, i32 0
  %85 = call i32 @up_write(i32* %84)
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @nats_in_cursum(%struct.f2fs_journal*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @nid_in_journal(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @nat_in_journal(%struct.f2fs_journal*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info*, i64) #1

declare dso_local %struct.nat_entry* @__alloc_nat_entry(i64, i32) #1

declare dso_local i32 @__init_nat_entry(%struct.f2fs_nm_info*, %struct.nat_entry*, %struct.f2fs_nat_entry*, i32) #1

declare dso_local i32 @get_nat_flag(%struct.nat_entry*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__set_nat_cache_dirty(%struct.f2fs_nm_info*, %struct.nat_entry*) #1

declare dso_local i32 @update_nats_in_cursum(%struct.f2fs_journal*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
