; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_freeze_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_freeze_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nilfs_shadow_map = type { i32, i32 }
%struct.page = type { i32 }
%struct.TYPE_4__ = type { %struct.nilfs_shadow_map* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_freeze_buffer(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.nilfs_shadow_map*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %12, align 8
  store %struct.nilfs_shadow_map* %13, %struct.nilfs_shadow_map** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %4, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %6, align 8
  %18 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %17, i32 0, i32 1
  %19 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %20 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.page* @grab_cache_page(i32* %18, i32 %23)
  store %struct.page* %24, %struct.page** %8, align 8
  %25 = load %struct.page*, %struct.page** %8, align 8
  %26 = icmp ne %struct.page* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %74

30:                                               ; preds = %2
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = call i32 @page_has_buffers(%struct.page* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load %struct.page*, %struct.page** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  %38 = call i32 @create_empty_buffers(%struct.page* %35, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %34, %30
  %40 = load %struct.page*, %struct.page** %8, align 8
  %41 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %42 = call i32 @bh_offset(%struct.buffer_head* %41)
  %43 = load i32, i32* %9, align 4
  %44 = ashr i32 %42, %43
  %45 = call %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page* %40, i32 %44)
  store %struct.buffer_head* %45, %struct.buffer_head** %7, align 8
  %46 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %47 = call i32 @buffer_uptodate(%struct.buffer_head* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %39
  %50 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %51 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %52 = call i32 @nilfs_copy_buffer(%struct.buffer_head* %50, %struct.buffer_head* %51)
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %54, i32 0, i32 0
  %56 = call i64 @list_empty(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load %struct.nilfs_shadow_map*, %struct.nilfs_shadow_map** %6, align 8
  %62 = getelementptr inbounds %struct.nilfs_shadow_map, %struct.nilfs_shadow_map* %61, i32 0, i32 0
  %63 = call i32 @list_add_tail(i32* %60, i32* %62)
  %64 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %65 = call i32 @set_buffer_nilfs_redirected(%struct.buffer_head* %64)
  br label %69

66:                                               ; preds = %53
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = call i32 @brelse(%struct.buffer_head* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i32 @unlock_page(%struct.page* %70)
  %72 = load %struct.page*, %struct.page** %8, align 8
  %73 = call i32 @put_page(%struct.page* %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %27
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local %struct.page* @grab_cache_page(i32*, i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local %struct.buffer_head* @nilfs_page_get_nth_block(%struct.page*, i32) #1

declare dso_local i32 @bh_offset(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @nilfs_copy_buffer(%struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_buffer_nilfs_redirected(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
