; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_change.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_gfs2_statfs_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.TYPE_2__, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_statfs_change_host = type { i32, i32, i32 }
%struct.gfs2_inode = type { i32 }
%struct.buffer_head = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_statfs_change(%struct.gfs2_sbd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_statfs_change_host*, align 8
  %11 = alloca %struct.gfs2_statfs_change_host*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %18 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.gfs2_inode* @GFS2_I(i32 %19)
  store %struct.gfs2_inode* %20, %struct.gfs2_inode** %9, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 3
  store %struct.gfs2_statfs_change_host* %22, %struct.gfs2_statfs_change_host** %10, align 8
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 2
  store %struct.gfs2_statfs_change_host* %24, %struct.gfs2_statfs_change_host** %11, align 8
  store i32 0, i32* %15, align 4
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %26 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %25, %struct.buffer_head** %12)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %4
  br label %99

30:                                               ; preds = %4
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %32 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %35 = call i32 @gfs2_trans_add_meta(i32 %33, %struct.buffer_head* %34)
  %36 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %37 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %36, i32 0, i32 0
  %38 = call i32 @spin_lock(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %41 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %46 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %51 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %56 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 4
  %59 = call i32 @gfs2_statfs_change_out(%struct.gfs2_statfs_change_host* %54, i64 %58)
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %61 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %30
  %66 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %67 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 100, %68
  store i32 %69, i32* %13, align 4
  %70 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %11, align 8
  %71 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %74 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %72, %76
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp sle i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %65
  store i32 1, i32* %15, align 4
  br label %87

87:                                               ; preds = %86, %81
  br label %88

88:                                               ; preds = %87, %30
  %89 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %90 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %89, i32 0, i32 0
  %91 = call i32 @spin_unlock(i32* %90)
  %92 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %93 = call i32 @brelse(%struct.buffer_head* %92)
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %98 = call i32 @gfs2_wake_up_statfs(%struct.gfs2_sbd* %97)
  br label %99

99:                                               ; preds = %29, %96, %88
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gfs2_statfs_change_out(%struct.gfs2_statfs_change_host*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_wake_up_statfs(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
