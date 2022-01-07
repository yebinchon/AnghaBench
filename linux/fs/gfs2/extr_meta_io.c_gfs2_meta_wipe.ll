; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_wipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_meta_io.c_gfs2_meta_wipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }

@NO_CREATE = common dso_local global i32 0, align 4
@REMOVE_META = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_meta_wipe(%struct.gfs2_inode* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %10 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %9, i32 0, i32 1
  %11 = call %struct.gfs2_sbd* @GFS2_SB(i32* %10)
  store %struct.gfs2_sbd* %11, %struct.gfs2_sbd** %7, align 8
  br label %12

12:                                               ; preds = %38, %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @NO_CREATE, align 4
  %21 = call %struct.buffer_head* @gfs2_getbuf(i32 %18, i32 %19, i32 %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %8, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %23 = icmp ne %struct.buffer_head* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %15
  %25 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %26 = call i32 @lock_buffer(%struct.buffer_head* %25)
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %28 = call i32 @gfs2_log_lock(%struct.gfs2_sbd* %27)
  %29 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %30 = load i32, i32* @REMOVE_META, align 4
  %31 = call i32 @gfs2_remove_from_journal(%struct.buffer_head* %29, i32 %30)
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %33 = call i32 @gfs2_log_unlock(%struct.gfs2_sbd* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = call i32 @unlock_buffer(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %37 = call i32 @brelse(%struct.buffer_head* %36)
  br label %38

38:                                               ; preds = %24, %15
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %6, align 8
  br label %12

43:                                               ; preds = %12
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local %struct.buffer_head* @gfs2_getbuf(i32, i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_log_lock(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_remove_from_journal(%struct.buffer_head*, i32) #1

declare dso_local i32 @gfs2_log_unlock(%struct.gfs2_sbd*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
