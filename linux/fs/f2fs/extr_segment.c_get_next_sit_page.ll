; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_get_next_sit_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.c_get_next_sit_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.f2fs_sb_info*, i32)* @get_next_sit_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @get_next_sit_page(%struct.f2fs_sb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sit_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %10 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %9)
  store %struct.sit_info* %10, %struct.sit_info** %5, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @current_sit_addr(%struct.f2fs_sb_info* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @next_sit_addr(%struct.f2fs_sb_info* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info* %17, i32 %18)
  store %struct.page* %19, %struct.page** %6, align 8
  %20 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @seg_info_to_sit_page(%struct.f2fs_sb_info* %20, %struct.page* %21, i32 %22)
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = call i32 @set_page_dirty(%struct.page* %24)
  %26 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @set_to_next_sit(%struct.sit_info* %26, i32 %27)
  %29 = load %struct.page*, %struct.page** %6, align 8
  ret %struct.page* %29
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @current_sit_addr(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @next_sit_addr(%struct.f2fs_sb_info*, i32) #1

declare dso_local %struct.page* @f2fs_grab_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @seg_info_to_sit_page(%struct.f2fs_sb_info*, %struct.page*, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @set_to_next_sit(%struct.sit_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
