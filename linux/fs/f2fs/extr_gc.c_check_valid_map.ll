; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_check_valid_map.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_gc.c_check_valid_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { i32 }
%struct.seg_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, i32, i32)* @check_valid_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_valid_map(%struct.f2fs_sb_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sit_info*, align 8
  %8 = alloca %struct.seg_entry*, align 8
  %9 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %11 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %10)
  store %struct.sit_info* %11, %struct.sit_info** %7, align 8
  %12 = load %struct.sit_info*, %struct.sit_info** %7, align 8
  %13 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %12, i32 0, i32 0
  %14 = call i32 @down_read(i32* %13)
  %15 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info* %15, i32 %16)
  store %struct.seg_entry* %17, %struct.seg_entry** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.seg_entry*, %struct.seg_entry** %8, align 8
  %20 = getelementptr inbounds %struct.seg_entry, %struct.seg_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @f2fs_test_bit(i32 %18, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.sit_info*, %struct.sit_info** %7, align 8
  %24 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %23, i32 0, i32 0
  %25 = call i32 @up_read(i32* %24)
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.seg_entry* @get_seg_entry(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_test_bit(i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
