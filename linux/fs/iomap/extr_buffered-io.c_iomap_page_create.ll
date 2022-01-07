; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_page_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iomap_page = type { i32, i32, i32 }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iomap_page* (%struct.inode*, %struct.page*)* @iomap_page_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iomap_page* @iomap_page_create(%struct.inode* %0, %struct.page* %1) #0 {
  %3 = alloca %struct.iomap_page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.iomap_page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %7 = load %struct.page*, %struct.page** %5, align 8
  %8 = call %struct.iomap_page* @to_iomap_page(%struct.page* %7)
  store %struct.iomap_page* %8, %struct.iomap_page** %6, align 8
  %9 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  %10 = icmp ne %struct.iomap_page* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @i_blocksize(%struct.inode* %12)
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11, %2
  %17 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  store %struct.iomap_page* %17, %struct.iomap_page** %3, align 8
  br label %45

18:                                               ; preds = %11
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = load i32, i32* @__GFP_NOFAIL, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.iomap_page* @kmalloc(i32 12, i32 %21)
  store %struct.iomap_page* %22, %struct.iomap_page** %6, align 8
  %23 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  %24 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %23, i32 0, i32 2
  %25 = call i32 @atomic_set(i32* %24, i32 0)
  %26 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  %27 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %26, i32 0, i32 1
  %28 = call i32 @atomic_set(i32* %27, i32 0)
  %29 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  %30 = getelementptr inbounds %struct.iomap_page, %struct.iomap_page* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = load i32, i32* @SECTOR_SIZE, align 4
  %34 = sdiv i32 %32, %33
  %35 = call i32 @bitmap_zero(i32 %31, i32 %34)
  %36 = load %struct.page*, %struct.page** %5, align 8
  %37 = call i32 @get_page(%struct.page* %36)
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  %40 = ptrtoint %struct.iomap_page* %39 to i64
  %41 = call i32 @set_page_private(%struct.page* %38, i64 %40)
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = call i32 @SetPagePrivate(%struct.page* %42)
  %44 = load %struct.iomap_page*, %struct.iomap_page** %6, align 8
  store %struct.iomap_page* %44, %struct.iomap_page** %3, align 8
  br label %45

45:                                               ; preds = %18, %16
  %46 = load %struct.iomap_page*, %struct.iomap_page** %3, align 8
  ret %struct.iomap_page* %46
}

declare dso_local %struct.iomap_page* @to_iomap_page(%struct.page*) #1

declare dso_local i32 @i_blocksize(%struct.inode*) #1

declare dso_local %struct.iomap_page* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i64) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
