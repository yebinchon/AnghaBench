; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_convert_inline_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_inline.c_f2fs_convert_inline_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i32 }
%struct.page = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_convert_inline_inode(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca %struct.dnode_of_data, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %4, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call i64 @f2fs_has_inline_data(%struct.inode* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.page* @f2fs_grab_cache_page(i32 %18, i32 0, i32 0)
  store %struct.page* %19, %struct.page** %7, align 8
  %20 = load %struct.page*, %struct.page** %7, align 8
  %21 = icmp ne %struct.page* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %62

25:                                               ; preds = %15
  %26 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %27 = call i32 @f2fs_lock_op(%struct.f2fs_sb_info* %26)
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %28, i32 %31)
  store %struct.page* %32, %struct.page** %6, align 8
  %33 = load %struct.page*, %struct.page** %6, align 8
  %34 = call i64 @IS_ERR(%struct.page* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load %struct.page*, %struct.page** %6, align 8
  %38 = call i32 @PTR_ERR(%struct.page* %37)
  store i32 %38, i32* %8, align 4
  br label %52

39:                                               ; preds = %25
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = load %struct.page*, %struct.page** %6, align 8
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = call i32 @set_new_dnode(%struct.dnode_of_data* %5, %struct.inode* %40, %struct.page* %41, %struct.page* %42, i32 0)
  %44 = load %struct.inode*, %struct.inode** %3, align 8
  %45 = call i64 @f2fs_has_inline_data(%struct.inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.page*, %struct.page** %7, align 8
  %49 = call i32 @f2fs_convert_inline_page(%struct.dnode_of_data* %5, %struct.page* %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47, %39
  %51 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %5)
  br label %52

52:                                               ; preds = %50, %36
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %54 = call i32 @f2fs_unlock_op(%struct.f2fs_sb_info* %53)
  %55 = load %struct.page*, %struct.page** %7, align 8
  %56 = call i32 @f2fs_put_page(%struct.page* %55, i32 1)
  %57 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %58 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @f2fs_balance_fs(%struct.f2fs_sb_info* %57, i32 %59)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %52, %22, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @f2fs_has_inline_data(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_grab_cache_page(i32, i32, i32) #1

declare dso_local i32 @f2fs_lock_op(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, %struct.page*, %struct.page*, i32) #1

declare dso_local i32 @f2fs_convert_inline_page(%struct.dnode_of_data*, %struct.page*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_unlock_op(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_balance_fs(%struct.f2fs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
