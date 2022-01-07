; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_truncate_xattr_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_truncate_xattr_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.dnode_of_data = type { i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_truncate_xattr_node(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dnode_of_data, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %9)
  store %struct.f2fs_sb_info* %10, %struct.f2fs_sb_info** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info* %19, i32 %20)
  store %struct.page* %21, %struct.page** %7, align 8
  %22 = load %struct.page*, %struct.page** %7, align 8
  %23 = call i64 @IS_ERR(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.page*, %struct.page** %7, align 8
  %27 = call i32 @PTR_ERR(%struct.page* %26)
  store i32 %27, i32* %2, align 4
  br label %43

28:                                               ; preds = %18
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = load %struct.page*, %struct.page** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @set_new_dnode(%struct.dnode_of_data* %6, %struct.inode* %29, i32* null, %struct.page* %30, i32 %31)
  %33 = call i32 @truncate_node(%struct.dnode_of_data* %6)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = call i32 @f2fs_put_page(%struct.page* %37, i32 1)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %28
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = call i32 @f2fs_i_xnid_write(%struct.inode* %41, i32 0)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %36, %25, %17
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local %struct.page* @f2fs_get_node_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, %struct.page*, i32) #1

declare dso_local i32 @truncate_node(%struct.dnode_of_data*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @f2fs_i_xnid_write(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
