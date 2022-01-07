; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_unmark_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_unmark_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_spare_block = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @unmark_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unmark_dirty(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.hpfs_spare_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call i64 @sb_rdonly(%struct.super_block* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %54

9:                                                ; preds = %1
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @sync_blockdev(i32 %12)
  %14 = load %struct.super_block*, %struct.super_block** %2, align 8
  %15 = call %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block* %14, i32 17, %struct.buffer_head** %3, i32 0)
  store %struct.hpfs_spare_block* %15, %struct.hpfs_spare_block** %4, align 8
  %16 = icmp ne %struct.hpfs_spare_block* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %9
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 1, %25
  %27 = icmp sgt i32 %21, %26
  %28 = zext i1 %27 to i32
  %29 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %30 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 2
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load %struct.super_block*, %struct.super_block** %2, align 8
  %38 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %36, %17
  %44 = phi i1 [ false, %17 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  %46 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %4, align 8
  %47 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %49 = call i32 @mark_buffer_dirty(%struct.buffer_head* %48)
  %50 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %51 = call i32 @sync_dirty_buffer(%struct.buffer_head* %50)
  %52 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %53 = call i32 @brelse(%struct.buffer_head* %52)
  br label %54

54:                                               ; preds = %8, %43, %9
  ret void
}

declare dso_local i64 @sb_rdonly(%struct.super_block*) #1

declare dso_local i32 @sync_blockdev(i32) #1

declare dso_local %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
