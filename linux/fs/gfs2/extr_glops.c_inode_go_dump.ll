; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_dump.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_inode_go_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.gfs2_glock = type { %struct.gfs2_inode* }
%struct.gfs2_inode = type { i64, i32, %struct.inode, i64, i64 }
%struct.inode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [56 x i8] c"%s I: n:%llu/%llu t:%u f:0x%02lx d:0x%08x s:%llu p:%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.gfs2_glock*, i8*)* @inode_go_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inode_go_dump(%struct.seq_file* %0, %struct.gfs2_glock* %1, i8* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.gfs2_glock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.gfs2_glock* %1, %struct.gfs2_glock** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %5, align 8
  %11 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %10, i32 0, i32 0
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %11, align 8
  store %struct.gfs2_inode* %12, %struct.gfs2_inode** %7, align 8
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 2
  store %struct.inode* %14, %struct.inode** %8, align 8
  %15 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %16 = icmp eq %struct.gfs2_inode* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.inode*, %struct.inode** %8, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @xa_lock_irq(i32* %21)
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %9, align 8
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @xa_unlock_irq(i32* %29)
  %31 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %40 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @IF2DT(i32 %42)
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %48 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = call i64 @i_size_read(%struct.inode* %51)
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @gfs2_print_dbg(%struct.seq_file* %31, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %32, i64 %35, i64 %38, i32 %43, i32 %46, i32 %50, i64 %52, i64 %53)
  br label %55

55:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @xa_lock_irq(i32*) #1

declare dso_local i32 @xa_unlock_irq(i32*) #1

declare dso_local i32 @gfs2_print_dbg(%struct.seq_file*, i8*, i8*, i64, i64, i32, i32, i32, i64, i64) #1

declare dso_local i32 @IF2DT(i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
