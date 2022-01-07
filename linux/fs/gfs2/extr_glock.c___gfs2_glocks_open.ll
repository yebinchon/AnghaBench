; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c___gfs2_glocks_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glock.c___gfs2_glocks_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { i32, i64, %struct.gfs2_glock_iter* }
%struct.gfs2_glock_iter = type { i32, i32, i32*, i32 }
%struct.seq_operations = type { i32 }

@GFS2_SEQ_GOODSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@gl_hash_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.seq_operations*)* @__gfs2_glocks_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gfs2_glocks_open(%struct.inode* %0, %struct.file* %1, %struct.seq_operations* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.seq_operations*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.seq_file*, align 8
  %9 = alloca %struct.gfs2_glock_iter*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.seq_operations* %2, %struct.seq_operations** %6, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = load %struct.seq_operations*, %struct.seq_operations** %6, align 8
  %12 = call i32 @seq_open_private(%struct.file* %10, %struct.seq_operations* %11, i32 24)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.seq_file*, %struct.seq_file** %17, align 8
  store %struct.seq_file* %18, %struct.seq_file** %8, align 8
  %19 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %20 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %19, i32 0, i32 2
  %21 = load %struct.gfs2_glock_iter*, %struct.gfs2_glock_iter** %20, align 8
  store %struct.gfs2_glock_iter* %21, %struct.gfs2_glock_iter** %9, align 8
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gfs2_glock_iter*, %struct.gfs2_glock_iter** %9, align 8
  %26 = getelementptr inbounds %struct.gfs2_glock_iter, %struct.gfs2_glock_iter* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @GFS2_SEQ_GOODSIZE, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = load i32, i32* @__GFP_NOWARN, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @kmalloc(i32 %27, i32 %30)
  %32 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %33 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %35 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %15
  %39 = load i32, i32* @GFS2_SEQ_GOODSIZE, align 4
  %40 = load %struct.seq_file*, %struct.seq_file** %8, align 8
  %41 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %15
  %43 = load %struct.gfs2_glock_iter*, %struct.gfs2_glock_iter** %9, align 8
  %44 = getelementptr inbounds %struct.gfs2_glock_iter, %struct.gfs2_glock_iter* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.gfs2_glock_iter*, %struct.gfs2_glock_iter** %9, align 8
  %46 = getelementptr inbounds %struct.gfs2_glock_iter, %struct.gfs2_glock_iter* %45, i32 0, i32 2
  store i32* null, i32** %46, align 8
  %47 = load %struct.gfs2_glock_iter*, %struct.gfs2_glock_iter** %9, align 8
  %48 = getelementptr inbounds %struct.gfs2_glock_iter, %struct.gfs2_glock_iter* %47, i32 0, i32 1
  %49 = call i32 @rhashtable_walk_enter(i32* @gl_hash_table, i32* %48)
  br label %50

50:                                               ; preds = %42, %3
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @seq_open_private(%struct.file*, %struct.seq_operations*, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @rhashtable_walk_enter(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
