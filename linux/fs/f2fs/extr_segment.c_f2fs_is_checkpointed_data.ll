; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_is_checkpointed_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_is_checkpointed_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { i32 }
%struct.seg_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_is_checkpointed_data(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sit_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.seg_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %12 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %11)
  store %struct.sit_info* %12, %struct.sit_info** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__is_valid_data_blkaddr(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.sit_info*, %struct.sit_info** %6, align 8
  %19 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %18, i32 0, i32 0
  %20 = call i32 @down_read(i32* %19)
  %21 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %24, i32 %25)
  store %struct.seg_entry* %26, %struct.seg_entry** %9, align 8
  %27 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.seg_entry*, %struct.seg_entry** %9, align 8
  %32 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @f2fs_test_bit(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  store i32 1, i32* %10, align 4
  br label %37

37:                                               ; preds = %36, %17
  %38 = load %struct.sit_info*, %struct.sit_info** %6, align 8
  %39 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %38, i32 0, i32 0
  %40 = call i32 @up_read(i32* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %16
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @__is_valid_data_blkaddr(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @GET_SEGNO(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @GET_BLKOFF_FROM_SEG0(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @f2fs_test_bit(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
