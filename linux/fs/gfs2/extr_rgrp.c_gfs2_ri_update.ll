; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_ri_update.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_ri_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @gfs2_ri_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_ri_update(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %6 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %7 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %6, i32 0, i32 0
  %8 = call %struct.gfs2_sbd* @GFS2_SB(i32* %7)
  store %struct.gfs2_sbd* %8, %struct.gfs2_sbd** %4, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %11 = call i32 @read_rindex_entry(%struct.gfs2_inode* %10)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %9, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %25

20:                                               ; preds = %15
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %22 = call i32 @set_rgrp_preferences(%struct.gfs2_sbd* %21)
  %23 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %24 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @read_rindex_entry(%struct.gfs2_inode*) #1

declare dso_local i32 @set_rgrp_preferences(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
