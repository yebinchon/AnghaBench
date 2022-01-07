; ModuleID = '/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_read_page_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/iomap/extr_buffered-io.c_iomap_read_page_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }
%struct.iomap = type { i64, i32 }
%struct.bio_vec = type { i32 }
%struct.bio = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@IOMAP_MAPPED = common dso_local global i64 0, align 8
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.page*, i32, i32, i32, i32, %struct.iomap*)* @iomap_read_page_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iomap_read_page_sync(%struct.inode* %0, i64 %1, %struct.page* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.iomap* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.iomap*, align 8
  %18 = alloca %struct.bio_vec, align 4
  %19 = alloca %struct.bio, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.page* %2, %struct.page** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.iomap* %7, %struct.iomap** %17, align 8
  %20 = load %struct.iomap*, %struct.iomap** %17, align 8
  %21 = getelementptr inbounds %struct.iomap, %struct.iomap* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IOMAP_MAPPED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.inode*, %struct.inode** %10, align 8
  %28 = call i64 @i_size_read(%struct.inode* %27)
  %29 = icmp sge i64 %26, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %25, %8
  %31 = load %struct.page*, %struct.page** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %14, align 4
  %37 = add i32 %35, %36
  %38 = call i32 @zero_user_segments(%struct.page* %31, i32 %32, i32 %33, i32 %34, i32 %37)
  %39 = load %struct.page*, %struct.page** %12, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @iomap_set_range_uptodate(%struct.page* %39, i32 %40, i32 %41)
  store i32 0, i32* %9, align 4
  br label %61

43:                                               ; preds = %25
  %44 = call i32 @bio_init(%struct.bio* %19, %struct.bio_vec* %18, i32 1)
  %45 = load i32, i32* @REQ_OP_READ, align 4
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.iomap*, %struct.iomap** %17, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @iomap_sector(%struct.iomap* %47, i64 %48)
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.iomap*, %struct.iomap** %17, align 8
  %53 = getelementptr inbounds %struct.iomap, %struct.iomap* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @bio_set_dev(%struct.bio* %19, i32 %54)
  %56 = load %struct.page*, %struct.page** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @__bio_add_page(%struct.bio* %19, %struct.page* %56, i32 %57, i32 %58)
  %60 = call i32 @submit_bio_wait(%struct.bio* %19)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %43, %30
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i32 @zero_user_segments(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @iomap_set_range_uptodate(%struct.page*, i32, i32) #1

declare dso_local i32 @bio_init(%struct.bio*, %struct.bio_vec*, i32) #1

declare dso_local i32 @iomap_sector(%struct.iomap*, i64) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @__bio_add_page(%struct.bio*, %struct.page*, i32, i32) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
