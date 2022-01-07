; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_get_frozen_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_get_frozen_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nilfs_shadow_map = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.nilfs_shadow_map* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.buffer_head* @nilfs_mdt_get_frozen_buffer(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.nilfs_shadow_map*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %11, align 8
  store %struct.nilfs_shadow_map* %12, %struct.nilfs_shadow_map** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  %13 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %5, align 8
  %14 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %13, i32 0, i32 0
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.page* @find_lock_page(i32* %14, i32 %19)
  store %struct.page* %20, %struct.page** %7, align 8
  %21 = load %struct.page*, %struct.page** %7, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.page*, %struct.page** %7, align 8
  %25 = call i64 @page_has_buffers(%struct.page* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = call i32 @bh_offset(%struct.buffer_head* %28)
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.page*, %struct.page** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page* %34, i32 %35)
  store %struct.buffer_head* %36, %struct.buffer_head** %6, align 8
  br label %37

37:                                               ; preds = %27, %23
  %38 = load %struct.page*, %struct.page** %7, align 8
  %39 = call i32 @unlock_page(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %7, align 8
  %41 = call i32 @put_page(%struct.page* %40)
  br label %42

42:                                               ; preds = %37, %2
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  ret %struct.buffer_head* %43
}

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local %struct.page* @find_lock_page(i32*, i32) #1

declare dso_local i64 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
