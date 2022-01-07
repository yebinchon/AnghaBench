; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_update_dirty_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_checkpoint.c_f2fs_update_dirty_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32* }

@DIR_INODE = common dso_local global i32 0, align 4
@FILE_INODE = common dso_local global i32 0, align 4
@DATA_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_update_dirty_page(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.page* %1, %struct.page** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %7)
  store %struct.f2fs_sb_info* %8, %struct.f2fs_sb_info** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISDIR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @DIR_INODE, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @FILE_INODE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %6, align 4
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISDIR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %18
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @S_ISREG(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @S_ISLNK(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %72

38:                                               ; preds = %31, %25, %18
  %39 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %40 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @FILE_INODE, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %38
  %50 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %51 = load i32, i32* @DATA_FLUSH, align 4
  %52 = call i64 @test_opt(%struct.f2fs_sb_info* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49, %38
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @__add_dirty_inode(%struct.inode* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.inode*, %struct.inode** %3, align 8
  %60 = call i32 @inode_inc_dirty_pages(%struct.inode* %59)
  %61 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %62 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load %struct.page*, %struct.page** %4, align 8
  %69 = call i32 @f2fs_set_page_private(%struct.page* %68, i32 0)
  %70 = load %struct.page*, %struct.page** %4, align 8
  %71 = call i32 @f2fs_trace_pid(%struct.page* %70)
  br label %72

72:                                               ; preds = %58, %37
  ret void
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_opt(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @__add_dirty_inode(%struct.inode*, i32) #1

declare dso_local i32 @inode_inc_dirty_pages(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @f2fs_set_page_private(%struct.page*, i32) #1

declare dso_local i32 @f2fs_trace_pid(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
