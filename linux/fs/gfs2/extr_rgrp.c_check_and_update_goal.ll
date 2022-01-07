; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_check_and_update_goal.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_check_and_update_goal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_and_update_goal(%struct.gfs2_inode* %0) #0 {
  %2 = alloca %struct.gfs2_inode*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %2, align 8
  %4 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %4, i32 0, i32 2
  %6 = call %struct.gfs2_sbd* @GFS2_SB(i32* %5)
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %13 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %12, i32 %15, i32 1)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11, %1
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %2, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %11
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
