; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_update_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_super.c_update_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host, i32, i32 }
%struct.gfs2_statfs_change_host = type { i64, i64, i64 }
%struct.buffer_head = type { %struct.gfs2_statfs_change_host* }
%struct.gfs2_inode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_statfs(%struct.gfs2_sbd* %0, %struct.buffer_head* %1, %struct.buffer_head* %2) #0 {
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca %struct.gfs2_statfs_change_host*, align 8
  %10 = alloca %struct.gfs2_statfs_change_host*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %6, align 8
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_inode* @GFS2_I(i32 %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %7, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(i32 %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %8, align 8
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 2
  store %struct.gfs2_statfs_change_host* %20, %struct.gfs2_statfs_change_host** %9, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 1
  store %struct.gfs2_statfs_change_host* %22, %struct.gfs2_statfs_change_host** %10, align 8
  %23 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %24 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %27 = call i32 @gfs2_trans_add_meta(i32 %25, %struct.buffer_head* %26)
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %29 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %32 = call i32 @gfs2_trans_add_meta(i32 %30, %struct.buffer_head* %31)
  %33 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %34 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %33, i32 0, i32 0
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %37 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %9, align 8
  %40 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %44 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %9, align 8
  %47 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  %50 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %51 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %9, align 8
  %54 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %10, align 8
  %58 = call i32 @memset(%struct.gfs2_statfs_change_host* %57, i32 0, i32 4)
  %59 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %60 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %59, i32 0, i32 0
  %61 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %60, align 8
  %62 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %61, i64 4
  %63 = call i32 @memset(%struct.gfs2_statfs_change_host* %62, i32 0, i32 4)
  %64 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %9, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load %struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host** %66, align 8
  %68 = getelementptr inbounds %struct.gfs2_statfs_change_host, %struct.gfs2_statfs_change_host* %67, i64 4
  %69 = call i32 @gfs2_statfs_change_out(%struct.gfs2_statfs_change_host* %64, %struct.gfs2_statfs_change_host* %68)
  %70 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %71 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(%struct.gfs2_statfs_change_host*, i32, i32) #1

declare dso_local i32 @gfs2_statfs_change_out(%struct.gfs2_statfs_change_host*, %struct.gfs2_statfs_change_host*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
