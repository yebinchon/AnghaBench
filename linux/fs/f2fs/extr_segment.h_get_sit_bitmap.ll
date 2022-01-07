; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_get_sit_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_segment.h_get_sit_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.sit_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i8*)* @get_sit_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sit_bitmap(%struct.f2fs_sb_info* %0, i8* %1) #0 {
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sit_info*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %7 = call %struct.sit_info* @SIT_I(%struct.f2fs_sb_info* %6)
  store %struct.sit_info* %7, %struct.sit_info** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %10 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.sit_info*, %struct.sit_info** %5, align 8
  %13 = getelementptr inbounds %struct.sit_info, %struct.sit_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(i8* %8, i32 %11, i32 %14)
  ret void
}

declare dso_local %struct.sit_info* @SIT_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
