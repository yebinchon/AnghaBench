; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c___gfs2_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c___gfs2_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gfs2_inode = type { i32 }
%struct.gfs2_sbd = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@gfs2_iomap_ops = common dso_local global i32 0, align 4
@gfs2_block_map = common dso_local global i32 0, align 4
@SDF_WITHDRAWN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.page*)* @__gfs2_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__gfs2_readpage(i8* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %9 = load %struct.page*, %struct.page** %5, align 8
  %10 = getelementptr inbounds %struct.page, %struct.page* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.gfs2_inode* @GFS2_I(i32 %13)
  store %struct.gfs2_inode* %14, %struct.gfs2_inode** %6, align 8
  %15 = load %struct.page*, %struct.page** %5, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.gfs2_sbd* @GFS2_SB(i32 %19)
  store %struct.gfs2_sbd* %20, %struct.gfs2_sbd** %7, align 8
  %21 = load %struct.page*, %struct.page** %5, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @i_blocksize(i32 %25)
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = call i32 @page_has_buffers(%struct.page* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = call i32 @iomap_readpage(%struct.page* %34, i32* @gfs2_iomap_ops)
  store i32 %35, i32* %8, align 4
  br label %51

36:                                               ; preds = %29, %2
  %37 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %38 = call i64 @gfs2_is_stuffed(%struct.gfs2_inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = call i32 @stuffed_readpage(%struct.gfs2_inode* %41, %struct.page* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.page*, %struct.page** %5, align 8
  %45 = call i32 @unlock_page(%struct.page* %44)
  br label %50

46:                                               ; preds = %36
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = load i32, i32* @gfs2_block_map, align 4
  %49 = call i32 @mpage_readpage(%struct.page* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %40
  br label %51

51:                                               ; preds = %50, %33
  %52 = load i32, i32* @SDF_WITHDRAWN, align 4
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %54 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %53, i32 0, i32 0
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %51
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %58
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32) #1

declare dso_local i64 @i_blocksize(i32) #1

declare dso_local i32 @page_has_buffers(%struct.page*) #1

declare dso_local i32 @iomap_readpage(%struct.page*, i32*) #1

declare dso_local i64 @gfs2_is_stuffed(%struct.gfs2_inode*) #1

declare dso_local i32 @stuffed_readpage(%struct.gfs2_inode*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @mpage_readpage(%struct.page*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
