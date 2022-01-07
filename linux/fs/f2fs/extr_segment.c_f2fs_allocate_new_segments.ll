; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_allocate_new_segments.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_allocate_new_segments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.curseg_info = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.f2fs_sb_info*, i32, i32)* }

@CURSEG_HOT_DATA = common dso_local global i32 0, align 4
@CURSEG_COLD_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_allocate_new_segments(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.curseg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %7 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @down_write(i32* %8)
  %10 = load i32, i32* @CURSEG_HOT_DATA, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %34, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @CURSEG_COLD_DATA, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %11
  %16 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info* %16, i32 %17)
  store %struct.curseg_info* %18, %struct.curseg_info** %3, align 8
  %19 = load %struct.curseg_info*, %struct.curseg_info** %3, align 8
  %20 = getelementptr inbounds %struct.curseg_info, %struct.curseg_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %23 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.f2fs_sb_info*, i32, i32)*, i32 (%struct.f2fs_sb_info*, i32, i32)** %26, align 8
  %28 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 %27(%struct.f2fs_sb_info* %28, i32 %29, i32 1)
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %31, i32 %32)
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %39 = call %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info* %38)
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @up_write(i32* %40)
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_4__* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.curseg_info* @CURSEG_I(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @locate_dirty_segment(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
