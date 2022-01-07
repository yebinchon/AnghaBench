; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_fill_flex_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_ext4_fill_flex_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ext4_group_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*)* @ext4_fill_flex_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_fill_flex_info(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_sb_info*, align 8
  %5 = alloca %struct.ext4_group_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %9)
  store %struct.ext4_sb_info* %10, %struct.ext4_sb_info** %4, align 8
  store %struct.ext4_group_desc* null, %struct.ext4_group_desc** %5, align 8
  %11 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %12 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %19 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 31
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %1
  %28 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  store i32 1, i32* %2, align 4
  br label %88

30:                                               ; preds = %22
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %33 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ext4_alloc_flex_bg_array(%struct.super_block* %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %87

39:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %83, %39
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %43 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %86

46:                                               ; preds = %40
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block* %47, i32 %48, i32* null)
  store %struct.ext4_group_desc* %49, %struct.ext4_group_desc** %5, align 8
  %50 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @ext4_flex_group(%struct.ext4_sb_info* %50, i32 %51)
  store i64 %52, i64* %6, align 8
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %55 = call i32 @ext4_free_inodes_count(%struct.super_block* %53, %struct.ext4_group_desc* %54)
  %56 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %57 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = call i32 @atomic_add(i32 %55, i32* %61)
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %65 = call i32 @ext4_free_group_clusters(%struct.super_block* %63, %struct.ext4_group_desc* %64)
  %66 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %67 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %66, i32 0, i32 2
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = call i32 @atomic64_add(i32 %65, i32* %71)
  %73 = load %struct.super_block*, %struct.super_block** %3, align 8
  %74 = load %struct.ext4_group_desc*, %struct.ext4_group_desc** %5, align 8
  %75 = call i32 @ext4_used_dirs_count(%struct.super_block* %73, %struct.ext4_group_desc* %74)
  %76 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %77 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = call i32 @atomic_add(i32 %75, i32* %81)
  br label %83

83:                                               ; preds = %46
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  br label %40

86:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %88

87:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %87, %86, %27
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @ext4_alloc_flex_bg_array(%struct.super_block*, i32) #1

declare dso_local %struct.ext4_group_desc* @ext4_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i64 @ext4_flex_group(%struct.ext4_sb_info*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @ext4_free_inodes_count(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @atomic64_add(i32, i32*) #1

declare dso_local i32 @ext4_free_group_clusters(%struct.super_block*, %struct.ext4_group_desc*) #1

declare dso_local i32 @ext4_used_dirs_count(%struct.super_block*, %struct.ext4_group_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
