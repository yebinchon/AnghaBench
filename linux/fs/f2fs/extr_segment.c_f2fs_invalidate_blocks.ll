; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_invalidate_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_f2fs_invalidate_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { i32 }

@NULL_ADDR = common dso_local global i64 0, align 8
@NEW_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f2fs_invalidate_blocks(%struct.f2fs_sb_info* %0, i64 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sit_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @GET_SEGNO(%struct.f2fs_sb_info* %7, i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %11 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %10)
  store %struct.sit_info* %11, %struct.sit_info** %6, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @NULL_ADDR, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @f2fs_bug_on(%struct.f2fs_sb_info* %12, i32 %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @NEW_ADDR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %24 = call i32 @META_MAPPING(%struct.f2fs_sb_info* %23)
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @invalidate_mapping_pages(i32 %24, i64 %25, i64 %26)
  %28 = load %struct.sit_info*, %struct.sit_info** %6, align 8
  %29 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %28, i32 0, i32 0
  %30 = call i32 @down_write(i32* %29)
  %31 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @update_sit_entry(%struct.f2fs_sb_info* %31, i64 %32, i32 -1)
  %34 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @locate_dirty_segment(%struct.f2fs_sb_info* %34, i32 %35)
  %37 = load %struct.sit_info*, %struct.sit_info** %6, align 8
  %38 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %37, i32 0, i32 0
  %39 = call i32 @up_write(i32* %38)
  br label %40

40:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @GET_SEGNO(%struct.f2fs_sb_info*, i64) #1

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @f2fs_bug_on(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @invalidate_mapping_pages(i32, i64, i64) #1

declare dso_local i32 @META_MAPPING(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @update_sit_entry(%struct.f2fs_sb_info*, i64, i32) #1

declare dso_local i32 @locate_dirty_segment(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
