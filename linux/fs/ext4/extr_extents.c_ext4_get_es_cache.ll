; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_get_es_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_get_es_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.fiemap_extent_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ext4_fill_es_cache_info = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_get_es_cache(%struct.inode* %0, %struct.fiemap_extent_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fiemap_extent_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fiemap_extent_info* %1, %struct.fiemap_extent_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call i32 @ext4_has_inline_data(%struct.inode* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i32 @ext4_has_inline_data(%struct.inode* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @up_read(i32* %23)
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %36

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @ext4_fill_es_cache_info, align 4
  %35 = call i32 @_ext4_fiemap(%struct.inode* %30, %struct.fiemap_extent_info* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %27
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @_ext4_fiemap(%struct.inode*, %struct.fiemap_extent_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
