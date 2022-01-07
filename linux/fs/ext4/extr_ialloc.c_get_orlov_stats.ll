; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_get_orlov_stats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_ialloc.c_get_orlov_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.orlov_stats = type { i8*, i32, i8* }
%struct.ext4_group_desc = type { i32 }
%struct.flex_groups = type { i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.flex_groups* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64, i32, %struct.orlov_stats*)* @get_orlov_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_orlov_stats(%struct.super_block* %0, i64 %1, i32 %2, %struct.orlov_stats* %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.orlov_stats*, align 8
  %9 = alloca %struct.ext4_group_desc*, align 8
  %10 = alloca %struct.flex_groups*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.orlov_stats* %3, %struct.orlov_stats** %8, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.TYPE_2__* @EXT4_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.flex_groups*, %struct.flex_groups** %13, align 8
  store %struct.flex_groups* %14, %struct.flex_groups** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %4
  %18 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %18, i64 %19
  %21 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %20, i32 0, i32 2
  %22 = call i8* @atomic_read(i32* %21)
  %23 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %24 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %25, i64 %26
  %28 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %27, i32 0, i32 1
  %29 = call i32 @atomic64_read(i32* %28)
  %30 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %31 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.flex_groups*, %struct.flex_groups** %10, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %32, i64 %33
  %35 = getelementptr inbounds %struct.flex_groups, %struct.flex_groups* %34, i32 0, i32 0
  %36 = call i8* @atomic_read(i32* %35)
  %37 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %38 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %68

39:                                               ; preds = %4
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %40, i64 %41, i32* null)
  store %struct.ext4_group_desc* %42, %struct.ext4_group_desc** %9, align 8
  %43 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %44 = icmp ne %struct.ext4_group_desc* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.super_block*, %struct.super_block** %5, align 8
  %47 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %48 = call i8* @ext4_free_inodes_count(%struct.super_block* %46, %struct.ext4_group_desc* %47)
  %49 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %50 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.super_block*, %struct.super_block** %5, align 8
  %52 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %53 = call i32 @ext4_free_group_clusters(%struct.super_block* %51, %struct.ext4_group_desc* %52)
  %54 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %55 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.super_block*, %struct.super_block** %5, align 8
  %57 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %9, align 8
  %58 = call i8* @ext4_used_dirs_count(%struct.super_block* %56, %struct.ext4_group_desc* %57)
  %59 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %60 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %68

61:                                               ; preds = %39
  %62 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %63 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %62, i32 0, i32 2
  store i8* null, i8** %63, align 8
  %64 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %65 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %64, i32 0, i32 1
  store i32 0, i32* %65, align 8
  %66 = load %struct.orlov_stats*, %struct.orlov_stats** %8, align 8
  %67 = getelementptr inbounds %struct.orlov_stats, %struct.orlov_stats* %66, i32 0, i32 0
  store i8* null, i8** %67, align 8
  br label %68

68:                                               ; preds = %17, %61, %45
  ret void
}

declare dso_local %struct.TYPE_2__* @EXT4_SB(%struct.super_block*) #1

declare dso_local i8* @atomic_read(i32*) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i8* @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_free_group_clusters(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i8* @ext4_used_dirs_count(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
