; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_hole_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_hole_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.metapath = type { i32 }
%struct.iomap = type { i32 }

@gfs2_hole_walker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, %struct.metapath*, %struct.iomap*)* @gfs2_hole_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_hole_size(%struct.inode* %0, i32 %1, i32 %2, %struct.metapath* %3, %struct.iomap* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.metapath*, align 8
  %10 = alloca %struct.iomap*, align 8
  %11 = alloca %struct.metapath, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.metapath* %3, %struct.metapath** %9, align 8
  store %struct.iomap* %4, %struct.iomap** %10, align 8
  %14 = load %struct.metapath*, %struct.metapath** %9, align 8
  %15 = call i32 @clone_metapath(%struct.metapath* %11, %struct.metapath* %14)
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @gfs2_hole_walker, align 4
  %19 = call i32 @gfs2_walk_metadata(%struct.inode* %16, %struct.metapath* %11, i32 %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %42

23:                                               ; preds = %5
  %24 = load i32, i32* %13, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @GFS2_SB(%struct.inode* %27)
  %29 = call i32 @metapath_to_block(i32 %28, %struct.metapath* %11)
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %35, %38
  %40 = load %struct.iomap*, %struct.iomap** %10, align 8
  %41 = getelementptr inbounds %struct.iomap, %struct.iomap* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %34, %22
  %43 = call i32 @release_metapath(%struct.metapath* %11)
  %44 = load i32, i32* %13, align 4
  ret i32 %44
}

declare dso_local i32 @clone_metapath(%struct.metapath*, %struct.metapath*) #1

declare dso_local i32 @gfs2_walk_metadata(%struct.inode*, %struct.metapath*, i32, i32) #1

declare dso_local i32 @metapath_to_block(i32, %struct.metapath*) #1

declare dso_local i32 @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @release_metapath(%struct.metapath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
