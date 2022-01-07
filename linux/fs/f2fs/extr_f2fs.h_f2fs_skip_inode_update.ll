; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_skip_inode_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_skip_inode_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.f2fs_sb_info = type { i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }

@DIRTY_META = common dso_local global i64 0, align 8
@FI_AUTO_RECOVER = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @f2fs_skip_inode_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f2fs_skip_inode_update(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.f2fs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %2
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode* %11)
  store %struct.f2fs_sb_info* %12, %struct.f2fs_sb_info** %7, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %14 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @DIRTY_META, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 4
  %22 = call i32 @list_empty(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %7, align 8
  %24 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @DIRTY_META, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %2
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load i32, i32* @FI_AUTO_RECOVER, align 4
  %33 = call i32 @is_inode_flag_set(%struct.inode* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i64 @file_keep_isize(%struct.inode* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %35
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @i_size_read(%struct.inode* %40)
  %42 = load i32, i32* @PAGE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %35, %30
  store i32 0, i32* %3, align 4
  br label %109

47:                                               ; preds = %39
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = call i32 @timespec64_equal(i64 %51, i32* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %109

57:                                               ; preds = %47
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = call i32 @timespec64_equal(i64 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %109

68:                                               ; preds = %57
  %69 = load %struct.inode*, %struct.inode** %4, align 8
  %70 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %69)
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 2
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = call i32 @timespec64_equal(i64 %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %109

79:                                               ; preds = %68
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 3
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = call i32 @timespec64_equal(i64 %84, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %109

91:                                               ; preds = %79
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = call i32 @down_read(i32* %94)
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.inode*, %struct.inode** %4, align 8
  %101 = call i32 @i_size_read(%struct.inode* %100)
  %102 = icmp eq i32 %99, %101
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %6, align 4
  %104 = load %struct.inode*, %struct.inode** %4, align 8
  %105 = call %struct.TYPE_2__* @F2FS_I(%struct.inode* %104)
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = call i32 @up_read(i32* %106)
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %91, %90, %78, %67, %56, %46, %10
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.f2fs_sb_info* @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_2__* @F2FS_I(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @is_inode_flag_set(%struct.inode*, i32) #1

declare dso_local i64 @file_keep_isize(%struct.inode*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @timespec64_equal(i64, i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
