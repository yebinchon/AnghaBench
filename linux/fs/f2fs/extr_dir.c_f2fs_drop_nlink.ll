; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_drop_nlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_dir.c_f2fs_drop_nlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_drop_nlink(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %6)
  store %struct.f2fs_sb_info* %7, %struct.f2fs_sb_info** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @S_ISDIR(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call i32 @f2fs_i_links_write(%struct.inode* %18, i32 0)
  br label %20

20:                                               ; preds = %17, %2
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call i32 @current_time(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @f2fs_i_links_write(%struct.inode* %25, i32 0)
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @S_ISDIR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @f2fs_i_links_write(%struct.inode* %33, i32 0)
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = call i32 @f2fs_i_size_write(%struct.inode* %35, i32 0)
  br label %37

37:                                               ; preds = %32, %20
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @up_write(i32* %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = call i32 @f2fs_add_orphan_inode(%struct.inode* %47)
  br label %52

49:                                               ; preds = %37
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %51 = call i32 @f2fs_release_orphan_inode(%struct.f2fs_sb_info* %50)
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @f2fs_i_links_write(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @f2fs_i_size_write(%struct.inode*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @f2fs_add_orphan_inode(%struct.inode*) #1

declare dso_local i32 @f2fs_release_orphan_inode(%struct.f2fs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
