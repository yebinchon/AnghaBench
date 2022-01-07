; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_stuffed_readpage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_aops.c_stuffed_readpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32 }
%struct.page = type { i32 }
%struct.buffer_head = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.page*)* @stuffed_readpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stuffed_readpage(%struct.gfs2_inode* %0, %struct.page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.page* %1, %struct.page** %5, align 8
  %10 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %11 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %10, i32 0, i32 0
  %12 = call i64 @i_size_read(i32* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = call i32 @zero_user(%struct.page* %19, i32 0, i64 %20)
  %22 = load %struct.page*, %struct.page** %5, align 8
  %23 = call i32 @SetPageUptodate(%struct.page* %22)
  store i32 0, i32* %3, align 4
  br label %64

24:                                               ; preds = %2
  %25 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %26 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %25, %struct.buffer_head** %6)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %24
  %32 = load %struct.page*, %struct.page** %5, align 8
  %33 = call i8* @kmap_atomic(%struct.page* %32)
  store i8* %33, i8** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %36 = call i64 @gfs2_max_stuffed_size(%struct.gfs2_inode* %35)
  %37 = icmp sgt i64 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %40 = call i64 @gfs2_max_stuffed_size(%struct.gfs2_inode* %39)
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i8*, i8** %8, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %44 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @memcpy(i8* %42, i64 %46, i64 %47)
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  %52 = load i64, i64* @PAGE_SIZE, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub nsw i64 %52, %53
  %55 = call i32 @memset(i8* %51, i32 0, i64 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @kunmap_atomic(i8* %56)
  %58 = load %struct.page*, %struct.page** %5, align 8
  %59 = call i32 @flush_dcache_page(%struct.page* %58)
  %60 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %61 = call i32 @brelse(%struct.buffer_head* %60)
  %62 = load %struct.page*, %struct.page** %5, align 8
  %63 = call i32 @SetPageUptodate(%struct.page* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %41, %29, %18
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @i_size_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zero_user(%struct.page*, i32, i64) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @gfs2_max_stuffed_size(%struct.gfs2_inode*) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
