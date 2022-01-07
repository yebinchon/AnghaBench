; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_page_done.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_bmap.c_gfs2_iomap_page_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.gfs2_trans* }
%struct.gfs2_trans = type { i64 }
%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.iomap = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@I_DIRTY_DATASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, i32, %struct.page*, %struct.iomap*)* @gfs2_iomap_page_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_iomap_page_done(%struct.inode* %0, i32 %1, i32 %2, %struct.page* %3, %struct.iomap* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.iomap*, align 8
  %11 = alloca %struct.gfs2_trans*, align 8
  %12 = alloca %struct.gfs2_inode*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.page* %3, %struct.page** %9, align 8
  store %struct.iomap* %4, %struct.iomap** %10, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.gfs2_trans*, %struct.gfs2_trans** %15, align 8
  store %struct.gfs2_trans* %16, %struct.gfs2_trans** %11, align 8
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %17)
  store %struct.gfs2_inode* %18, %struct.gfs2_inode** %12, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %13, align 8
  %21 = load %struct.page*, %struct.page** %9, align 8
  %22 = icmp ne %struct.page* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %25 = call i32 @gfs2_is_stuffed(%struct.gfs2_inode* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.gfs2_inode*, %struct.gfs2_inode** %12, align 8
  %29 = load %struct.page*, %struct.page** %9, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @offset_in_page(i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @gfs2_page_add_databufs(%struct.gfs2_inode* %28, %struct.page* %29, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %27, %23, %5
  %35 = load %struct.gfs2_trans*, %struct.gfs2_trans** %11, align 8
  %36 = getelementptr inbounds %struct.gfs2_trans, %struct.gfs2_trans* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.inode*, %struct.inode** %6, align 8
  %41 = load i32, i32* @I_DIRTY_DATASYNC, align 4
  %42 = call i32 @__mark_inode_dirty(%struct.inode* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %34
  %44 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %45 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %44)
  ret void
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_page_add_databufs(%struct.gfs2_inode*, %struct.page*, i32, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @__mark_inode_dirty(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
