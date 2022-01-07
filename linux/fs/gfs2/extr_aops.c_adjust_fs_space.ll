; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_adjust_fs_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_adjust_fs_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.gfs2_sbd = type { i64, i32, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32 }
%struct.gfs2_statfs_change_host = type { i64 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i64 }

@RES_STATFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"File system extended by %llu blocks.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adjust_fs_space(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_statfs_change_host*, align 8
  %7 = alloca %struct.gfs2_statfs_change_host*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %3, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.gfs2_inode* @GFS2_I(i32 %16)
  store %struct.gfs2_inode* %17, %struct.gfs2_inode** %4, align 8
  %18 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %19 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.gfs2_inode* @GFS2_I(i32 %20)
  store %struct.gfs2_inode* %21, %struct.gfs2_inode** %5, align 8
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %22, i32 0, i32 3
  store %struct.gfs2_statfs_change_host* %23, %struct.gfs2_statfs_change_host** %6, align 8
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 2
  store %struct.gfs2_statfs_change_host* %25, %struct.gfs2_statfs_change_host** %7, align 8
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %27 = load i32, i32* @RES_STATFS, align 4
  %28 = mul nsw i32 2, %27
  %29 = call i64 @gfs2_trans_begin(%struct.gfs2_sbd* %26, i32 %28, i32 0)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %99

32:                                               ; preds = %1
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %34 = call i64 @gfs2_ri_total(%struct.gfs2_sbd* %33)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %36 = call i64 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %35, %struct.buffer_head** %8)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %94

39:                                               ; preds = %32
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %41 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %40, i32 0, i32 1
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, 4
  %48 = call i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host* %43, i64 %47)
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %51 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %7, align 8
  %54 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = icmp sgt i64 %49, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %39
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %6, align 8
  %61 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %7, align 8
  %64 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = sub nsw i64 %59, %66
  store i64 %67, i64* %11, align 8
  br label %69

68:                                               ; preds = %39
  store i64 0, i64* %11, align 8
  br label %69

69:                                               ; preds = %68, %58
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %71 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %70, i32 0, i32 1
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @fs_warn(%struct.gfs2_sbd* %73, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %74)
  %76 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @gfs2_statfs_change(%struct.gfs2_sbd* %76, i64 %77, i64 %78, i32 0)
  %80 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %81 = call i64 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %80, %struct.buffer_head** %9)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %69
  br label %91

84:                                               ; preds = %69
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %88 = call i32 @update_statfs(%struct.gfs2_sbd* %85, %struct.buffer_head* %86, %struct.buffer_head* %87)
  %89 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  br label %91

91:                                               ; preds = %84, %83
  %92 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  br label %94

94:                                               ; preds = %91, %38
  %95 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %96 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %98 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %97)
  br label %99

99:                                               ; preds = %94, %31
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i64 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i64 @gfs2_ri_total(%struct.gfs2_sbd*) #1

declare dso_local i64 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_statfs_change_in(%struct.gfs2_statfs_change_host*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fs_warn(%struct.gfs2_sbd*, i8*, i64) #1

declare dso_local i32 @gfs2_statfs_change(%struct.gfs2_sbd*, i64, i64, i32) #1

declare dso_local i32 @update_statfs(%struct.gfs2_sbd*, %struct.buffer_head*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
