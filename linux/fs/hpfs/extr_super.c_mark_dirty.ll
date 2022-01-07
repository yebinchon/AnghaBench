; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_mark_dirty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_super.c_mark_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.hpfs_spare_block = type { i32, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32)* @mark_dirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_dirty(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.hpfs_spare_block*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load %struct.super_block*, %struct.super_block** %3, align 8
  %17 = call i32 @sb_rdonly(%struct.super_block* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %15, %12
  %20 = load %struct.super_block*, %struct.super_block** %3, align 8
  %21 = call %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block* %20, i32 17, %struct.buffer_head** %5, i32 0)
  store %struct.hpfs_spare_block* %21, %struct.hpfs_spare_block** %6, align 8
  %22 = icmp ne %struct.hpfs_spare_block* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %6, align 8
  %25 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.hpfs_spare_block*, %struct.hpfs_spare_block** %6, align 8
  %27 = getelementptr inbounds %struct.hpfs_spare_block, %struct.hpfs_spare_block* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = call i32 @mark_buffer_dirty(%struct.buffer_head* %28)
  %30 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %31 = call i32 @sync_dirty_buffer(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = call i32 @brelse(%struct.buffer_head* %32)
  br label %34

34:                                               ; preds = %23, %19
  br label %35

35:                                               ; preds = %34, %15, %2
  ret void
}

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @sb_rdonly(%struct.super_block*) #1

declare dso_local %struct.hpfs_spare_block* @hpfs_map_sector(%struct.super_block*, i32, %struct.buffer_head**, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
