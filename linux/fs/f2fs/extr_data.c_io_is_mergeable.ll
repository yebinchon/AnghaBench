; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_io_is_mergeable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_data.c_io_is_mergeable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.bio = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.f2fs_bio_info = type { i32 }
%struct.f2fs_io_info = type { i64 }

@DATA = common dso_local global i64 0, align 8
@NODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.bio*, %struct.f2fs_bio_info*, %struct.f2fs_io_info*, i32, i32)* @io_is_mergeable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_is_mergeable(%struct.f2fs_sb_info* %0, %struct.bio* %1, %struct.f2fs_bio_info* %2, %struct.f2fs_io_info* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_sb_info*, align 8
  %9 = alloca %struct.bio*, align 8
  %10 = alloca %struct.f2fs_bio_info*, align 8
  %11 = alloca %struct.f2fs_io_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %8, align 8
  store %struct.bio* %1, %struct.bio** %9, align 8
  store %struct.f2fs_bio_info* %2, %struct.f2fs_bio_info** %10, align 8
  store %struct.f2fs_io_info* %3, %struct.f2fs_io_info** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %18 = call i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %57

20:                                               ; preds = %6
  %21 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %11, align 8
  %22 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DATA, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %11, align 8
  %28 = getelementptr inbounds %struct.f2fs_io_info, %struct.f2fs_io_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NODE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %26, %20
  %33 = load %struct.bio*, %struct.bio** %9, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @F2FS_BYTES_TO_BLK(i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %39 = call i32 @F2FS_IO_SIZE(%struct.f2fs_sb_info* %38)
  store i32 %39, i32* %15, align 4
  %40 = load %struct.bio*, %struct.bio** %9, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bio*, %struct.bio** %9, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub i32 %42, %45
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %15, align 4
  %49 = urem i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %32
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %69

56:                                               ; preds = %51, %32
  br label %57

57:                                               ; preds = %56, %26, %6
  %58 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %8, align 8
  %59 = load %struct.bio*, %struct.bio** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @page_is_mergeable(%struct.f2fs_sb_info* %58, %struct.bio* %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.f2fs_bio_info*, %struct.f2fs_bio_info** %10, align 8
  %67 = load %struct.f2fs_io_info*, %struct.f2fs_io_info** %11, align 8
  %68 = call i32 @io_type_is_mergeable(%struct.f2fs_bio_info* %66, %struct.f2fs_io_info* %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %64, %55
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i64 @F2FS_IO_ALIGNED(%struct.f2fs_sb_info*) #1

declare dso_local i32 @F2FS_BYTES_TO_BLK(i32) #1

declare dso_local i32 @F2FS_IO_SIZE(%struct.f2fs_sb_info*) #1

declare dso_local i32 @page_is_mergeable(%struct.f2fs_sb_info*, %struct.bio*, i32, i32) #1

declare dso_local i32 @io_type_is_mergeable(%struct.f2fs_bio_info*, %struct.f2fs_io_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
