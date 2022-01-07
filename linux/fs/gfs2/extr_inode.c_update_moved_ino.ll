; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_update_moved_ino.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_inode.c_update_moved_ino.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@gfs2_qdotdot = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.gfs2_inode*, i32)* @update_moved_ino to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_moved_ino(%struct.gfs2_inode* %0, %struct.gfs2_inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store %struct.gfs2_inode* %1, %struct.gfs2_inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %13 = load i32, i32* @DT_DIR, align 4
  %14 = call i32 @gfs2_dir_mvino(%struct.gfs2_inode* %11, i32* @gfs2_qdotdot, %struct.gfs2_inode* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %16, i32 0, i32 0
  %18 = call i32 @current_time(%struct.TYPE_3__* %17)
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 0
  %24 = call i32 @mark_inode_dirty_sync(%struct.TYPE_3__* %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %10
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @gfs2_dir_mvino(%struct.gfs2_inode*, i32*, %struct.gfs2_inode*, i32) #1

declare dso_local i32 @current_time(%struct.TYPE_3__*) #1

declare dso_local i32 @mark_inode_dirty_sync(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
