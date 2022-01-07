; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_cache_nat_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_cache_nat_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nat_entry = type { i64, i32, i32 }
%struct.f2fs_nm_info = type { i32 }
%struct.nat_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, %struct.f2fs_nat_entry*)* @cache_nat_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_nat_entry(%struct.f2fs_sb_info* %0, i32 %1, %struct.f2fs_nat_entry* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.f2fs_nat_entry*, align 8
  %7 = alloca %struct.f2fs_nm_info*, align 8
  %8 = alloca %struct.nat_entry*, align 8
  %9 = alloca %struct.nat_entry*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.f2fs_nat_entry* %2, %struct.f2fs_nat_entry** %6, align 8
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %10)
  store %struct.f2fs_nm_info* %11, %struct.f2fs_nm_info** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.nat_entry* @__alloc_nat_entry(i32 %12, i32 0)
  store %struct.nat_entry* %13, %struct.nat_entry** %8, align 8
  %14 = load %struct.nat_entry*, %struct.nat_entry** %8, align 8
  %15 = icmp ne %struct.nat_entry* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %69

17:                                               ; preds = %3
  %18 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %19 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %18, i32 0, i32 0
  %20 = call i32 @down_write(i32* %19)
  %21 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info* %21, i32 %22)
  store %struct.nat_entry* %23, %struct.nat_entry** %9, align 8
  %24 = load %struct.nat_entry*, %struct.nat_entry** %9, align 8
  %25 = icmp ne %struct.nat_entry* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %28 = load %struct.nat_entry*, %struct.nat_entry** %8, align 8
  %29 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %6, align 8
  %30 = call %struct.nat_entry* @__init_nat_entry(%struct.f2fs_nm_info* %27, %struct.nat_entry* %28, %struct.f2fs_nat_entry* %29, i32 0)
  store %struct.nat_entry* %30, %struct.nat_entry** %9, align 8
  br label %59

31:                                               ; preds = %17
  %32 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %33 = load %struct.nat_entry*, %struct.nat_entry** %9, align 8
  %34 = call i64 @nat_get_ino(%struct.nat_entry* %33)
  %35 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %6, align 8
  %36 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @le32_to_cpu(i32 %37)
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %55, label %40

40:                                               ; preds = %31
  %41 = load %struct.nat_entry*, %struct.nat_entry** %9, align 8
  %42 = call i64 @nat_get_blkaddr(%struct.nat_entry* %41)
  %43 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %6, align 8
  %44 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le32_to_cpu(i32 %45)
  %47 = icmp ne i64 %42, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %40
  %49 = load %struct.nat_entry*, %struct.nat_entry** %9, align 8
  %50 = call i64 @nat_get_version(%struct.nat_entry* %49)
  %51 = load %struct.f2fs_nat_entry*, %struct.f2fs_nat_entry** %6, align 8
  %52 = getelementptr inbounds %struct.f2fs_nat_entry, %struct.f2fs_nat_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %50, %53
  br label %55

55:                                               ; preds = %48, %40, %31
  %56 = phi i1 [ true, %40 ], [ true, %31 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %32, i32 %57)
  br label %59

59:                                               ; preds = %55, %26
  %60 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %61 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %60, i32 0, i32 0
  %62 = call i32 @up_write(i32* %61)
  %63 = load %struct.nat_entry*, %struct.nat_entry** %9, align 8
  %64 = load %struct.nat_entry*, %struct.nat_entry** %8, align 8
  %65 = icmp ne %struct.nat_entry* %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.nat_entry*, %struct.nat_entry** %8, align 8
  %68 = call i32 @__free_nat_entry(%struct.nat_entry* %67)
  br label %69

69:                                               ; preds = %16, %66, %59
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.nat_entry* @__alloc_nat_entry(i32, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.nat_entry* @__lookup_nat_cache(%struct.f2fs_nm_info*, i32) #1

declare dso_local %struct.nat_entry* @__init_nat_entry(%struct.f2fs_nm_info*, %struct.nat_entry*, %struct.f2fs_nat_entry*, i32) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @nat_get_ino(%struct.nat_entry*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @nat_get_blkaddr(%struct.nat_entry*) #1

declare dso_local i64 @nat_get_version(%struct.nat_entry*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @__free_nat_entry(%struct.nat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
