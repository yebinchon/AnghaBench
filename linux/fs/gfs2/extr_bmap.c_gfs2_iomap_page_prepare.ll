; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_page_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_page_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.iomap = type { i32 }
%struct.gfs2_sbd = type { i32 }

@RES_DINODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32, %struct.iomap*)* @gfs2_iomap_page_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_iomap_page_prepare(%struct.inode* %0, i32 %1, i32 %2, %struct.iomap* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iomap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.iomap* %3, %struct.iomap** %8, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = call i32 @i_blocksize(%struct.inode* %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %9, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = add i32 %19, %20
  %22 = load i32, i32* %9, align 4
  %23 = add i32 %21, %22
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = lshr i32 %23, %26
  store i32 %27, i32* %11, align 4
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %29 = load i64, i64* @RES_DINODE, align 8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %28, i64 %32, i32 0)
  ret i32 %33
}

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
