; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_free_segmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_build_free_segmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.free_segmap_info = type { i32, i64, i64, i32, i8*, i8* }
%struct.TYPE_2__ = type { %struct.free_segmap_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @build_free_segmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_free_segmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.free_segmap_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.free_segmap_info* @f2fs_kzalloc(%struct.f2fs_sb_info* %7, i32 48, i32 %8)
  store %struct.free_segmap_info* %9, %struct.free_segmap_info** %4, align 8
  %10 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %11 = icmp ne %struct.free_segmap_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %77

15:                                               ; preds = %1
  %16 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = call %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.free_segmap_info* %16, %struct.free_segmap_info** %19, align 8
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = call i32 @MAIN_SEGS(%struct.f2fs_sb_info* %20)
  %22 = call i32 @f2fs_bitmap_size(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @f2fs_kvmalloc(%struct.f2fs_sb_info* %23, i32 %24, i32 %25)
  %27 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %28 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %30 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %15
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %77

36:                                               ; preds = %15
  %37 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %38 = call i32 @MAIN_SECS(%struct.f2fs_sb_info* %37)
  %39 = call i32 @f2fs_bitmap_size(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @f2fs_kvmalloc(%struct.f2fs_sb_info* %40, i32 %41, i32 %42)
  %44 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %45 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %47 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %46, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %36
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %77

53:                                               ; preds = %36
  %54 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %55 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %54, i32 0, i32 5
  %56 = load i8*, i8** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @memset(i8* %56, i32 255, i32 %57)
  %59 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %60 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @memset(i8* %61, i32 255, i32 %62)
  %64 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %65 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %66 = call i32 @MAIN_BLKADDR(%struct.f2fs_sb_info* %65)
  %67 = call i32 @GET_SEGNO_FROM_SEG0(%struct.f2fs_sb_info* %64, i32 %66)
  %68 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %69 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %71 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %73 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.free_segmap_info*, %struct.free_segmap_info** %4, align 8
  %75 = getelementptr inbounds %struct.free_segmap_info, %struct.free_segmap_info* %74, i32 0, i32 0
  %76 = call i32 @spin_lock_init(i32* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %53, %50, %33, %12
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.free_segmap_info* @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bitmap_size(i32) #1

declare dso_local i32 @MAIN_SEGS(%struct.f2fs_sb_info*) #1

declare dso_local i8* @f2fs_kvmalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i32 @MAIN_SECS(%struct.f2fs_sb_info*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @GET_SEGNO_FROM_SEG0(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @MAIN_BLKADDR(%struct.f2fs_sb_info*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
