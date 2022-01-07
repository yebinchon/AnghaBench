; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_sync_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_super.c_ext2_sync_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_super_block = type { i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_sync_super(%struct.super_block* %0, %struct.ext2_super_block* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ext2_super_block*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ext2_super_block* %1, %struct.ext2_super_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call i32 @ext2_clear_super_error(%struct.super_block* %7)
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call i32 @ext2_count_free_blocks(%struct.super_block* %13)
  %15 = call i8* @cpu_to_le32(i32 %14)
  %16 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %17 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = call i32 @ext2_count_free_inodes(%struct.super_block* %18)
  %20 = call i8* @cpu_to_le32(i32 %19)
  %21 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %22 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = call i32 (...) @ktime_get_real_seconds()
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = load %struct.ext2_super_block*, %struct.ext2_super_block** %5, align 8
  %26 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mark_buffer_dirty(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @sync_dirty_buffer(i32 %42)
  br label %44

44:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @ext2_clear_super_error(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ext2_count_free_blocks(%struct.super_block*) #1

declare dso_local i32 @ext2_count_free_inodes(%struct.super_block*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mark_buffer_dirty(i32) #1

declare dso_local i32 @sync_dirty_buffer(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
