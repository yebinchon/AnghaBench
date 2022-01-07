; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_recover_xattr_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_recover_xattr_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i32 }
%struct.node_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NULL_ADDR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XATTR_NODE_OFFSET = common dso_local global i32 0, align 4
@VALID_XATTR_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_recover_xattr_data(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.f2fs_sb_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dnode_of_data, align 4
  %10 = alloca %struct.node_info, align 4
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %13)
  store %struct.f2fs_sb_info* %14, %struct.f2fs_sb_info** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @f2fs_get_node_info(%struct.f2fs_sb_info* %23, i32 %24, %struct.node_info* %10)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %22
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %32 = getelementptr inbounds %struct.node_info, %struct.node_info* %10, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info* %31, i32 %33)
  %35 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @dec_valid_node_count(%struct.f2fs_sb_info* %35, %struct.inode* %36, i32 0)
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %39 = load i32, i32* @NULL_ADDR, align 4
  %40 = call i32 @set_node_addr(%struct.f2fs_sb_info* %38, %struct.node_info* %10, i32 %39, i32 0)
  br label %41

41:                                               ; preds = %30, %21
  %42 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %43 = call i32 @f2fs_alloc_nid(%struct.f2fs_sb_info* %42, i32* %8)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @ENOSPC, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %79

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @set_new_dnode(%struct.dnode_of_data* %9, %struct.inode* %49, i32* null, i32* null, i32 %50)
  %52 = load i32, i32* @XATTR_NODE_OFFSET, align 4
  %53 = call %struct.page* @f2fs_new_node_page(%struct.dnode_of_data* %9, i32 %52)
  store %struct.page* %53, %struct.page** %11, align 8
  %54 = load %struct.page*, %struct.page** %11, align 8
  %55 = call i64 @IS_ERR(%struct.page* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info* %58, i32 %59)
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = call i32 @PTR_ERR(%struct.page* %61)
  store i32 %62, i32* %3, align 4
  br label %79

63:                                               ; preds = %48
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %6, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info* %64, i32 %65)
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @f2fs_update_inode_page(%struct.inode* %67)
  %69 = load %struct.page*, %struct.page** %11, align 8
  %70 = call i32 @F2FS_NODE(%struct.page* %69)
  %71 = load %struct.page*, %struct.page** %5, align 8
  %72 = call i32 @F2FS_NODE(%struct.page* %71)
  %73 = load i32, i32* @VALID_XATTR_BLOCK_SIZE, align 4
  %74 = call i32 @memcpy(i32 %70, i32 %72, i32 %73)
  %75 = load %struct.page*, %struct.page** %11, align 8
  %76 = call i32 @set_page_dirty(%struct.page* %75)
  %77 = load %struct.page*, %struct.page** %11, align 8
  %78 = call i32 @f2fs_put_page(%struct.page* %77, i32 1)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %63, %57, %45, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_get_node_info(%struct.f2fs_sb_info*, i32, %struct.node_info*) #1

declare dso_local i32 @f2fs_invalidate_blocks(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @dec_valid_node_count(%struct.f2fs_sb_info*, %struct.inode*, i32) #1

declare dso_local i32 @set_node_addr(%struct.f2fs_sb_info*, %struct.node_info*, i32, i32) #1

declare dso_local i32 @f2fs_alloc_nid(%struct.f2fs_sb_info*, i32*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local %struct.page* @f2fs_new_node_page(%struct.dnode_of_data*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_alloc_nid_failed(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @f2fs_alloc_nid_done(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_update_inode_page(%struct.inode*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
