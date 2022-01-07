; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_finish_page_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_aops.c_xfs_finish_page_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio_vec = type { i32 }
%struct.iomap_page = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.bio_vec*, i32)* @xfs_finish_page_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_finish_page_writeback(%struct.inode* %0, %struct.bio_vec* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.bio_vec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iomap_page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.bio_vec* %1, %struct.bio_vec** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %9 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.iomap_page* @to_iomap_page(i32 %10)
  store %struct.iomap_page* %11, %struct.iomap_page** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %16 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SetPageError(i32 %17)
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @mapping_set_error(i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %14, %3
  %26 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %27 = icmp ne %struct.iomap_page* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i64 @i_blocksize(%struct.inode* %29)
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ true, %25 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %38 = icmp ne %struct.iomap_page* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %41 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %40, i32 0, i32 0
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp sgt i64 %42, 0
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i1 [ true, %33 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %49 = icmp ne %struct.iomap_page* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.iomap_page*, %struct.iomap_page** %7, align 8
  %52 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %51, i32 0, i32 0
  %53 = call i64 @atomic_dec_and_test(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %44
  %56 = load %struct.bio_vec*, %struct.bio_vec** %5, align 8
  %57 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @end_page_writeback(i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  ret void
}

declare dso_local %struct.iomap_page* @to_iomap_page(i32) #1

declare dso_local i32 @SetPageError(i32) #1

declare dso_local i32 @mapping_set_error(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @i_blocksize(%struct.inode*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @end_page_writeback(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
