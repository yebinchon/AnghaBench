; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_update_parent_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_update_parent_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FI_NEW_INODE = common dso_local global i32 0, align 4
@FI_INC_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_update_parent_metadata(%struct.inode* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.inode*, %struct.inode** %5, align 8
  %8 = icmp ne %struct.inode* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = load i32, i32* @FI_NEW_INODE, align 4
  %12 = call i64 @is_inode_flag_set(%struct.inode* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISDIR(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @f2fs_i_links_write(%struct.inode* %21, i32 1)
  br label %23

23:                                               ; preds = %20, %14
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load i32, i32* @FI_NEW_INODE, align 4
  %26 = call i32 @clear_inode_flag(%struct.inode* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %9, %3
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @current_time(%struct.inode* %28)
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @f2fs_mark_inode_dirty_sync(%struct.inode* %34, i32 0)
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @f2fs_i_depth_write(%struct.inode* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %27
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = icmp ne %struct.inode* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = load i32, i32* @FI_INC_LINK, align 4
  %52 = call i64 @is_inode_flag_set(%struct.inode* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load i32, i32* @FI_INC_LINK, align 4
  %57 = call i32 @clear_inode_flag(%struct.inode* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49, %46
  ret void
}

declare dso_local i64 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @f2fs_i_links_write(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_mark_inode_dirty_sync(%struct.inode*, i32) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @f2fs_i_depth_write(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
