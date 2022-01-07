; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h___seg_info_to_raw_sit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h___seg_info_to_raw_sit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seg_entry = type { i16, i16, i32, i32 }
%struct.f2fs_sit_entry = type { i32, i32, i32 }

@SIT_VBLOCKS_SHIFT = common dso_local global i16 0, align 2
@SIT_VBLOCK_MAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seg_entry*, %struct.f2fs_sit_entry*)* @__seg_info_to_raw_sit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__seg_info_to_raw_sit(%struct.seg_entry* %0, %struct.f2fs_sit_entry* %1) #0 {
  %3 = alloca %struct.seg_entry*, align 8
  %4 = alloca %struct.f2fs_sit_entry*, align 8
  %5 = alloca i16, align 2
  store %struct.seg_entry* %0, %struct.seg_entry** %3, align 8
  store %struct.f2fs_sit_entry* %1, %struct.f2fs_sit_entry** %4, align 8
  %6 = load %struct.seg_entry*, %struct.seg_entry** %3, align 8
  %7 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %6, i32 0, i32 0
  %8 = load i16, i16* %7, align 4
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @SIT_VBLOCKS_SHIFT, align 2
  %11 = zext i16 %10 to i32
  %12 = shl i32 %9, %11
  %13 = load %struct.seg_entry*, %struct.seg_entry** %3, align 8
  %14 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = or i32 %12, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %5, align 2
  %19 = load i16, i16* %5, align 2
  %20 = call i32 @cpu_to_le16(i16 zeroext %19)
  %21 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %4, align 8
  %22 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %4, align 8
  %24 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.seg_entry*, %struct.seg_entry** %3, align 8
  %27 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SIT_VBLOCK_MAP_SIZE, align 4
  %30 = call i32 @memcpy(i32 %25, i32 %28, i32 %29)
  %31 = load %struct.seg_entry*, %struct.seg_entry** %3, align 8
  %32 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @cpu_to_le64(i32 %33)
  %35 = load %struct.f2fs_sit_entry*, %struct.f2fs_sit_entry** %4, align 8
  %36 = getelementptr inbounds %struct.f2fs_sit_entry, %struct.f2fs_sit_entry* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  ret void
}

declare dso_local i32 @cpu_to_le16(i16 zeroext) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
