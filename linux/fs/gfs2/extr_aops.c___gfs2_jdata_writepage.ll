; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c___gfs2_jdata_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c___gfs2_jdata_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.writeback_control = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@BH_Dirty = common dso_local global i32 0, align 4
@BH_Uptodate = common dso_local global i32 0, align 4
@gfs2_get_block_noalloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @__gfs2_jdata_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gfs2_jdata_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.writeback_control*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %4, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %6, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %15)
  store %struct.gfs2_sbd* %16, %struct.gfs2_sbd** %7, align 8
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i64 @PageChecked(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %2
  %21 = load %struct.page*, %struct.page** %3, align 8
  %22 = call i32 @ClearPageChecked(%struct.page* %21)
  %23 = load %struct.page*, %struct.page** %3, align 8
  %24 = call i32 @page_has_buffers(%struct.page* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %20
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BH_Dirty, align 4
  %34 = call i32 @BIT(i32 %33)
  %35 = load i32, i32* @BH_Uptodate, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i32 @create_empty_buffers(%struct.page* %27, i32 %32, i32 %37)
  br label %39

39:                                               ; preds = %26, %20
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %43 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gfs2_page_add_databufs(%struct.gfs2_inode* %40, %struct.page* %41, i32 0, i32 %46)
  br label %48

48:                                               ; preds = %39, %2
  %49 = load %struct.page*, %struct.page** %3, align 8
  %50 = load i32, i32* @gfs2_get_block_noalloc, align 4
  %51 = load %struct.writeback_control*, %struct.writeback_control** %4, align 8
  %52 = call i32 @gfs2_write_full_page(%struct.page* %49, i32 %50, %struct.writeback_control* %51)
  ret i32 %52
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local i32 @ClearPageChecked(%struct.page*) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @create_empty_buffers(%struct.page*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @gfs2_page_add_databufs(%struct.gfs2_inode*, %struct.page*, i32, i32) #1

declare dso_local i32 @gfs2_write_full_page(%struct.page*, i32, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
